# VerifyResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **String** | Required. The resource identifier of the calling resource (`resource_identifier` is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**resource_token** | **String** | The resource token to validate. | 
**agent** | **String** | Agent identifier the token must be bound to. | 
**agent_jkt** | **String** | JWK thumbprint of the agent key. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


