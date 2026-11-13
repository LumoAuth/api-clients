# AdminWebhooksTestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **boolean** |  | [optional] [default to undefined]
**statusCode** | **number** | HTTP status returned by the receiver | [optional] [default to undefined]
**deliveryId** | **string** | Id of the delivery row (the &#x60;X-LumoAuth-Delivery&#x60; header of the request) | [optional] [default to undefined]
**message** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminWebhooksTestResponse } from '@lumoauth/api-client';

const instance: AdminWebhooksTestResponse = {
    success,
    statusCode,
    deliveryId,
    message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
