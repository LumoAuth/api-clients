# # RegisterClientResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **string** |  |
**clientSecret** | **string** | Plaintext secret, shown once (confidential clients only). | [optional]
**clientSecretExpiresAt** | **int** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional]
**clientIdIssuedAt** | **int** | Unix seconds. |
**registrationAccessToken** | **string** | Bearer token for the client configuration endpoint, shown once. | [optional]
**registrationClientUri** | **string** |  | [optional]
**clientName** | **string** |  |
**redirectUris** | **string[]** |  |
**responseTypes** | **string[]** |  |
**grantTypes** | **string[]** |  |
**applicationType** | **string** |  |
**tokenEndpointAuthMethod** | **string** |  |
**contacts** | **string[]** |  | [optional]
**clientUri** | **string** |  | [optional]
**logoUri** | **string** |  | [optional]
**policyUri** | **string** |  | [optional]
**tosUri** | **string** |  | [optional]
**sectorIdentifierUri** | **string** |  | [optional]
**subjectType** | **string** | Only when not \&quot;public\&quot;. | [optional]
**jwksUri** | **string** |  | [optional]
**jwks** | **array<string,mixed>** |  | [optional]
**postLogoutRedirectUris** | **string[]** |  | [optional]
**initiateLoginUri** | **string** |  | [optional]
**requestUris** | **string[]** |  | [optional]
**scope** | **string** | Space-separated registered scopes. | [optional]
**idTokenSignedResponseAlg** | **string** | Only when not RS256. | [optional]
**userinfoSignedResponseAlg** | **string** |  | [optional]
**requestObjectSigningAlg** | **string** |  | [optional]
**tokenEndpointAuthSigningAlg** | **string** |  | [optional]
**defaultMaxAge** | **int** |  | [optional]
**requireAuthTime** | **bool** | Only when true. | [optional]
**defaultAcrValues** | **string[]** |  | [optional]
**frontchannelLogoutUri** | **string** |  | [optional]
**frontchannelLogoutSessionRequired** | **bool** | Only when true. | [optional]
**backchannelLogoutUri** | **string** |  | [optional]
**backchannelLogoutSessionRequired** | **bool** | Only when true. | [optional]
**audienceUris** | **string[]** | RFC 8707 resource indicators the client may request. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
