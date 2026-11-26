# LumoAuthApiClient::PoppyVerifyResultAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub** | **String** | The user&#39;s id in your organization. | [optional] |
| **scope** | **String** |  | [optional] |
| **aud** | **Array&lt;String&gt;** |  | [optional] |
| **exp** | **Integer** |  | [optional] |
| **token_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyVerifyResultAccount.new(
  sub: null,
  scope: null,
  aud: null,
  exp: null,
  token_type: null
)
```

