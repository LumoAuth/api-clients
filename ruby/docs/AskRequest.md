# LumoAuthApiClient::AskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action to authorize. | [optional] |
| **context** | **Object** | Optional resource/attribute context for the decision. | [optional] |
| **audit** | **String** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional][default to &#39;denials&#39;] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AskRequest.new(
  action: document:read,
  context: {&quot;id&quot;:&quot;123&quot;},
  audit: null
)
```

