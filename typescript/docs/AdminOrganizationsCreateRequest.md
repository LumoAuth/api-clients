# AdminOrganizationsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | At most 100 characters. | [default to undefined]
**slug** | **string** | Optional; derived from the name when left out. Lowercase letters, digits and hyphens. | [optional] [default to undefined]
**displayName** | **string** | At most 255 characters. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**logoUrl** | **string** | Absolute https URL. | [optional] [default to undefined]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [optional] [default to true]

## Example

```typescript
import { AdminOrganizationsCreateRequest } from '@lumoauth/api-client';

const instance: AdminOrganizationsCreateRequest = {
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
