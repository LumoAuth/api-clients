# PushEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**qr_data_uri** | **string** |  | [optional] [default to undefined]
**deep_link** | **string** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] [default to undefined]
**deep_link_android** | **string** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] [default to undefined]
**activation_code** | **string** |  | [optional] [default to undefined]
**expires_at** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PushEnrollmentStarted } from '@lumoauth/api-client';

const instance: PushEnrollmentStarted = {
    id,
    state,
    qr_data_uri,
    deep_link,
    deep_link_android,
    activation_code,
    expires_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
