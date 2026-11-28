# AdminWebhooksCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | Public https URL. | [default to undefined]
**events** | **Array&lt;string&gt;** | Event names from the catalogue. | [default to undefined]
**isActive** | **boolean** | Also accepted as active or enabled. | [optional] [default to true]
**type** | **string** | custom (default), slack, discord or teams. | [optional] [default to undefined]
**configuration** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminWebhooksCreateRequest } from '@lumoauth/api-client';

const instance: AdminWebhooksCreateRequest = {
    url,
    events,
    isActive,
    type,
    configuration,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
