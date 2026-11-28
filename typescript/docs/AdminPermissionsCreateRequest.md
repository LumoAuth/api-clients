# AdminPermissionsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** | Lowercase letters, digits, dots, hyphens and underscores (for example invoices.approve). Built-in and reserved slugs are refused. | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**resource** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminPermissionsCreateRequest } from '@lumoauth/api-client';

const instance: AdminPermissionsCreateRequest = {
    name,
    slug,
    description,
    resource,
    action,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
