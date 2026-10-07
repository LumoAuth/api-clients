# LumoAuthApiClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **url** | **String** |  |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **type** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **failure_count** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **last_triggered_at** | **Time** |  | [optional] |
| **configuration** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::Webhook.new(
  id: null,
  url: null,
  events: null,
  type: null,
  is_active: null,
  failure_count: null,
  created_at: null,
  last_triggered_at: null,
  configuration: null
)
```

