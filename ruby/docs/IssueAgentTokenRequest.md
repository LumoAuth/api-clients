# LumoAuthApiClient::IssueAgentTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_type** | **String** | One of auth, code, exchange, refresh. | [optional] |
| **resource_token** | **String** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional] |
| **redirect_uri** | **String** | User-consent redirect (request_type&#x3D;auth/code). | [optional] |
| **code** | **String** | Authorization code to exchange (request_type&#x3D;code). | [optional] |
| **auth_token** | **String** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional] |
| **refresh_token** | **String** | Refresh token to redeem (request_type&#x3D;refresh). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueAgentTokenRequest.new(
  request_type: auth,
  resource_token: null,
  redirect_uri: null,
  code: null,
  auth_token: null,
  refresh_token: null
)
```

