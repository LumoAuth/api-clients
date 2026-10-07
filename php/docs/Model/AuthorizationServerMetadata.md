# # AuthorizationServerMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **string** |  |
**authorizationEndpoint** | **string** |  |
**tokenEndpoint** | **string** |  |
**responseTypesSupported** | **string[]** |  |
**jwksUri** | **string** |  |
**registrationEndpoint** | **string** |  | [optional]
**scopesSupported** | **string[]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional]
**responseModesSupported** | **string[]** |  | [optional]
**authorizationSigningAlgValuesSupported** | **string[]** | JARM signing algorithms. | [optional]
**grantTypesSupported** | **string[]** |  | [optional]
**tokenEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**tokenEndpointAuthSigningAlgValuesSupported** | **string[]** |  | [optional]
**serviceDocumentation** | **string** |  | [optional]
**uiLocalesSupported** | **string[]** |  | [optional]
**revocationEndpoint** | **string** |  | [optional]
**revocationEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**introspectionEndpoint** | **string** |  | [optional]
**introspectionEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**codeChallengeMethodsSupported** | **string[]** |  | [optional]
**authorizationResponseIssParameterSupported** | **bool** |  | [optional]
**requestParameterSupported** | **bool** |  | [optional]
**requestUriParameterSupported** | **bool** |  | [optional]
**requireRequestUriRegistration** | **bool** |  | [optional]
**requireSignedRequestObject** | **bool** |  | [optional]
**requestObjectSigningAlgValuesSupported** | **string[]** |  | [optional]
**deviceAuthorizationEndpoint** | **string** |  | [optional]
**pushedAuthorizationRequestEndpoint** | **string** |  | [optional]
**requirePushedAuthorizationRequests** | **bool** |  | [optional]
**dpopSigningAlgValuesSupported** | **string[]** |  | [optional]
**tlsClientCertificateBoundAccessTokens** | **bool** |  | [optional]
**backchannelAuthenticationEndpoint** | **string** |  | [optional]
**backchannelTokenDeliveryModesSupported** | **string[]** |  | [optional]
**backchannelUserCodeParameterSupported** | **bool** |  | [optional]
**entityProfilesSupported** | **string[]** |  | [optional]
**clientIdMetadataDocumentSupported** | **bool** | Only when CIMD is enabled for the organization. | [optional]
**authorizationGrantProfilesSupported** | **string[]** | Only when the organization accepts ID-JAGs. | [optional]
**opPolicyUri** | **string** | Only when configured. | [optional]
**opTosUri** | **string** | Only when configured. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
