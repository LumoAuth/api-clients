# GetProtectedResourceMetadataRoot200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** |  | [default to undefined]
**authorization_servers** | **Array&lt;string&gt;** |  | [default to undefined]
**bearer_methods_supported** | **Array&lt;string&gt;** |  | [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**dpop_bound_access_tokens_required** | **boolean** |  | [optional] [default to undefined]
**dpop_signing_alg_values_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**resources** | [**Array&lt;GetProtectedResourceMetadataRootResponse1ResourcesItem&gt;**](GetProtectedResourceMetadataRootResponse1ResourcesItem.md) |  | [default to undefined]

## Example

```typescript
import { GetProtectedResourceMetadataRoot200Response } from '@lumoauth/api-client';

const instance: GetProtectedResourceMetadataRoot200Response = {
    resource,
    authorization_servers,
    bearer_methods_supported,
    scopes_supported,
    dpop_bound_access_tokens_required,
    dpop_signing_alg_values_supported,
    resources,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
