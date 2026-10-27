# LumoAuthApiClient::PushEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **qr_data_uri** | **String** |  | [optional] |
| **deep_link** | **String** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] |
| **deep_link_android** | **String** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] |
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
  deep_link_android: null,
  activation_code: null,
  expires_at: null
)
```

