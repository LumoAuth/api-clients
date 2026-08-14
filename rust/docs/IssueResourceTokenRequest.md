# IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | Option<**String**> | Agent identifier the resource token is bound to. | [optional]
**agent_jkt** | Option<**String**> | JWK thumbprint of the agent key (PoP binding). | [optional]
**scope** | Option<**String**> | Optional space-delimited requested scopes. | [optional]
**auth_request_url** | Option<**String**> | Optional auth request URL to embed in the token. | [optional]
**auth_server** | Option<**String**> | Optional auth server URL for the aud claim; defaults to this issuer. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


