# LumoAuthApiClient::CheckEmailFirstResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exists** | **Boolean** | Always &#x60;true&#x60;. The answer never says whether the address has an account. |  |
| **magic_link_enabled** | **Boolean** | The organization offers sign-in links. |  |
| **passkey_enabled** | **Boolean** | The organization offers passkey sign-in. |  |
| **password_enabled** | **Boolean** | The organization accepts passwords at sign-in. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckEmailFirstResponse.new(
  exists: null,
  magic_link_enabled: null,
  passkey_enabled: null,
  password_enabled: null
)
```

