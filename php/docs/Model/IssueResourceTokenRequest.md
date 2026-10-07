# # IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **string** | Agent identifier the resource token is bound to. | [optional]
**agentJkt** | **string** | JWK thumbprint of the agent key (PoP binding). | [optional]
**scope** | **string** | Optional space-delimited requested scopes. | [optional]
**authRequestUrl** | **string** | Optional auth request URL to embed in the token. | [optional]
**authServer** | **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
