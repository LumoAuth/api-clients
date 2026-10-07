# CheckAbacBulkResponseResultsItem

A check missing resourceType/action yields only index, allowed=false and error.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **number** |  | [optional] [default to undefined]
**resourceType** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**resourceId** | **string** |  | [optional] [default to undefined]
**allowed** | **boolean** |  | [optional] [default to undefined]
**reason** | **string** |  | [optional] [default to undefined]
**error** | **string** | Only present for invalid entries | [optional] [default to undefined]

## Example

```typescript
import { CheckAbacBulkResponseResultsItem } from '@lumoauth/api-client';

const instance: CheckAbacBulkResponseResultsItem = {
    index,
    resourceType,
    action,
    resourceId,
    allowed,
    reason,
    error,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
