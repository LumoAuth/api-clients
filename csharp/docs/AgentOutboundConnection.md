# LumoAuth.ApiClient.Model.AgentOutboundConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **string** |  | 
**Name** | **string** |  | 
**Provider** | **string** |  | 
**ProviderLabel** | **string** | Human-readable provider name. | 
**GrantMode** | **string** |  | 
**Scopes** | **List&lt;string&gt;** |  | 
**UserDelegated** | **bool** |  | 
**MachineGrantStatus** | **string** | Status of the machine grant (not_established when none exists); null for user-delegated connections. | 
**LinkedUsers** | **int?** | Number of users with an active grant; null for machine connections. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

