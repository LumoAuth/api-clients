# LumoAuthApiClient::AskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action to authorize. | [optional] |
| **context** | **Object** | Optional resource/attribute context for the decision. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AskRequest.new(
  action: document.read,
  context: {&quot;id&quot;:&quot;123&quot;}
)
```

