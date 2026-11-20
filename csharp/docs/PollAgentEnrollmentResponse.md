# LumoAuth.ApiClient.Model.PollAgentEnrollmentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentId** | **string** |  | 
**ClientId** | **string** | The agent id, as the client_id of its token requests. | 
**Issuer** | **string** | The value a client assertion&#39;s aud must equal. | 
**TokenEndpoint** | **string** |  | 
**KeyId** | **string** | kid of the registered key (the first one). | [optional] 
**Capabilities** | **List&lt;string&gt;** | The capabilities the person granted. | 
**CanActOnBehalfOfUsers** | **bool** |  | 
**OwnerUserId** | **string** | The approving person, the agent&#39;s owner. | [optional] 
**AgentUrl** | **string** | The agent&#39;s page in the portal. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

