# LumoAuthApiClient::AdminEmailTemplatesVariablesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **variables** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminEmailTemplatesVariablesResponse.new(
  type: password_reset,
  variables: {&quot;{{user_name}}&quot;:&quot;Name of the recipient&quot;,&quot;{{reset_url}}&quot;:&quot;The password-reset URL&quot;}
)
```

