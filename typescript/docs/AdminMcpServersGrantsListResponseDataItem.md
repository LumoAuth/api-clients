# AdminMcpServersGrantsListResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **string** |  | [optional] [default to undefined]
**agent_name** | **string** |  | [optional] [default to undefined]
**all_tools** | **boolean** | The agent may call every tool of the server. | [optional] [default to undefined]
**tools** | **Array&lt;string&gt;** | Tools granted one by one. | [optional] [default to undefined]

## Example

```typescript
import { AdminMcpServersGrantsListResponseDataItem } from '@lumoauth/api-client';

const instance: AdminMcpServersGrantsListResponseDataItem = {
    agent_id,
    agent_name,
    all_tools,
    tools,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
