# LumoAuth.ApiClient.Model.IssueAgentTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestType** | **string** | One of auth, code, exchange, refresh. | [optional] 
**ResourceToken** | **string** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional] 
**RedirectUri** | **string** | User-consent redirect (request_type&#x3D;auth/code). | [optional] 
**Code** | **string** | Authorization code to exchange (request_type&#x3D;code). | [optional] 
**AuthToken** | **string** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional] 
**RefreshToken** | **string** | Refresh token to redeem (request_type&#x3D;refresh). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

