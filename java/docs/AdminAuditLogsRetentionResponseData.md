

# AdminAuditLogsRetentionResponseData


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**retentionDays** | **Integer** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. |  [optional] |
|**autoDelete** | **Boolean** | false switches the organization&#39;s own period off; the plan&#39;s period still applies |  [optional] |
|**planLimitDays** | **Integer** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. |  [optional] |
|**effectiveRetentionDays** | **Integer** | How long entries are kept now; null when nothing is deleted |  [optional] |
|**minRetentionDays** | **Integer** |  |  [optional] |
|**maxRetentionDays** | **Integer** |  |  [optional] |



