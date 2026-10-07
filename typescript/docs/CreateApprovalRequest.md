# CreateApprovalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] [default to undefined]
**reason** | **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] [default to undefined]
**impact** | **string** | One of low, medium, high, critical. | [optional] [default to undefined]
**on_behalf_of** | **string** | User id or email the agent acts for (delegation required). | [optional] [default to undefined]
**meta** | **object** | Optional action metadata. | [optional] [default to undefined]

## Example

```typescript
import { CreateApprovalRequest } from '@lumoauth/api-client';

const instance: CreateApprovalRequest = {
    task_id,
    reason,
    impact,
    on_behalf_of,
    meta,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
