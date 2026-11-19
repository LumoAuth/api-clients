# # IssueAgentTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requestType** | **string** | One of auth, code, exchange, refresh. | [optional]
**resourceToken** | **string** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional]
**redirectUri** | **string** | User-consent redirect (request_type&#x3D;auth/code). | [optional]
**code** | **string** | Authorization code to exchange (request_type&#x3D;code). | [optional]
**authToken** | **string** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional]
**refreshToken** | **string** | Refresh token to redeem (request_type&#x3D;refresh). | [optional]
**scope** | **string** | request_type&#x3D;refresh only: optional space-delimited scopes that narrow the refreshed token. Must be a subset of the refresh grant and of the resource token scope (invalid_scope otherwise). Ignored for request_type&#x3D;auth, where the resource token names the scope. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
