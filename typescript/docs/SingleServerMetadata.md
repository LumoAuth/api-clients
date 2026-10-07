# SingleServerMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** |  | [default to undefined]
**authorization_servers** | **Array&lt;string&gt;** |  | [default to undefined]
**bearer_methods_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**dpop_bound_access_tokens_required** | **boolean** |  | [optional] [default to undefined]
**dpop_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { SingleServerMetadata } from '@lumoauth/api-client';

const instance: SingleServerMetadata = {
    resource,
    authorization_servers,
    bearer_methods_supported,
    scopes_supported,
    dpop_bound_access_tokens_required,
    dpop_signing_alg_values_supported,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
