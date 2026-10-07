

# AuthorizationServerMetadata


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**issuer** | **URI** |  |  |
|**authorizationEndpoint** | **URI** |  |  |
|**tokenEndpoint** | **URI** |  |  |
|**responseTypesSupported** | **List&lt;String&gt;** |  |  |
|**jwksUri** | **URI** |  |  |
|**registrationEndpoint** | **URI** |  |  [optional] |
|**scopesSupported** | **List&lt;String&gt;** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. |  [optional] |
|**responseModesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**authorizationSigningAlgValuesSupported** | **List&lt;String&gt;** | JARM signing algorithms. |  [optional] |
|**grantTypesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**tokenEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**tokenEndpointAuthSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**serviceDocumentation** | **URI** |  |  [optional] |
|**uiLocalesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**revocationEndpoint** | **URI** |  |  [optional] |
|**revocationEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**introspectionEndpoint** | **URI** |  |  [optional] |
|**introspectionEndpointAuthMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**codeChallengeMethodsSupported** | **List&lt;String&gt;** |  |  [optional] |
|**authorizationResponseIssParameterSupported** | **Boolean** |  |  [optional] |
|**requestParameterSupported** | **Boolean** |  |  [optional] |
|**requestUriParameterSupported** | **Boolean** |  |  [optional] |
|**requireRequestUriRegistration** | **Boolean** |  |  [optional] |
|**requireSignedRequestObject** | **Boolean** |  |  [optional] |
|**requestObjectSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**deviceAuthorizationEndpoint** | **URI** |  |  [optional] |
|**pushedAuthorizationRequestEndpoint** | **URI** |  |  [optional] |
|**requirePushedAuthorizationRequests** | **Boolean** |  |  [optional] |
|**dpopSigningAlgValuesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**tlsClientCertificateBoundAccessTokens** | **Boolean** |  |  [optional] |
|**backchannelAuthenticationEndpoint** | **URI** |  |  [optional] |
|**backchannelTokenDeliveryModesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**backchannelUserCodeParameterSupported** | **Boolean** |  |  [optional] |
|**entityProfilesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**clientIdMetadataDocumentSupported** | **Boolean** | Only when CIMD is enabled for the organization. |  [optional] |
|**authorizationGrantProfilesSupported** | **List&lt;String&gt;** | Only when the organization accepts ID-JAGs. |  [optional] |
|**opPolicyUri** | **URI** | Only when configured. |  [optional] |
|**opTosUri** | **URI** | Only when configured. |  [optional] |



