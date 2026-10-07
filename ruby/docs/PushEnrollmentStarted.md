# LumoAuthApiClient::PushEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **qr_data_uri** | **String** |  | [optional] |
| **deep_link** | **String** |  | [optional] |
| **activation_code** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PushEnrollmentStarted.new(
  id: push_enrollment:&lt;token&gt;,
  state: null,
  qr_data_uri: null,
  deep_link: null,
  activation_code: null,
  expires_at: null
)
```

