# AuthorizationServerMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **String** |  | 
**authorizationEndpoint** | **String** |  | 
**tokenEndpoint** | **String** |  | 
**responseTypesSupported** | **[String]** |  | 
**jwksUri** | **String** |  | 
**registrationEndpoint** | **String** |  | [optional] 
**scopesSupported** | **[String]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**responseModesSupported** | **[String]** |  | [optional] 
**authorizationSigningAlgValuesSupported** | **[String]** | JARM signing algorithms. | [optional] 
**grantTypesSupported** | **[String]** |  | [optional] 
**tokenEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**tokenEndpointAuthSigningAlgValuesSupported** | **[String]** |  | [optional] 
**serviceDocumentation** | **String** |  | [optional] 
**uiLocalesSupported** | **[String]** |  | [optional] 
**revocationEndpoint** | **String** |  | [optional] 
**revocationEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**introspectionEndpoint** | **String** |  | [optional] 
**introspectionEndpointAuthMethodsSupported** | **[String]** |  | [optional] 
**codeChallengeMethodsSupported** | **[String]** |  | [optional] 
**authorizationResponseIssParameterSupported** | **Bool** |  | [optional] 
**requestParameterSupported** | **Bool** |  | [optional] 
**requestUriParameterSupported** | **Bool** |  | [optional] 
**requireRequestUriRegistration** | **Bool** |  | [optional] 
**requireSignedRequestObject** | **Bool** |  | [optional] 
**requestObjectSigningAlgValuesSupported** | **[String]** |  | [optional] 
**deviceAuthorizationEndpoint** | **String** |  | [optional] 
**pushedAuthorizationRequestEndpoint** | **String** |  | [optional] 
**requirePushedAuthorizationRequests** | **Bool** |  | [optional] 
**dpopSigningAlgValuesSupported** | **[String]** |  | [optional] 
**tlsClientCertificateBoundAccessTokens** | **Bool** |  | [optional] 
**backchannelAuthenticationEndpoint** | **String** |  | [optional] 
**backchannelTokenDeliveryModesSupported** | **[String]** |  | [optional] 
**backchannelUserCodeParameterSupported** | **Bool** |  | [optional] 
**entityProfilesSupported** | **[String]** |  | [optional] 
**clientIdMetadataDocumentSupported** | **Bool** | Only when CIMD is enabled for the organization. | [optional] 
**authorizationGrantProfilesSupported** | **[String]** | Only when the organization accepts ID-JAGs. | [optional] 
**opPolicyUri** | **String** | Only when configured. | [optional] 
**opTosUri** | **String** | Only when configured. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


