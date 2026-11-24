# # PollAgentEnrollmentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agentId** | **string** |  |
**clientId** | **string** | The agent id, as the client_id of its token requests. |
**issuer** | **string** | The value a client assertion&#39;s aud must equal. |
**tokenEndpoint** | **string** |  |
**keyId** | **string** | kid of the registered key (the first one). | [optional]
**capabilities** | **string[]** | The capabilities the person granted. |
**canActOnBehalfOfUsers** | **bool** |  |
**ownerUserId** | **string** | The approving person, the agent&#39;s owner. | [optional]
**agentUrl** | **string** | The agent&#39;s page in the portal. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
