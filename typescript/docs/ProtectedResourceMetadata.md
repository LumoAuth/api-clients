# ProtectedResourceMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | The MCP server\&#39;s resource identifier. | [default to undefined]
**authorization_servers** | **Array&lt;string&gt;** | This organization\&#39;s authorization server metadata URL. | [default to undefined]
**bearer_methods_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**dpop_bound_access_tokens_required** | **boolean** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional] [default to undefined]
**dpop_signing_alg_values_supported** | **Array&lt;string&gt;** | Only with dpop_bound_access_tokens_required. | [optional] [default to undefined]

## Example

```typescript
import { ProtectedResourceMetadata } from '@lumoauth/api-client';

const instance: ProtectedResourceMetadata = {
    resource,
    authorization_servers,
    bearer_methods_supported,
    scopes_supported,
    dpop_bound_access_tokens_required,
    dpop_signing_alg_values_supported,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
