# LumoAuthApiClient::EvaluateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **Hash&lt;String, Object&gt;** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} |  |
| **action** | **Hash&lt;String, Object&gt;** | {\&quot;name\&quot;, \&quot;properties\&quot;} |  |
| **resource** | **Hash&lt;String, Object&gt;** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} |  |
| **context** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EvaluateRequest.new(
  subject: null,
  action: null,
  resource: null,
  context: null
)
```

