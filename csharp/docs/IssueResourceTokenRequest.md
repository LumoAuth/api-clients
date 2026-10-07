# LumoAuth.ApiClient.Model.IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | **string** | Agent identifier the resource token is bound to. | [optional] 
**AgentJkt** | **string** | JWK thumbprint of the agent key (PoP binding). | [optional] 
**Scope** | **string** | Optional space-delimited requested scopes. | [optional] 
**AuthRequestUrl** | **string** | Optional auth request URL to embed in the token. | [optional] 
**AuthServer** | **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

