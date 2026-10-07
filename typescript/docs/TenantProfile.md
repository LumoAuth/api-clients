# TenantProfile

The organization (tenant) record as returned by the settings endpoints.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**slug** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**settings** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**createdAt** | **string** |  | [optional] [default to undefined]
**updatedAt** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { TenantProfile } from '@lumoauth/api-client';

const instance: TenantProfile = {
    id,
    slug,
    name,
    status,
    settings,
    createdAt,
    updatedAt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
