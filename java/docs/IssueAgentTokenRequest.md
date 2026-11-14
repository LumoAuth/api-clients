

# IssueAgentTokenRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**requestType** | **String** | One of auth, code, exchange, refresh. |  [optional] |
|**resourceToken** | **String** | Resource token binding the request (request_type&#x3D;auth/refresh). |  [optional] |
|**redirectUri** | **String** | User-consent redirect (request_type&#x3D;auth/code). |  [optional] |
|**code** | **String** | Authorization code to exchange (request_type&#x3D;code). |  [optional] |
|**authToken** | **String** | Upstream auth token to exchange (request_type&#x3D;exchange). |  [optional] |
|**refreshToken** | **String** | Refresh token to redeem (request_type&#x3D;refresh). |  [optional] |
|**scope** | **String** | request_type&#x3D;refresh only: optional space-delimited scopes that narrow the refreshed token. Must be a subset of the refresh grant and of the resource token scope (invalid_scope otherwise). Ignored for request_type&#x3D;auth, where the resource token names the scope. |  [optional] |



