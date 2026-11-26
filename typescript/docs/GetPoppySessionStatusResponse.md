# GetPoppySessionStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** | unknown: no Session with this sid (never started, or forgotten after the idle period). | [default to undefined]
**user_id** | **string** |  | [optional] [default to undefined]
**agent_id** | **string** |  | [optional] [default to undefined]
**account** | **string** | The id of the account that the Session used, if any. | [optional] [default to undefined]
**signed_in** | **boolean** | true while the Session is active, it used an account, and the personal agent still holds a valid refresh token for that account. | [default to undefined]
**last_seen_at** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { GetPoppySessionStatusResponse } from '@lumoauth/api-client';

const instance: GetPoppySessionStatusResponse = {
    status,
    user_id,
    agent_id,
    account,
    signed_in,
    last_seen_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
