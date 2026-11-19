# PutAdminSettingsEmailUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromEmail** | **string** | From address. It must be a sender that is verified at the mail provider. | [optional] [default to undefined]
**fromName** | **string** | From name: one line. null or an empty string clears it. | [optional] [default to undefined]
**replyToEmail** | **string** | Reply-To address. null or an empty string clears it. | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSettingsEmailUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminSettingsEmailUpdateRequest = {
    fromEmail,
    fromName,
    replyToEmail,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
