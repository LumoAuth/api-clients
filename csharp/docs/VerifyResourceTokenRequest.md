# LumoAuth.ApiClient.Model.VerifyResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**ResourceToken** | **string** | The resource token to validate. | 
**Agent** | **string** | Agent identifier the token must be bound to. | 
**AgentJkt** | **string** | JWK thumbprint of the agent key. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

