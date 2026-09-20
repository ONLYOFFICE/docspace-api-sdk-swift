# SmtpOperationStatusRequestsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completed** | **Bool** | Whether the job has finished. This is the field to poll; the first answer that reports it true also discards  the job, so read `error` out of that same answer rather than calling again. | [optional] 
**id** | **String** | The identifier of the queued job. A portal only ever has one test job at a time, so it names the run rather  than selecting among several. | [optional] 
**error** | **String** | Why the test failed. It stays empty while the job runs and also once the relay has accepted the message, so  an empty value on a finished job is what success looks like; an unreachable relay is reported here after a  30-second connection timeout rather than as a failed request. | [optional] 
**status** | **String** | The step the job has reached, in words - `Connect to host` or `Send test message`, for instance. It is meant  to be shown to a person and is not a fixed set of values to branch on. | [optional] 
**percents** | **Int** | How far the job has got, as a percentage climbing to 100. Reaching 100 says the job ran to the end, not that  the message was accepted - that is what an empty `error` says. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


