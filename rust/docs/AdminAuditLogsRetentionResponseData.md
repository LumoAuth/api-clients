# AdminAuditLogsRetentionResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retention_days** | Option<**i32**> | The organization's own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional]
**auto_delete** | Option<**bool**> | false switches the organization's own period off; the plan's period still applies | [optional]
**plan_limit_days** | Option<**i32**> | The plan's period: older entries are not returned and are deleted. null when the plan has no limit. | [optional]
**effective_retention_days** | Option<**i32**> | How long entries are kept now; null when nothing is deleted | [optional]
**min_retention_days** | Option<**i32**> |  | [optional]
**max_retention_days** | Option<**i32**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


