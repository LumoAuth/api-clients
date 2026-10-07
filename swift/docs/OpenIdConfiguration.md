# OpenIdConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **String** |  | 
**authorizationEndpoint** | **String** |  | 
**tokenEndpoint** | **String** |  | 
**jwksUri** | **String** |  | 
**responseTypesSupported** | **[String]** |  | 
**subjectTypesSupported** | **[String]** |  | 
**idTokenSigningAlgValuesSupported** | **[String]** |  | 
**userinfoEndpoint** | **String** |  | [optional] 
**registrationEndpoint** | **String** |  | [optional] 
**scopesSupported** | **[String]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**claimsSupported** | **[String]** |  | [optional] 
**responseModesSupported** | **[String]** |  | [optional] 
**authorizationSigningAlgValuesSupported** | **[String]** | JARM signing algorithms. | [optional] 
**grantTypesSupported** | **[String]** |  | [optional] 
**deviceAuthorizationEndpoint** | **String** |  | [optional] 
**tokenEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**tokenEndpointAuthSigningAlgValuesSupported** | **[String]** |  | [optional] 
**claimTypesSupported** | **[String]** |  | [optional] 
**claimsParameterSupported** | **Bool** |  | [optional] 
**requestParameterSupported** | **Bool** |  | [optional] 
**requestUriParameterSupported** | **Bool** |  | [optional] 
**requireRequestUriRegistration** | **Bool** |  | [optional] 
**requireSignedRequestObject** | **Bool** |  | [optional] 
**requestObjectSigningAlgValuesSupported** | **[String]** |  | [optional] 
**uiLocalesSupported** | **[String]** |  | [optional] 
**acrValuesSupported** | **[String]** | The four MFA tier ACR values, unless overridden in organization settings. | [optional] 
**codeChallengeMethodsSupported** | **[String]** |  | [optional] 
**authorizationResponseIssParameterSupported** | **Bool** |  | [optional] 
**pushedAuthorizationRequestEndpoint** | **String** |  | [optional] 
**requirePushedAuthorizationRequests** | **Bool** |  | [optional] 
**dpopSigningAlgValuesSupported** | **[String]** |  | [optional] 
**tlsClientCertificateBoundAccessTokens** | **Bool** |  | [optional] 
**introspectionEndpoint** | **String** |  | [optional] 
**introspectionEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**revocationEndpoint** | **String** |  | [optional] 
**revocationEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**resourceIndicatorsSupported** | **Bool** |  | [optional] 
**endSessionEndpoint** | **String** |  | [optional] 
**checkSessionIframe** | **String** |  | [optional] 
**frontchannelLogoutSupported** | **Bool** |  | [optional] 
**frontchannelLogoutSessionSupported** | **Bool** |  | [optional] 
**backchannelLogoutSupported** | **Bool** |  | [optional] 
**backchannelLogoutSessionSupported** | **Bool** |  | [optional] 
**backchannelAuthenticationEndpoint** | **String** |  | [optional] 
**backchannelTokenDeliveryModesSupported** | **[String]** |  | [optional] 
**backchannelUserCodeParameterSupported** | **Bool** |  | [optional] 
**serviceDocumentation** | **String** |  | [optional] 
**entityProfilesSupported** | **[String]** |  | [optional] 
**clientIdMetadataDocumentSupported** | **Bool** | Only when CIMD is enabled for the organization. | [optional] 
**authorizationGrantProfilesSupported** | **[String]** | Only when the organization accepts ID-JAGs. | [optional] 
**opPolicyUri** | **String** | Only when configured. | [optional] 
**opTosUri** | **String** | Only when configured. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


