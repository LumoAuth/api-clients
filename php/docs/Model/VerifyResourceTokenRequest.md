# # VerifyResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. |
**resourceToken** | **string** | The resource token to validate. |
**agent** | **string** | Agent identifier the token must be bound to. |
**agentJkt** | **string** | JWK thumbprint of the agent key. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
