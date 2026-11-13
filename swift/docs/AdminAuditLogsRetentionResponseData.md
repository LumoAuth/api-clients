# AdminAuditLogsRetentionResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retentionDays** | **Int** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] 
**autoDelete** | **Bool** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional] 
**planLimitDays** | **Int** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] 
**effectiveRetentionDays** | **Int** | How long entries are kept now; null when nothing is deleted | [optional] 
**minRetentionDays** | **Int** |  | [optional] 
**maxRetentionDays** | **Int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


