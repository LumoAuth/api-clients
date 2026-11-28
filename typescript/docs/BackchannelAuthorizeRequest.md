# BackchannelAuthorizeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **string** |  | [default to undefined]
**login_hint** | **string** |  | [optional] [default to undefined]
**login_hint_token** | **string** |  | [optional] [default to undefined]
**id_token_hint** | **string** |  | [optional] [default to undefined]
**binding_message** | **string** |  | [optional] [default to undefined]
**acr_values** | **string** |  | [optional] [default to undefined]
**requested_expiry** | **number** | Seconds. An application\&#39;s request: only shortens the lifetime, which is 120 s; at least 30. An agent-initiated request: 30 to 600, default 300. A value outside the range is moved into it, not refused. | [optional] [default to undefined]
**client_notification_token** | **string** |  | [optional] [default to undefined]
**authorization_details** | **string** |  | [optional] [default to undefined]
**client_id** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] [default to undefined]
**client_secret** | **string** | client_secret_post | [optional] [default to undefined]
**client_assertion_type** | **string** |  | [optional] [default to undefined]
**client_assertion** | **string** | private_key_jwt (RFC 7523) | [optional] [default to undefined]

## Example

```typescript
import { BackchannelAuthorizeRequest } from '@lumoauth/api-client';

const instance: BackchannelAuthorizeRequest = {
    scope,
    login_hint,
    login_hint_token,
    id_token_hint,
    binding_message,
    acr_values,
    requested_expiry,
    client_notification_token,
    authorization_details,
    client_id,
    client_secret,
    client_assertion_type,
    client_assertion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
