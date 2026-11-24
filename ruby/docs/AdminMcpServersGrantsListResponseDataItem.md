# LumoAuthApiClient::AdminMcpServersGrantsListResponseDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  | [optional] |
| **agent_name** | **String** |  | [optional] |
| **all_tools** | **Boolean** | The agent may call every tool of the server. | [optional] |
| **tools** | **Array&lt;String&gt;** | Tools granted one by one. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminMcpServersGrantsListResponseDataItem.new(
  agent_id: agt_0123456789abcdef,
  agent_name: null,
  all_tools: null,
  tools: null
)
```

