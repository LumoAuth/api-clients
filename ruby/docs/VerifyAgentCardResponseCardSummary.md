# LumoAuthApiClient::VerifyAgentCardResponseCardSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protocol_version** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **provider** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **skills** | **Integer** | Number of skills declared on the card. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyAgentCardResponseCardSummary.new(
  protocol_version: null,
  name: null,
  url: null,
  version: null,
  provider: null,
  skills: null
)
```

