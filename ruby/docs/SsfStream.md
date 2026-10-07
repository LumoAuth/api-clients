# LumoAuthApiClient::SsfStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stream_id** | **String** |  | [optional] |
| **iss** | **String** |  | [optional] |
| **aud** | **String** |  | [optional] |
| **delivery** | [**SsfStreamDelivery**](SsfStreamDelivery.md) |  | [optional] |
| **events_supported** | **Array&lt;String&gt;** |  | [optional] |
| **events_requested** | **Array&lt;String&gt;** |  | [optional] |
| **events_delivered** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SsfStream.new(
  stream_id: null,
  iss: null,
  aud: null,
  delivery: null,
  events_supported: null,
  events_requested: null,
  events_delivered: null,
  status: null,
  created_at: null
)
```

