# PutAdminWebhooksUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] [default to undefined]
**events** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**isActive** | **boolean** | Also accepted as active or enabled. | [optional] [default to undefined]
**type** | **string** |  | [optional] [default to undefined]
**configuration** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**rotateSecret** | **boolean** | Issue a new signing secret (returned once). | [optional] [default to undefined]

## Example

```typescript
import { PutAdminWebhooksUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminWebhooksUpdateRequest = {
    url,
    events,
    isActive,
    type,
    configuration,
    rotateSecret,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
