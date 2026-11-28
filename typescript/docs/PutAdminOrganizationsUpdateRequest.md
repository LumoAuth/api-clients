# PutAdminOrganizationsUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**slug** | **string** | Leave it out to keep the slug; an empty slug is refused. | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**logoUrl** | **string** |  | [optional] [default to undefined]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAdminOrganizationsUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminOrganizationsUpdateRequest = {
    name,
    slug,
    displayName,
    description,
    logoUrl,
    metadata,
    isActive,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
