# LumoAuthApiClient::AdminMcpServersGrantsSetResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  | [optional] |
| **server_id** | **String** |  | [optional] |
| **all_tools** | **Boolean** |  | [optional] |
| **tools** | **Array&lt;String&gt;** |  | [optional] |
| **added** | **Array&lt;String&gt;** |  | [optional] |
| **removed** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminMcpServersGrantsSetResponseData.new(
  agent_id: null,
  server_id: null,
  all_tools: null,
  tools: null,
  added: null,
  removed: null
)
```

