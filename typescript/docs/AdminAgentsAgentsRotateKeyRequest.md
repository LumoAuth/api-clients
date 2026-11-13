# AdminAgentsAgentsRotateKeyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiKeyExpiresInDays** | **number** | Days until the new key expires; null for a key that never expires. | [optional] [default to undefined]
**apiKeyExpiresAt** | **string** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsAgentsRotateKeyRequest } from '@lumoauth/api-client';

const instance: AdminAgentsAgentsRotateKeyRequest = {
    apiKeyExpiresInDays,
    apiKeyExpiresAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
