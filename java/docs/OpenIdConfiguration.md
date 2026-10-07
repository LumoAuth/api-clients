

# OpenIdConfiguration


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**issuer** | **URI** |  |  |
|**authorizationEndpoint** | **URI** |  |  |
|**tokenEndpoint** | **URI** |  |  |
|**jwksUri** | **URI** |  |  |
|**responseTypesSupported** | **List&lt;String&gt;** |  |  |
|**subjectTypesSupported** | **List&lt;String&gt;** |  |  |
|**idTokenSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  |
|**userinfoEndpoint** | **URI** |  |  [optional] |
|**registrationEndpoint** | **URI** |  |  [optional] |
|**scopesSupported** | **List&lt;String&gt;** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. |  [optional] |
|**claimsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**responseModesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**authorizationSigningAlgValuesSupported** | **List&lt;String&gt;** | JARM signing algorithms. |  [optional] |
|**grantTypesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**deviceAuthorizationEndpoint** | **URI** |  |  [optional] |
|**tokenEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**tokenEndpointAuthSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**claimTypesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**claimsParameterSupported** | **Boolean** |  |  [optional] |
|**requestParameterSupported** | **Boolean** |  |  [optional] |
|**requestUriParameterSupported** | **Boolean** |  |  [optional] |
|**requireRequestUriRegistration** | **Boolean** |  |  [optional] |
|**requireSignedRequestObject** | **Boolean** |  |  [optional] |
|**requestObjectSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**uiLocalesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**acrValuesSupported** | **List&lt;String&gt;** | The four MFA tier ACR values, unless overridden in organization settings. |  [optional] |
|**codeChallengeMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**authorizationResponseIssParameterSupported** | **Boolean** |  |  [optional] |
|**pushedAuthorizationRequestEndpoint** | **URI** |  |  [optional] |
|**requirePushedAuthorizationRequests** | **Boolean** |  |  [optional] |
|**dpopSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**tlsClientCertificateBoundAccessTokens** | **Boolean** |  |  [optional] |
|**introspectionEndpoint** | **URI** |  |  [optional] |
|**introspectionEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**revocationEndpoint** | **URI** |  |  [optional] |
|**revocationEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**resourceIndicatorsSupported** | **Boolean** |  |  [optional] |
|**endSessionEndpoint** | **URI** |  |  [optional] |
|**checkSessionIframe** | **URI** |  |  [optional] |
|**frontchannelLogoutSupported** | **Boolean** |  |  [optional] |
|**frontchannelLogoutSessionSupported** | **Boolean** |  |  [optional] |
|**backchannelLogoutSupported** | **Boolean** |  |  [optional] |
|**backchannelLogoutSessionSupported** | **Boolean** |  |  [optional] |
|**backchannelAuthenticationEndpoint** | **URI** |  |  [optional] |
|**backchannelTokenDeliveryModesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**backchannelUserCodeParameterSupported** | **Boolean** |  |  [optional] |
|**serviceDocumentation** | **URI** |  |  [optional] |
|**entityProfilesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**clientIdMetadataDocumentSupported** | **Boolean** | Only when CIMD is enabled for the organization. |  [optional] |
|**authorizationGrantProfilesSupported** | **List&lt;String&gt;** | Only when the organization accepts ID-JAGs. |  [optional] |
|**opPolicyUri** | **URI** | Only when configured. |  [optional] |
|**opTosUri** | **URI** | Only when configured. |  [optional] |



