# AdminOrgRolesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** | Optional; derived from the name when left out. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**isDefault** | **boolean** | The role that new members get. | [optional] [default to false]

## Example

```typescript
import { AdminOrgRolesCreateRequest } from '@lumoauth/api-client';

const instance: AdminOrgRolesCreateRequest = {
    name,
    slug,
    description,
    isDefault,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
