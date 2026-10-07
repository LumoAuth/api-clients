# ListConnectionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | [**ListConnectionsResponseAgent**](ListConnectionsResponseAgent.md) |  | [default to undefined]
**connections** | [**Array&lt;AgentOutboundConnection&gt;**](AgentOutboundConnection.md) |  | [default to undefined]
**data** | **Array&lt;{ [key: string]: any; }&gt;** | Same items as connections. | [default to undefined]
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [default to undefined]

## Example

```typescript
import { ListConnectionsResponse } from '@lumoauth/api-client';

const instance: ListConnectionsResponse = {
    agent,
    connections,
    data,
    pagination,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
