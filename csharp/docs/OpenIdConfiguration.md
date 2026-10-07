# LumoAuth.ApiClient.Model.OpenIdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **string** |  | 
**AuthorizationEndpoint** | **string** |  | 
**TokenEndpoint** | **string** |  | 
**JwksUri** | **string** |  | 
**ResponseTypesSupported** | **List&lt;string&gt;** |  | 
**SubjectTypesSupported** | **List&lt;string&gt;** |  | 
**IdTokenSigningAlgValuesSupported** | **List&lt;string&gt;** |  | 
**UserinfoEndpoint** | **string** |  | [optional] 
**RegistrationEndpoint** | **string** |  | [optional] 
**ScopesSupported** | **List&lt;string&gt;** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**ClaimsSupported** | **List&lt;string&gt;** |  | [optional] 
**ResponseModesSupported** | **List&lt;string&gt;** |  | [optional] 
**AuthorizationSigningAlgValuesSupported** | **List&lt;string&gt;** | JARM signing algorithms. | [optional] 
**GrantTypesSupported** | **List&lt;string&gt;** |  | [optional] 
**DeviceAuthorizationEndpoint** | **string** |  | [optional] 
**TokenEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**TokenEndpointAuthSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**ClaimTypesSupported** | **List&lt;string&gt;** |  | [optional] 
**ClaimsParameterSupported** | **bool** |  | [optional] 
**RequestParameterSupported** | **bool** |  | [optional] 
**RequestUriParameterSupported** | **bool** |  | [optional] 
**RequireRequestUriRegistration** | **bool** |  | [optional] 
**RequireSignedRequestObject** | **bool** |  | [optional] 
**RequestObjectSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**UiLocalesSupported** | **List&lt;string&gt;** |  | [optional] 
**AcrValuesSupported** | **List&lt;string&gt;** | The four MFA tier ACR values, unless overridden in organization settings. | [optional] 
**CodeChallengeMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**AuthorizationResponseIssParameterSupported** | **bool** |  | [optional] 
**PushedAuthorizationRequestEndpoint** | **string** |  | [optional] 
**RequirePushedAuthorizationRequests** | **bool** |  | [optional] 
**DpopSigningAlgValuesSupported** | **List&lt;string&gt;** |  | [optional] 
**TlsClientCertificateBoundAccessTokens** | **bool** |  | [optional] 
**IntrospectionEndpoint** | **string** |  | [optional] 
**IntrospectionEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**RevocationEndpoint** | **string** |  | [optional] 
**RevocationEndpointAuthMethodsSupported** | **List&lt;string&gt;** |  | [optional] 
**ResourceIndicatorsSupported** | **bool** |  | [optional] 
**EndSessionEndpoint** | **string** |  | [optional] 
**CheckSessionIframe** | **string** |  | [optional] 
**FrontchannelLogoutSupported** | **bool** |  | [optional] 
**FrontchannelLogoutSessionSupported** | **bool** |  | [optional] 
**BackchannelLogoutSupported** | **bool** |  | [optional] 
**BackchannelLogoutSessionSupported** | **bool** |  | [optional] 
**BackchannelAuthenticationEndpoint** | **string** |  | [optional] 
**BackchannelTokenDeliveryModesSupported** | **List&lt;string&gt;** |  | [optional] 
**BackchannelUserCodeParameterSupported** | **bool** |  | [optional] 
**ServiceDocumentation** | **string** |  | [optional] 
**EntityProfilesSupported** | **List&lt;string&gt;** |  | [optional] 
**ClientIdMetadataDocumentSupported** | **bool** | Only when CIMD is enabled for the organization. | [optional] 
**AuthorizationGrantProfilesSupported** | **List&lt;string&gt;** | Only when the organization accepts ID-JAGs. | [optional] 
**OpPolicyUri** | **string** | Only when configured. | [optional] 
**OpTosUri** | **string** | Only when configured. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

