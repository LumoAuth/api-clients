# PollAgentEnrollmentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **String** |  | 
**client_id** | **String** | The agent id, as the client_id of its token requests. | 
**issuer** | **String** | The value a client assertion's aud must equal. | 
**token_endpoint** | **String** |  | 
**key_id** | Option<**String**> | kid of the registered key (the first one). | [optional]
**capabilities** | **Vec<String>** | The capabilities the person granted. | 
**can_act_on_behalf_of_users** | **bool** |  | 
**owner_user_id** | Option<**String**> | The approving person, the agent's owner. | [optional]
**agent_url** | **String** | The agent's page in the portal. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


