# IssueTemporaryAccessCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **string** |  | [default to undefined]
**ttl_minutes** | **number** |  | [optional] [default to 60]
**single_use** | **boolean** |  | [optional] [default to true]

## Example

```typescript
import { IssueTemporaryAccessCodeRequest } from '@lumoauth/api-client';

const instance: IssueTemporaryAccessCodeRequest = {
    reason,
    ttl_minutes,
    single_use,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
