# AgentOutboundConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_id** | **String** |  | 
**name** | **String** |  | 
**provider** | **String** |  | 
**provider_label** | **String** | Human-readable provider name. | 
**grant_mode** | **String** |  | 
**scopes** | **Vec<String>** |  | 
**user_delegated** | **bool** |  | 
**machine_grant_status** | Option<**String**> | Status of the machine grant (not_established when none exists); null for user-delegated connections. | 
**linked_users** | Option<**i32**> | Number of users with an active grant; null for machine connections. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


