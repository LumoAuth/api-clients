# AuditLogEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**created_at** | **String** |  | 
**event_type** | Option<**String**> |  | [optional]
**action** | Option<**String**> |  | [optional]
**severity** | Option<**String**> |  | [optional]
**message** | Option<**String**> |  | [optional]
**actor_id** | Option<**String**> |  | [optional]
**actor_name** | Option<**String**> |  | [optional]
**actor_type** | Option<**String**> |  | [optional]
**auth_method** | Option<**String**> |  | [optional]
**target_type** | Option<**String**> |  | [optional]
**target_id** | Option<**String**> |  | [optional]
**target_name** | Option<**String**> |  | [optional]
**ip_address** | Option<**String**> |  | [optional]
**event_time** | Option<**String**> | Detailed responses only | [optional]
**duration_ms** | Option<**i32**> | Detailed responses only | [optional]
**initiated_by** | Option<**String**> | Detailed responses only | [optional]
**client_id** | Option<**String**> | Detailed responses only | [optional]
**user_agent** | Option<**String**> | Detailed responses only | [optional]
**geo_location** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**session_id** | Option<**String**> | Detailed responses only | [optional]
**request_id** | Option<**String**> | Detailed responses only | [optional]
**status** | Option<**String**> | Detailed responses only | [optional]
**status_reason** | Option<**String**> | Detailed responses only | [optional]
**old_value** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**new_value** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**changes** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]
**context** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Detailed responses only | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


