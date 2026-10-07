# WebhookDelivery


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**webhook_id** | **number** |  | [optional] [default to undefined]
**delivery_id** | **string** |  | [optional] [default to undefined]
**event_name** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**attempt_count** | **number** |  | [optional] [default to undefined]
**last_status_code** | **number** |  | [optional] [default to undefined]
**last_response_body** | **string** |  | [optional] [default to undefined]
**last_error** | **string** |  | [optional] [default to undefined]
**next_attempt_at** | **string** |  | [optional] [default to undefined]
**succeeded_at** | **string** |  | [optional] [default to undefined]
**dead_lettered_at** | **string** |  | [optional] [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]
**updated_at** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { WebhookDelivery } from '@lumoauth/api-client';

const instance: WebhookDelivery = {
    id,
    webhook_id,
    delivery_id,
    event_name,
    status,
    attempt_count,
    last_status_code,
    last_response_body,
    last_error,
    next_attempt_at,
    succeeded_at,
    dead_lettered_at,
    created_at,
    updated_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
