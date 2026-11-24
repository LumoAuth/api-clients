# AdminMcpServersGrantsSetRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tools** | **Array&lt;string&gt;** | Tool names, as the server lists them in tools/list. Replaces the tools granted one by one; [] removes them. | [optional] [default to undefined]
**all_tools** | **boolean** | Allow every tool of the server, including tools it adds later. Default false. | [optional] [default to undefined]

## Example

```typescript
import { AdminMcpServersGrantsSetRequest } from '@lumoauth/api-client';

const instance: AdminMcpServersGrantsSetRequest = {
    tools,
    all_tools,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
