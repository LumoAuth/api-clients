# PaginationMeta

Pagination block of list responses (`meta` and `pagination` are identical).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **number** |  | [default to undefined]
**page** | **number** |  | [default to undefined]
**limit** | **number** |  | [default to undefined]
**totalPages** | **number** |  | [default to undefined]
**hasNextPage** | **boolean** |  | [default to undefined]
**hasPreviousPage** | **boolean** |  | [default to undefined]

## Example

```typescript
import { PaginationMeta } from '@lumoauth/api-client';

const instance: PaginationMeta = {
    total,
    page,
    limit,
    totalPages,
    hasNextPage,
    hasPreviousPage,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
