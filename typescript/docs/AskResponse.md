# AskResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **boolean** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**context** | **object** |  | [optional] [default to undefined]
**reason** | **string** |  | [optional] [default to undefined]
**decided_by** | **string** | Which check produced the answer. Always pdp for a user caller. | [optional] [default to undefined]
**audit_id** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AskResponse } from '@lumoauth/api-client';

const instance: AskResponse = {
    allowed,
    action,
    context,
    reason,
    decided_by,
    audit_id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
