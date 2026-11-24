# StartAgentEnrollmentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enrollment_code** | **string** | 43 characters, secret: only the poll needs it. | [default to undefined]
**user_code** | **string** |  | [default to undefined]
**verification_uri** | **string** |  | [default to undefined]
**verification_uri_complete** | **string** |  | [default to undefined]
**key_fingerprint** | **string** | First 16 characters of the RFC 7638 thumbprint of the key, in groups of four. | [default to undefined]
**expires_in** | **number** |  | [default to undefined]
**interval** | **number** |  | [default to undefined]

## Example

```typescript
import { StartAgentEnrollmentResponse } from '@lumoauth/api-client';

const instance: StartAgentEnrollmentResponse = {
    enrollment_code,
    user_code,
    verification_uri,
    verification_uri_complete,
    key_fingerprint,
    expires_in,
    interval,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
