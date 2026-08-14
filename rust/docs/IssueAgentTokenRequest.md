# IssueAgentTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | Option<**String**> | One of auth, code, exchange, refresh. | [optional]
**resource_token** | Option<**String**> | Resource token binding the request (request_type=auth/refresh). | [optional]
**redirect_uri** | Option<**String**> | User-consent redirect (request_type=auth/code). | [optional]
**code** | Option<**String**> | Authorization code to exchange (request_type=code). | [optional]
**auth_token** | Option<**String**> | Upstream auth token to exchange (request_type=exchange). | [optional]
**refresh_token** | Option<**String**> | Refresh token to redeem (request_type=refresh). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


