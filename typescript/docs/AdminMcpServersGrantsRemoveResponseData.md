# AdminMcpServersGrantsRemoveResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **string** |  | [optional] [default to undefined]
**server_id** | **string** |  | [optional] [default to undefined]
**all_tools** | **boolean** |  | [optional] [default to undefined]
**tools** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**added** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**removed** | **Array&lt;string&gt;** | The tools that were granted one by one before. | [optional] [default to undefined]

## Example

```typescript
import { AdminMcpServersGrantsRemoveResponseData } from '@lumoauth/api-client';

const instance: AdminMcpServersGrantsRemoveResponseData = {
    agent_id,
    server_id,
    all_tools,
    tools,
    added,
    removed,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
