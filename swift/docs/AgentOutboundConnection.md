# AgentOutboundConnection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connectionId** | **String** |  | 
**name** | **String** |  | 
**provider** | **String** |  | 
**providerLabel** | **String** | Human-readable provider name. | 
**grantMode** | **String** |  | 
**scopes** | **[String]** |  | 
**userDelegated** | **Bool** |  | 
**machineGrantStatus** | **String** | Status of the machine grant (not_established when none exists); null for user-delegated connections. | 
**linkedUsers** | **Int** | Number of users with an active grant; null for machine connections. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


