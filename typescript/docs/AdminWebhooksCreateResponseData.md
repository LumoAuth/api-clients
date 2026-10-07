# AdminWebhooksCreateResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [default to undefined]
**url** | **string** |  | [default to undefined]
**events** | **Array&lt;string&gt;** |  | [default to undefined]
**type** | **string** |  | [default to undefined]
**isActive** | **boolean** |  | [default to undefined]
**failureCount** | **number** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**lastTriggeredAt** | **string** |  | [optional] [default to undefined]
**configuration** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**secret** | **string** | HMAC signing secret, returned only at creation | [optional] [default to undefined]
**_note** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminWebhooksCreateResponseData } from '@lumoauth/api-client';

const instance: AdminWebhooksCreateResponseData = {
    id,
    url,
    events,
    type,
    isActive,
    failureCount,
    createdAt,
    lastTriggeredAt,
    configuration,
    secret,
    _note,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
