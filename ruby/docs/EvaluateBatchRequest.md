# LumoAuthApiClient::EvaluateBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **Hash&lt;String, Object&gt;** | Default for every evaluation. | [optional] |
| **action** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **resource** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **context** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **evaluations** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Evaluation requests; each member overrides the defaults. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EvaluateBatchRequest.new(
  subject: null,
  action: null,
  resource: null,
  context: null,
  evaluations: null
)
```

