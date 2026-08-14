# GetIssuerMetadataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aauth_version** | **string** |  | [optional] [default to undefined]
**issuer** | **string** |  | [optional] [default to undefined]
**jwks_uri** | **string** |  | [optional] [default to undefined]
**agent_token_endpoint** | **string** |  | [optional] [default to undefined]
**agent_auth_endpoint** | **string** |  | [optional] [default to undefined]
**agent_signing_algs_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**token_signing_algs_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**request_types_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { GetIssuerMetadataResponse } from '@lumoauth/api-client';

const instance: GetIssuerMetadataResponse = {
    aauth_version,
    issuer,
    jwks_uri,
    agent_token_endpoint,
    agent_auth_endpoint,
    agent_signing_algs_supported,
    token_signing_algs_supported,
    request_types_supported,
    scopes_supported,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
