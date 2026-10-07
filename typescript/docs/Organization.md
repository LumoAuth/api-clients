# Organization


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**slug** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**logoUrl** | **string** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [default to undefined]
**memberCount** | **number** |  | [default to undefined]
**metadata** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**updatedAt** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { Organization } from '@lumoauth/api-client';

const instance: Organization = {
    id,
    slug,
    name,
    displayName,
    description,
    logoUrl,
    isActive,
    memberCount,
    metadata,
    createdAt,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
