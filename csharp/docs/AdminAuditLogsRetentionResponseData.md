# LumoAuth.ApiClient.Model.AdminAuditLogsRetentionResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetentionDays** | **int** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] 
**AutoDelete** | **bool** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional] 
**PlanLimitDays** | **int?** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] 
**EffectiveRetentionDays** | **int?** | How long entries are kept now; null when nothing is deleted | [optional] 
**MinRetentionDays** | **int** |  | [optional] 
**MaxRetentionDays** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

