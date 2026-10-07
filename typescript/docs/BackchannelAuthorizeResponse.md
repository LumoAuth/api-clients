# BackchannelAuthorizeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_req_id** | **string** |  | [default to undefined]
**expires_in** | **number** | Lifetime of the auth_req_id in seconds. | [default to undefined]
**interval** | **number** | Minimum polling interval in seconds (poll / ping modes). | [optional] [default to undefined]

## Example

```typescript
import { BackchannelAuthorizeResponse } from '@lumoauth/api-client';

const instance: BackchannelAuthorizeResponse = {
    auth_req_id,
    expires_in,
    interval,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
