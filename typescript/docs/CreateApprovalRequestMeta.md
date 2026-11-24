# CreateApprovalRequestMeta

Optional structured details shown on the approval card. Only the keys below are kept (others are dropped); every string is cleaned and shortened.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **string** |  | [optional] [default to undefined]
**host** | **string** |  | [optional] [default to undefined]
**tool** | **string** |  | [optional] [default to undefined]
**server** | **string** |  | [optional] [default to undefined]
**capability** | **string** |  | [optional] [default to undefined]
**risk** | **string** |  | [optional] [default to undefined]
**why** | **string** |  | [optional] [default to undefined]
**title** | **string** |  | [optional] [default to undefined]
**args** | **Array&lt;string&gt;** | Argument lines; at most 5 are kept, each cut to 240 characters. | [optional] [default to undefined]
**arguments_sha256** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { CreateApprovalRequestMeta } from '@lumoauth/api-client';

const instance: CreateApprovalRequestMeta = {
    kind,
    host,
    tool,
    server,
    capability,
    risk,
    why,
    title,
    args,
    arguments_sha256,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
