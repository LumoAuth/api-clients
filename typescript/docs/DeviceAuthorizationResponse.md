# DeviceAuthorizationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_code** | **string** | High-entropy code the device presents at the token endpoint. | [default to undefined]
**user_code** | **string** | Short code the end user enters at verification_uri. | [default to undefined]
**verification_uri** | **string** | Absolute URL of the user verification page (GET …/oauth/device). | [default to undefined]
**verification_uri_complete** | **string** | verification_uri with the user_code pre-filled. | [default to undefined]
**expires_in** | **number** | Lifetime of device_code and user_code in seconds. | [default to undefined]
**interval** | **number** | Minimum polling interval in seconds. | [default to undefined]

## Example

```typescript
import { DeviceAuthorizationResponse } from '@lumoauth/api-client';

const instance: DeviceAuthorizationResponse = {
    device_code,
    user_code,
    verification_uri,
    verification_uri_complete,
    expires_in,
    interval,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
