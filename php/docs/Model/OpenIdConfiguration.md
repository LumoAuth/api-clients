# # OpenIdConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **string** |  |
**authorizationEndpoint** | **string** |  |
**tokenEndpoint** | **string** |  |
**jwksUri** | **string** |  |
**responseTypesSupported** | **string[]** |  |
**subjectTypesSupported** | **string[]** |  |
**idTokenSigningAlgValuesSupported** | **string[]** |  |
**userinfoEndpoint** | **string** |  | [optional]
**registrationEndpoint** | **string** |  | [optional]
**scopesSupported** | **string[]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional]
**claimsSupported** | **string[]** |  | [optional]
**responseModesSupported** | **string[]** |  | [optional]
**authorizationSigningAlgValuesSupported** | **string[]** | JARM signing algorithms. | [optional]
**grantTypesSupported** | **string[]** |  | [optional]
**deviceAuthorizationEndpoint** | **string** |  | [optional]
**tokenEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**tokenEndpointAuthSigningAlgValuesSupported** | **string[]** |  | [optional]
**claimTypesSupported** | **string[]** |  | [optional]
**claimsParameterSupported** | **bool** |  | [optional]
**requestParameterSupported** | **bool** |  | [optional]
**requestUriParameterSupported** | **bool** |  | [optional]
**requireRequestUriRegistration** | **bool** |  | [optional]
**requireSignedRequestObject** | **bool** |  | [optional]
**requestObjectSigningAlgValuesSupported** | **string[]** |  | [optional]
**uiLocalesSupported** | **string[]** |  | [optional]
**acrValuesSupported** | **string[]** | The four MFA tier ACR values, unless overridden in organization settings. | [optional]
**codeChallengeMethodsSupported** | **string[]** |  | [optional]
**authorizationResponseIssParameterSupported** | **bool** |  | [optional]
**pushedAuthorizationRequestEndpoint** | **string** |  | [optional]
**requirePushedAuthorizationRequests** | **bool** |  | [optional]
**dpopSigningAlgValuesSupported** | **string[]** |  | [optional]
**tlsClientCertificateBoundAccessTokens** | **bool** |  | [optional]
**introspectionEndpoint** | **string** |  | [optional]
**introspectionEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**revocationEndpoint** | **string** |  | [optional]
**revocationEndpointAuthMethodsSupported** | **string[]** |  | [optional]
**resourceIndicatorsSupported** | **bool** |  | [optional]
**endSessionEndpoint** | **string** |  | [optional]
**checkSessionIframe** | **string** |  | [optional]
**frontchannelLogoutSupported** | **bool** |  | [optional]
**frontchannelLogoutSessionSupported** | **bool** |  | [optional]
**backchannelLogoutSupported** | **bool** |  | [optional]
**backchannelLogoutSessionSupported** | **bool** |  | [optional]
**backchannelAuthenticationEndpoint** | **string** |  | [optional]
**backchannelTokenDeliveryModesSupported** | **string[]** |  | [optional]
**backchannelUserCodeParameterSupported** | **bool** |  | [optional]
**serviceDocumentation** | **string** |  | [optional]
**entityProfilesSupported** | **string[]** |  | [optional]
**clientIdMetadataDocumentSupported** | **bool** | Only when CIMD is enabled for the organization. | [optional]
**authorizationGrantProfilesSupported** | **string[]** | Only when the organization accepts ID-JAGs. | [optional]
**opPolicyUri** | **string** | Only when configured. | [optional]
**opTosUri** | **string** | Only when configured. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
