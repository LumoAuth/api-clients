# AdminWebhooksDeliveryReplayResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_id** | **string** | Id of the new delivery | [optional] [default to undefined]
**replay_of** | **string** | Id of the delivery that was replayed | [optional] [default to undefined]
**webhook_id** | **number** |  | [optional] [default to undefined]
**event_name** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminWebhooksDeliveryReplayResponseData } from '@lumoauth/api-client';

const instance: AdminWebhooksDeliveryReplayResponseData = {
    delivery_id,
    replay_of,
    webhook_id,
    event_name,
    status,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
