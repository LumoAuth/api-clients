# LumoAuthApiClient::EmailTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **is_custom** | **Boolean** |  |  |
| **subject** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **variables** | **Array&lt;String&gt;** |  |  |
| **body_html** | **String** | Single-template responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EmailTemplate.new(
  type: null,
  is_custom: null,
  subject: null,
  is_active: null,
  created_at: null,
  updated_at: null,
  variables: null,
  body_html: null
)
```

