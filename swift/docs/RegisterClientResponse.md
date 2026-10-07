# RegisterClientResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **String** |  | 
**clientSecret** | **String** | Plaintext secret, shown once (confidential clients only). | [optional] 
**clientSecretExpiresAt** | **Int** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] 
**clientIdIssuedAt** | **Int** | Unix seconds. | 
**registrationAccessToken** | **String** | Bearer token for the client configuration endpoint, shown once. | [optional] 
**registrationClientUri** | **String** |  | [optional] 
**clientName** | **String** |  | 
**redirectUris** | **[String]** |  | 
**responseTypes** | **[String]** |  | 
**grantTypes** | **[String]** |  | 
**applicationType** | **String** |  | 
**tokenEndpointAuthMethod** | **String** |  | 
**contacts** | **[String]** |  | [optional] 
**clientUri** | **String** |  | [optional] 
**logoUri** | **String** |  | [optional] 
**policyUri** | **String** |  | [optional] 
**tosUri** | **String** |  | [optional] 
**sectorIdentifierUri** | **String** |  | [optional] 
**subjectType** | **String** | Only when not \&quot;public\&quot;. | [optional] 
**jwksUri** | **String** |  | [optional] 
**jwks** | **[String: AnyCodable]** |  | [optional] 
**postLogoutRedirectUris** | **[String]** |  | [optional] 
**initiateLoginUri** | **String** |  | [optional] 
**requestUris** | **[String]** |  | [optional] 
**scope** | **String** | Space-separated registered scopes. | [optional] 
**idTokenSignedResponseAlg** | **String** | Only when not RS256. | [optional] 
**userinfoSignedResponseAlg** | **String** |  | [optional] 
**requestObjectSigningAlg** | **String** |  | [optional] 
**tokenEndpointAuthSigningAlg** | **String** |  | [optional] 
**defaultMaxAge** | **Int** |  | [optional] 
**requireAuthTime** | **Bool** | Only when true. | [optional] 
**defaultAcrValues** | **[String]** |  | [optional] 
**frontchannelLogoutUri** | **String** |  | [optional] 
**frontchannelLogoutSessionRequired** | **Bool** | Only when true. | [optional] 
**backchannelLogoutUri** | **String** |  | [optional] 
**backchannelLogoutSessionRequired** | **Bool** | Only when true. | [optional] 
**audienceUris** | **[String]** | RFC 8707 resource indicators the client may request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


