# LumoAuthApiClient::PutAdminWebhooksUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] |
| **events** | **Array&lt;String&gt;** |  | [optional] |
| **is_active** | **Boolean** | Also accepted as active or enabled. | [optional] |
| **type** | **String** |  | [optional] |
| **configuration** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **rotate_secret** | **Boolean** | Issue a new signing secret (returned once). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminWebhooksUpdateRequest.new(
  url: null,
  events: null,
  is_active: null,
  type: null,
  configuration: null,
  rotate_secret: null
)
```

