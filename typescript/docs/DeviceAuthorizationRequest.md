# DeviceAuthorizationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] [default to undefined]
**client_secret** | **string** | client_secret_post | [optional] [default to undefined]
**client_assertion_type** | **string** |  | [optional] [default to undefined]
**client_assertion** | **string** | private_key_jwt (RFC 7523) | [optional] [default to undefined]
**scope** | **string** | Space-separated scopes. | [optional] [default to undefined]
**resource** | **string** | RFC 8707 resource indicator. | [optional] [default to undefined]
**authorization_details** | **string** | RFC 9396, a JSON array as text. | [optional] [default to undefined]

## Example

```typescript
import { DeviceAuthorizationRequest } from '@lumoauth/api-client';

const instance: DeviceAuthorizationRequest = {
    client_id,
    client_secret,
    client_assertion_type,
    client_assertion,
    scope,
    resource,
    authorization_details,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
