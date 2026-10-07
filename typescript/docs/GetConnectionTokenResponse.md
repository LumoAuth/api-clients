# GetConnectionTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **string** |  | [default to undefined]
**token_type** | **string** |  | [default to undefined]
**expires_at** | **string** | RFC 3339; null when the provider token does not expire. | [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [default to undefined]

## Example

```typescript
import { GetConnectionTokenResponse } from '@lumoauth/api-client';

const instance: GetConnectionTokenResponse = {
    access_token,
    token_type,
    expires_at,
    scopes,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
