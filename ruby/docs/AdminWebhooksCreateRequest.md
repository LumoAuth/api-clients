# LumoAuthApiClient::AdminWebhooksCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Public https URL. |  |
| **events** | **Array&lt;String&gt;** | Event names from the catalogue. |  |
| **is_active** | **Boolean** | Also accepted as active or enabled. | [optional][default to true] |
| **type** | **String** | custom (default), slack, discord or teams. | [optional] |
| **configuration** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksCreateRequest.new(
  url: null,
  events: null,
  is_active: null,
  type: null,
  configuration: null
)
```

