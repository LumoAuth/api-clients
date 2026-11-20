# LumoAuthApiClient::AdminMcpServersGrantsSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tools** | **Array&lt;String&gt;** | Tool names, as the server lists them in tools/list. Replaces the tools granted one by one; [] removes them. | [optional] |
| **all_tools** | **Boolean** | Allow every tool of the server, including tools it adds later. Default false. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminMcpServersGrantsSetRequest.new(
  tools: [&quot;list_issues&quot;,&quot;get_issue&quot;],
  all_tools: null
)
```

