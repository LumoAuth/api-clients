# IssueResourceTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **String** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**agent** | **String** | Agent identifier the resource token is bound to. | 
**agentJkt** | **String** | JWK thumbprint of the agent key (PoP binding). | 
**scope** | **String** | Optional space-delimited requested scopes. | [optional] 
**authRequestUrl** | **String** | Optional auth request URL to embed in the token. | [optional] 
**authServer** | **String** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


