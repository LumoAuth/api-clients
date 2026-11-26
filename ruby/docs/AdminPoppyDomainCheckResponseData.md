# LumoAuthApiClient::AdminPoppyDomainCheckResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  | [optional] |
| **ok** | **Boolean** |  | [optional] |
| **checks** | [**Array&lt;AdminPoppyDomainCheckResponseDataChecksItem&gt;**](AdminPoppyDomainCheckResponseDataChecksItem.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyDomainCheckResponseData.new(
  domain: null,
  ok: null,
  checks: null
)
```

