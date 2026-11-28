# AdminRolesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \&quot;.\&quot; or \&quot;-\&quot;. Reserved slugs (admin, root, ...) are refused. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**permissions** | **Array&lt;string&gt;** | Optional permission slugs (needs roles.assign-permissions). | [optional] [default to undefined]

## Example

```typescript
import { AdminRolesCreateRequest } from '@lumoauth/api-client';

const instance: AdminRolesCreateRequest = {
    name,
    slug,
    description,
    permissions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
