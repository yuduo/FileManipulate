- (void)init
{
}
- (void)initWithSessionConfiguration
{
}
- (void)dealloc
{
}
- (void)taskDescriptionForSessionTasks
{
}
- (void)taskDidResume
{
}
- (void)taskDidSuspend
{
}
- (void)delegateForTask
{
}
- (void)setDelegate:(id)setdelegate forTask:(id)fortask 
{
}
- (void)addDelegateForDataTask:(id)adddelegatefordatatask completionHandler:(id)completionhandler 
{
}
- (void)addDelegateForUploadTask:(id)adddelegateforuploadtask progress:(id)progress completionHandler:(id)completionhandler 
{
}
- (void)addDelegateForDownloadTask:(id)adddelegatefordownloadtask progress:(id)progress destination:(id)destination completionHandler:(id)completionhandler 
{
}
- (void)removeDelegateForTask
{
}
- (void)removeAllDelegates
{
}
- (void)tasksForKeyPath
{
}
- (void)tasks
{
}
- (void)dataTasks
{
}
- (void)uploadTasks
{
}
- (void)downloadTasks
{
}
- (void)invalidateSessionCancelingTasks
{
}
- (void)setResponseSerializer
{
}
- (void)dataTaskWithRequest:(id)datataskwithrequest completionHandler:(id)completionhandler 
{
}
- (void)uploadTaskWithRequest:(id)uploadtaskwithrequest fromFile:(id)fromfile progress:(id)progress completionHandler:(id)completionhandler 
{
}
- (void)uploadTaskWithRequest:(id)uploadtaskwithrequest fromData:(id)fromdata progress:(id)progress completionHandler:(id)completionhandler 
{
}
- (void)uploadTaskWithStreamedRequest:(id)uploadtaskwithstreamedrequest progress:(id)progress completionHandler:(id)completionhandler 
{
}
- (void)downloadTaskWithRequest:(id)downloadtaskwithrequest progress:(id)progress destination:(id)destination completionHandler:(id)completionhandler 
{
}
- (void)downloadTaskWithResumeData:(id)downloadtaskwithresumedata progress:(id)progress destination:(id)destination completionHandler:(id)completionhandler 
{
}
- (void)uploadProgressForTask
{
}
- (void)downloadProgressForTask
{
}
- (void)setSessionDidBecomeInvalidBlock
{
}
- (void)setSessionDidReceiveAuthenticationChallengeBlock
{
}
- (void)setDidFinishEventsForBackgroundURLSessionBlock
{
}
- (void)setTaskNeedNewBodyStreamBlock
{
}
- (void)setTaskWillPerformHTTPRedirectionBlock
{
}
- (void)setTaskDidReceiveAuthenticationChallengeBlock
{
}
- (void)setTaskDidSendBodyDataBlock
{
}
- (void)setTaskDidCompleteBlock
{
}
- (void)setDataTaskDidReceiveResponseBlock
{
}
- (void)setDataTaskDidBecomeDownloadTaskBlock
{
}
- (void)setDataTaskDidReceiveDataBlock
{
}
- (void)setDataTaskWillCacheResponseBlock
{
}
- (void)setDownloadTaskDidFinishDownloadingBlock
{
}
- (void)setDownloadTaskDidWriteDataBlock
{
}
- (void)setDownloadTaskDidResumeBlock
{
}
- (void)description
{
}
- (void)respondsToSelector
{
}
- (void)URLSession:(id)urlsession didBecomeInvalidWithError:(id)didbecomeinvalidwitherror 
{
}
- (void)URLSession:(id)urlsession didReceiveChallenge:(id)didreceivechallenge completionHandler:(id)completionhandler 
{
}
- (void)URLSession:(id)urlsession task:(id)task willPerformHTTPRedirection:(id)willperformhttpredirection newRequest:(id)newrequest completionHandler:(id)completionhandler 
{
}
- (void)URLSession:(id)urlsession task:(id)task didReceiveChallenge:(id)didreceivechallenge completionHandler:(id)completionhandler 
{
}
- (void)URLSession:(id)urlsession task:(id)task needNewBodyStream:(id)neednewbodystream 
{
}
- (void)URLSession:(id)urlsession task:(id)task didSendBodyData:(id)didsendbodydata totalBytesSent:(id)totalbytessent totalBytesExpectedToSend:(id)totalbytesexpectedtosend 
{
}
- (void)URLSession:(id)urlsession task:(id)task didCompleteWithError:(id)didcompletewitherror 
{
}
- (void)URLSession:(id)urlsession dataTask:(id)datatask didReceiveResponse:(id)didreceiveresponse completionHandler:(id)completionhandler 
{
}
- (void)URLSession:(id)urlsession dataTask:(id)datatask didBecomeDownloadTask:(id)didbecomedownloadtask 
{
}
- (void)URLSession:(id)urlsession dataTask:(id)datatask didReceiveData:(id)didreceivedata 
{
}
- (void)URLSession:(id)urlsession dataTask:(id)datatask willCacheResponse:(id)willcacheresponse completionHandler:(id)completionhandler 
{
}
- (void)URLSessionDidFinishEventsForBackgroundURLSession
{
}
- (void)URLSession:(id)urlsession downloadTask:(id)downloadtask didFinishDownloadingToURL:(id)didfinishdownloadingtourl 
{
}
- (void)URLSession:(id)urlsession downloadTask:(id)downloadtask didWriteData:(id)didwritedata totalBytesWritten:(id)totalbyteswritten totalBytesExpectedToWrite:(id)totalbytesexpectedtowrite 
{
}
- (void)URLSession:(id)urlsession downloadTask:(id)downloadtask didResumeAtOffset:(id)didresumeatoffset expectedTotalBytes:(id)expectedtotalbytes 
{
}
- (void)initWithCoder
{
}
- (void)encodeWithCoder
{
}
- (void)copyWithZone
{
}
- (void)session
{
}
- (void)setSession
{
}
- (void)operationQueue
{
}
- (void)setOperationQueue
{
}
- (void)responseSerializer
{
}
- (void)securityPolicy
{
}
- (void)setSecurityPolicy
{
}
- (void)reachabilityManager
{
}
- (void)setReachabilityManager
{
}
- (void)completionQueue
{
}
- (void)setCompletionQueue
{
}
- (void)completionGroup
{
}
- (void)setCompletionGroup
{
}
- (void)attemptsToRecreateUploadTasksForBackgroundSessions
{
}
- (void)setAttemptsToRecreateUploadTasksForBackgroundSessions
{
}
- (void)sessionConfiguration
{
}
- (void)setSessionConfiguration
{
}
- (void)mutableTaskDelegatesKeyedByTaskIdentifier
{
}
- (void)setMutableTaskDelegatesKeyedByTaskIdentifier
{
}
- (void)lock
{
}
- (void)setLock
{
}
- (void)sessionDidBecomeInvalid
{
}
- (void)setSessionDidBecomeInvalid
{
}
- (void)sessionDidReceiveAuthenticationChallenge
{
}
- (void)setSessionDidReceiveAuthenticationChallenge
{
}
- (void)didFinishEventsForBackgroundURLSession
{
}
- (void)setDidFinishEventsForBackgroundURLSession
{
}
- (void)taskWillPerformHTTPRedirection
{
}
- (void)setTaskWillPerformHTTPRedirection
{
}
- (void)taskDidReceiveAuthenticationChallenge
{
}
- (void)setTaskDidReceiveAuthenticationChallenge
{
}
- (void)taskNeedNewBodyStream
{
}
- (void)setTaskNeedNewBodyStream
{
}
- (void)taskDidSendBodyData
{
}
- (void)setTaskDidSendBodyData
{
}
- (void)taskDidComplete
{
}
- (void)setTaskDidComplete
{
}
- (void)dataTaskDidReceiveResponse
{
}
- (void)setDataTaskDidReceiveResponse
{
}
- (void)dataTaskDidBecomeDownloadTask
{
}
- (void)setDataTaskDidBecomeDownloadTask
{
}
- (void)dataTaskDidReceiveData
{
}
- (void)setDataTaskDidReceiveData
{
}
- (void)dataTaskWillCacheResponse
{
}
- (void)setDataTaskWillCacheResponse
{
}
- (void)downloadTaskDidFinishDownloading
{
}
- (void)setDownloadTaskDidFinishDownloading
{
}
- (void)downloadTaskDidWriteData
{
}
- (void)setDownloadTaskDidWriteData
{
}
- (void)downloadTaskDidResume
{
}
- (void)setDownloadTaskDidResume
{
}
- (void)cxx_destruct
{
}
+ (void)supportsSecureCoding
{
}
