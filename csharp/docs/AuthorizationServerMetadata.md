# LumoAuth.ApiClient.Model.AuthorizationServerMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **string** |  | 
**AuthorizationEndpoint** | **string** |  | 
**TokenEndpoint** | **string** |  | 
**ResponseTypesSupported** | **List&lt;string&gt;** |  | 
**JwksUri** | **string** |  | 
**RegistrationEndpoint** | **string** |  | [optional] 
**ScopesSupported** | **List&lt;string&gt;** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**ResponseModesSupported** | **List&lt;string&gt;** |  | [optional] 
**AuthorizationSigningAlgValuesSupported** | **List&lt;string&gt;** | JARM signing algorithms. | [optional] 
**GrantTypesSupported** | **List&lt;string&gt;** |  | [optional] 
**TokenEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**TokenEndpointAuthSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**ServiceDocumentation** | **string** |  | [optional] 
**UiLocalesSupported** | **List&lt;string&gt;** |  | [optional] 
**RevocationEndpoint** | **string** |  | [optional] 
**RevocationEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**IntrospectionEndpoint** | **string** |  | [optional] 
**IntrospectionEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**CodeChallengeMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**AuthorizationResponseIssParameterSupported** | **bool** |  | [optional] 
**RequestParameterSupported** | **bool** |  | [optional] 
**RequestUriParameterSupported** | **bool** |  | [optional] 
**RequireRequestUriRegistration** | **bool** |  | [optional] 
**RequireSignedRequestObject** | **bool** |  | [optional] 
**RequestObjectSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**DeviceAuthorizationEndpoint** | **string** |  | [optional] 
**PushedAuthorizationRequestEndpoint** | **string** |  | [optional] 
**RequirePushedAuthorizationRequests** | **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**TlsClientCertificateBoundAccessTokens** | **bool** |  | [optional] 
**BackchannelAuthenticationEndpoint** | **string** |  | [optional] 
**BackchannelTokenDeliveryModesSupported** | **List&lt;string&gt;** |  | [optional] 
**BackchannelUserCodeParameterSupported** | **bool** |  | [optional] 
**EntityProfilesSupported** | **List&lt;string&gt;** |  | [optional] 
**ClientIdMetadataDocumentSupported** | **bool** | Only when CIMD is enabled for the organization. | [optional] 
**AuthorizationGrantProfilesSupported** | **List&lt;string&gt;** | Only when the organization accepts ID-JAGs. | [optional] 
**OpPolicyUri** | **string** | Only when configured. | [optional] 
**OpTosUri** | **string** | Only when configured. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

