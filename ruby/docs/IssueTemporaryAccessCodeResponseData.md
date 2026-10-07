# LumoAuthApiClient::IssueTemporaryAccessCodeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **single_use** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueTemporaryAccessCodeResponseData.new(
  id: null,
  code: ABCD-EFGH-JKMN,
  expires_at: null,
  single_use: null
)
```

