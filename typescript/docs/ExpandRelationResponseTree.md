# ExpandRelationResponseTree

Userset tree node. Leaves carry subjects; union/intersection nodes carry children of the same shape.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** |  | [optional] [default to undefined]
**object** | **string** |  | [optional] [default to undefined]
**relation** | **string** |  | [optional] [default to undefined]
**children** | **Array&lt;object&gt;** | Nested nodes (same shape); empty for leaves. | [optional] [default to undefined]
**subjects** | **Array&lt;string&gt;** | Direct subjects; usersets are listed as-is. | [optional] [default to undefined]

## Example

```typescript
import { ExpandRelationResponseTree } from '@lumoauth/api-client';

const instance: ExpandRelationResponseTree = {
    type,
    object,
    relation,
    children,
    subjects,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
