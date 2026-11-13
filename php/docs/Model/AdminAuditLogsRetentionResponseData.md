# # AdminAuditLogsRetentionResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retentionDays** | **int** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional]
**autoDelete** | **bool** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional]
**planLimitDays** | **int** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional]
**effectiveRetentionDays** | **int** | How long entries are kept now; null when nothing is deleted | [optional]
**minRetentionDays** | **int** |  | [optional]
**maxRetentionDays** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
