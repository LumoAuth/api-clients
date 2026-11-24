# PollAgentEnrollmentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **string** |  | [default to undefined]
**client_id** | **string** | The agent id, as the client_id of its token requests. | [default to undefined]
**issuer** | **string** | The value a client assertion\&#39;s aud must equal. | [default to undefined]
**token_endpoint** | **string** |  | [default to undefined]
**key_id** | **string** | kid of the registered key (the first one). | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** | The capabilities the person granted. | [default to undefined]
**can_act_on_behalf_of_users** | **boolean** |  | [default to undefined]
**owner_user_id** | **string** | The approving person, the agent\&#39;s owner. | [optional] [default to undefined]
**agent_url** | **string** | The agent\&#39;s page in the portal. | [default to undefined]

## Example

```typescript
import { PollAgentEnrollmentResponse } from '@lumoauth/api-client';

const instance: PollAgentEnrollmentResponse = {
    agent_id,
    client_id,
    issuer,
    token_endpoint,
    key_id,
    capabilities,
    can_act_on_behalf_of_users,
    owner_user_id,
    agent_url,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
