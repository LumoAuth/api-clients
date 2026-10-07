# GetStreamConfig200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stream_id** | **string** |  | [optional] [default to undefined]
**iss** | **string** |  | [optional] [default to undefined]
**aud** | **string** |  | [optional] [default to undefined]
**delivery** | [**SsfStreamDelivery**](SsfStreamDelivery.md) |  | [optional] [default to undefined]
**events_supported** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**events_requested** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**events_delivered** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**created_at** | **string** |  | [optional] [default to undefined]
**streams** | [**Array&lt;SsfStream&gt;**](SsfStream.md) |  | [optional] [default to undefined]

## Example

```typescript
import { GetStreamConfig200Response } from '@lumoauth/api-client';

const instance: GetStreamConfig200Response = {
    stream_id,
    iss,
    aud,
    delivery,
    events_supported,
    events_requested,
    events_delivered,
    status,
    created_at,
    streams,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
