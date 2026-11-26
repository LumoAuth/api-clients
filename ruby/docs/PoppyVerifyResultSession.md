# LumoAuthApiClient::PoppyVerifyResultSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **sid** | **String** |  | [optional] |
| **new** | **Boolean** | true when this request started the Session. | [optional] |
| **started_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyVerifyResultSession.new(
  id: null,
  sid: null,
  new: null,
  started_at: null
)
```

