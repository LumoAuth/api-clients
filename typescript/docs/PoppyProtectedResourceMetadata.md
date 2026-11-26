# PoppyProtectedResourceMetadata

RFC 9728 protected resource metadata of one Company domain (Personal Agent Protocol 3.2).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** |  | [default to undefined]
**authorization_servers** | **Array&lt;string&gt;** |  | [default to undefined]
**bearer_methods_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**scopes_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyProtectedResourceMetadata } from '@lumoauth/api-client';

const instance: PoppyProtectedResourceMetadata = {
    resource,
    authorization_servers,
    bearer_methods_supported,
    scopes_supported,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
