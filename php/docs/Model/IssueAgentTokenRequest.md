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

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
