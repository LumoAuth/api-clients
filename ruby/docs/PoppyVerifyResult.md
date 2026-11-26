# LumoAuthApiClient::PoppyVerifyResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  |  |
| **client_id** | **String** | The personal agent (the URL of its metadata document). | [optional] |
| **client_name** | **String** |  | [optional] |
| **user_id** | **String** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. | [optional] |
| **agent_id** | **String** |  | [optional] |
| **session** | [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional] |
| **signed_in** | **Boolean** |  | [optional] |
| **account** | [**PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional] |
| **version** | **String** |  | [optional] |
| **extensions** | **Hash&lt;String, String&gt;** | The extensions that the request declares, name to version. | [optional] |
| **error** | **String** |  | [optional] |
| **error_description** | **String** |  | [optional] |
| **scope** | **String** | The scopes that a refusal asks for. | [optional] |
| **response** | [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyVerifyResult.new(
  active: null,
  client_id: null,
  client_name: null,
  user_id: null,
  agent_id: null,
  session: null,
  signed_in: null,
  account: null,
  version: 1.0,
  extensions: null,
  error: null,
  error_description: null,
  scope: null,
  response: null
)
```

