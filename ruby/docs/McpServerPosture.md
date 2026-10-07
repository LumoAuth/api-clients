# LumoAuthApiClient::McpServerPosture

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **level** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **passes** | **Integer** |  | [optional] |
| **applicable** | **Integer** |  | [optional] |
| **checks** | [**Array&lt;McpServerPostureChecksInner&gt;**](McpServerPostureChecksInner.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::McpServerPosture.new(
  level: null,
  label: null,
  passes: null,
  applicable: null,
  checks: null
)
```

