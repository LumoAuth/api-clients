# LumoAuth.ApiClient.Model.RegisteredClientMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **string** |  | 
**ClientSecretExpiresAt** | **int** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] 
**ClientIdIssuedAt** | **int** | Unix seconds. | 
**RegistrationClientUri** | **string** |  | [optional] 
**ClientName** | **string** |  | 
**RedirectUris** | **List&lt;string&gt;** |  | 
**ResponseTypes** | **List&lt;string&gt;** |  | 
**GrantTypes** | **List&lt;string&gt;** |  | 
**ApplicationType** | **string** |  | 
**TokenEndpointAuthMethod** | **string** |  | 
**Contacts** | **List&lt;string&gt;** |  | [optional] 
**ClientUri** | **string** |  | [optional] 
**LogoUri** | **string** |  | [optional] 
**PolicyUri** | **string** |  | [optional] 
**TosUri** | **string** |  | [optional] 
**SectorIdentifierUri** | **string** |  | [optional] 
**SubjectType** | **string** | Only when not \&quot;public\&quot;. | [optional] 
**JwksUri** | **string** |  | [optional] 
**Jwks** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**PostLogoutRedirectUris** | **List&lt;string&gt;** |  | [optional] 
**InitiateLoginUri** | **string** |  | [optional] 
**RequestUris** | **List&lt;string&gt;** |  | [optional] 
**Scope** | **string** | Space-separated registered scopes. | [optional] 
**IdTokenSignedResponseAlg** | **string** | Only when not RS256. | [optional] 
**UserinfoSignedResponseAlg** | **string** |  | [optional] 
**RequestObjectSigningAlg** | **string** |  | [optional] 
**TokenEndpointAuthSigningAlg** | **string** |  | [optional] 
**DefaultMaxAge** | **int** |  | [optional] 
**RequireAuthTime** | **bool** | Only when true. | [optional] 
**DefaultAcrValues** | **List&lt;string&gt;** |  | [optional] 
**FrontchannelLogoutUri** | **string** |  | [optional] 
**FrontchannelLogoutSessionRequired** | **bool** | Only when true. | [optional] 
**BackchannelLogoutUri** | **string** |  | [optional] 
**BackchannelLogoutSessionRequired** | **bool** | Only when true. | [optional] 
**AudienceUris** | **List&lt;string&gt;** | RFC 8707 resource indicators the client may request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

