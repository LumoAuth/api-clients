# LumoAuthApiClient::AdminWebhooksCreateResponseData

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
| **secret** | **String** | HMAC signing secret, returned only at creation | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksCreateResponseData.new(
  id: null,
  url: null,
  events: null,
  type: null,
  is_active: null,
  failure_count: null,
  created_at: null,
  last_triggered_at: null,
  configuration: null,
  secret: null,
  _note: Store the secret securely for signature verification. It will not be shown again.
)
```

