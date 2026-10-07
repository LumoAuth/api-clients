# AdminAuditLogsStatsResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | Option<**i32**> |  | [optional]
**period** | Option<[**models::AdminAuditLogsStatsResponseDataPeriod**](AdminAuditLogsStatsResponseDataPeriod.md)> |  | [optional]
**by_event_type** | Option<**std::collections::HashMap<String, i32>**> | Top 10 event types by count | [optional]
**by_action** | Option<**std::collections::HashMap<String, i32>**> |  | [optional]
**by_severity** | Option<**std::collections::HashMap<String, i32>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


