

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



