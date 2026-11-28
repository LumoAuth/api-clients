# LumoAuth.ApiClient.Model.IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**Agent** | **string** | Agent identifier the resource token is bound to. | 
**AgentJkt** | **string** | JWK thumbprint of the agent key (PoP binding). | 
**Scope** | **string** | Optional space-delimited requested scopes. | [optional] 
**AuthRequestUrl** | **string** | Optional auth request URL to embed in the token. | [optional] 
**AuthServer** | **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

