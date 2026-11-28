# LumoAuthApiClient::SetUserPasswordPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Must meet the organization&#39;s password policy. |  |
| **require_change** | **Boolean** | Ask the user to choose a new password at the next sign-in. | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SetUserPasswordPostRequest.new(
  password: null,
  require_change: null
)
```

