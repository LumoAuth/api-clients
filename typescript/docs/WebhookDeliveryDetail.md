# WebhookDeliveryDetail


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payload** | **{ [key: string]: any; }** | Event payload as sent to the receiver | [optional] [default to undefined]
**attempts** | [**Array&lt;AdminWebhooksDeliveryShowResponseData1AttemptsItem&gt;**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] [default to undefined]

## Example

```typescript
import { WebhookDeliveryDetail } from '@lumoauth/api-client';

const instance: WebhookDeliveryDetail = {
    payload,
    attempts,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
