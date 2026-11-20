# PollAgentEnrollmentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentId** | **String** |  | 
**clientId** | **String** | The agent id, as the client_id of its token requests. | 
**issuer** | **String** | The value a client assertion&#39;s aud must equal. | 
**tokenEndpoint** | **String** |  | 
**keyId** | **String** | kid of the registered key (the first one). | [optional] 
**capabilities** | **[String]** | The capabilities the person granted. | 
**canActOnBehalfOfUsers** | **Bool** |  | 
**ownerUserId** | **String** | The approving person, the agent&#39;s owner. | [optional] 
**agentUrl** | **String** | The agent&#39;s page in the portal. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


