//
//  ViewController.m
//  FileManipulate
//
//  Created by Antonio081014 on 6/25/13.
//  Copyright (c) 2013 Antonio081014.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *tmp;
    NSString *fileName = @"new 2.txt";
    NSArray *lines; /*将文件转化为一行一行的*/
    // Fetch directory path of document for local application.
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    // Have the absolute path of file named fileName by joining the document path with fileName, separated by path separator.
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    // NSFileManager is the manager organize all the files on device.
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePath]) {
        // Start to Read.
        NSError *error = nil;
        NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSStringEncodingConversionAllowLossy error:&error];
        
//        NSLog(@"File Content: %@", content);
        lines = [content
                 componentsSeparatedByString:@"\n"];
        
        NSEnumerator *nse = [lines objectEnumerator];
        
        // 读取<>里的内容
        while(tmp = [nse nextObject]) {
            NSString *stringBetweenBrackets = nil;
            NSString *new_filename = nil;
            NSString *new_classname = nil;
            NSScanner *scanner = [NSScanner scannerWithString:tmp];
            [scanner scanUpToString:@" " intoString:&new_filename];
            if(new_filename != nil){
                
                new_filename = [new_filename substringFromIndex:2];
                new_filename = [new_filename stringByAppendingString:@".m"];
                [self createFileWithName:new_filename];
            }else
            {
                continue;
            }
            NSRange rage = [tmp rangeOfString:@" "];
            if (rage.length) {
                new_classname = [tmp substringFromIndex:rage.location+1];
                new_classname = [new_classname stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
                new_classname = [new_classname stringByTrimmingCharactersInSet:[NSCharacterSet punctuationCharacterSet]];
                
                [self saveClassToFIle:new_classname filename :new_filename];
                
            }
        }
        
        
        NSLog(@"finished------------");
    } else {
        NSLog(@"File %@ doesn't exists", fileName);
    }
    
    
}
- (void)saveClassToFIle:(NSString*)className filename:(NSString*)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    // Have the absolute path of file named fileName by joining the document path with fileName, separated by path separator.
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    // NSFileManager is the manager organize all the files on device.
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePath]) {
        // Start to Read.
        NSError *error = nil;
        NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSStringEncodingConversionAllowLossy error:&error];
//        NSLog(@"File Content: %@", content);
        NSString *append=@"";
        if ([className containsString:@":"]) {
            NSString *newstr=@"";
            NSArray *array = [className componentsSeparatedByString:@":"];
            for (NSString *str in array) {
                //
                newstr = [newstr stringByAppendingString:[NSString stringWithFormat:@"%@:(id)%@ ",str,[str lowercaseString]]];
            }
            append = [NSString stringWithFormat: @"+ (void)%@\n\r{\n\r}\n\r",newstr];
        }else
        append = [NSString stringWithFormat: @"+ (void)%@\n\r{\n\r}\n\r",className];
        
        content = [content stringByAppendingString:append];
        [content writeToFile:filePath atomically:YES encoding:NSStringEncodingConversionAllowLossy error:&error];
        if (error) {
            NSLog(@"There is an Error: %@", error);
        }
    } else {
        NSLog(@"File %@ doesn't exists", fileName);
    }
}
- (void)createFileWithName:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];

    NSFileManager *manager = [NSFileManager defaultManager];
    // 1st, This funcion could allow you to create a file with initial contents.
    // 2nd, You could specify the attributes of values for the owner, group, and permissions.
    // Here we use nil, which means we use default values for these attibutes.
    // 3rd, it will return YES if NSFileManager create it successfully or it exists already.
    if ([manager fileExistsAtPath:filePath])
    {
        return;
    }
    if ([manager createFileAtPath:filePath contents:nil attributes:nil]) {
//        NSLog(@"Created the File Successfully.");
    } else {
        NSLog(@"Failed to Create the File");
    }
}

- (void)deleteFileWithName:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    // Have the absolute path of file named fileName by joining the document path with fileName, separated by path separator.
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];

    NSFileManager *manager = [NSFileManager defaultManager];
    // Need to check if the to be deleted file exists.
    if ([manager fileExistsAtPath:filePath]) {
        NSError *error = nil;
        // This function also returnsYES if the item was removed successfully or if path was nil.
        // Returns NO if an error occurred.
        [manager removeItemAtPath:filePath error:&error];
        if (error) {
            NSLog(@"There is an Error: %@", error);
        }
    } else {
        NSLog(@"File %@ doesn't exists", fileName);
    }
}

- (void)renameFileWithName:(NSString *)srcName toName:(NSString *)dstName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePathSrc = [documentsDirectory stringByAppendingPathComponent:srcName];
    NSString *filePathDst = [documentsDirectory stringByAppendingPathComponent:dstName];
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePathSrc]) {
        NSError *error = nil;
        [manager moveItemAtPath:filePathSrc toPath:filePathDst error:&error];
        if (error) {
            NSLog(@"There is an Error: %@", error);
        }
    } else {
        NSLog(@"File %@ doesn't exists", srcName);
    }
}

/* This function read content from the file named fileName.
 */
- (void)readFileWithName:(NSString *)fileName
{
    // Fetch directory path of document for local application.
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    // Have the absolute path of file named fileName by joining the document path with fileName, separated by path separator.
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];

    // NSFileManager is the manager organize all the files on device.
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:filePath]) {
        // Start to Read.
        NSError *error = nil;
        NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSStringEncodingConversionAllowLossy error:&error];
        NSLog(@"File Content: %@", content);
        
        if (error) {
            NSLog(@"There is an Error: %@", error);
        }
    } else {
        NSLog(@"File %@ doesn't exists", fileName);
    }
}

/* This function Write "content" to the file named fileName.
 */
- (void)writeString:(NSString *)content toFile:(NSString *)fileName
{
    // Fetch directory path of document for local application.
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    // Have the absolute path of file named fileName by joining the document path with fileName, separated by path separator.
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    // NSFileManager is the manager organize all the files on device.
    NSFileManager *manager = [NSFileManager defaultManager];
    // Check if the file named fileName exists.
    if ([manager fileExistsAtPath:filePath]) {
        NSError *error = nil;
        // Since [writeToFile: atomically: encoding: error:] will overwrite all the existing contents in the file, you could keep the content temperatorily, then append content to it, and assign it back to content.
        // To use it, simply uncomment it.
//        NSString *tmp = [[NSString alloc] initWithContentsOfFile:fileName usedEncoding:NSStringEncodingConversionAllowLossy error:nil];
//        if (tmp) {
//            content = [tmp stringByAppendingString:content];
//        }
        // Write NSString content to the file.
        [content writeToFile:filePath atomically:YES encoding:NSStringEncodingConversionAllowLossy error:&error];
        // If error happens, log it.
        if (error) {
            NSLog(@"There is an Error: %@", error);
        }
    } else {
        // If the file doesn't exists, log it.
        NSLog(@"File %@ doesn't exists", fileName);
    }
    
    // This function could also be written without NSFileManager checking on the existence of file,
    // since the system will atomatically create it for you if it doesn't exist.
}

- (void)listAllLocalFiles
{
    // Fetch directory path of document for local application.
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    // NSFileManager is the manager organize all the files on device.
    NSFileManager *manager = [NSFileManager defaultManager];
    // This function will return all of the files' Name as an array of NSString.
    NSArray *files = [manager contentsOfDirectoryAtPath:documentsDirectory error:nil];
    // Log the Path of document directory.
    NSLog(@"Directory: %@", documentsDirectory);
    // For each file, log the name of it.
    for (NSString *file in files) {
        NSLog(@"File at: %@", file);
    }
}
@end
