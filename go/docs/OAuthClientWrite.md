# OAuthClientWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**RedirectUris** | Pointer to **[]string** | https, an http loopback address, or a custom native scheme. | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**GrantTypes** | Pointer to **[]string** | At least one grant type. | [optional] 
**IsConfidential** | Pointer to **bool** | false makes a public client (no secret, PKCE). | [optional] 
**RequiresPkce** | Pointer to **bool** |  | [optional] 
**CibaEnabled** | Pointer to **bool** | Needs a confidential client and the ciba plan feature. | [optional] 
**AllowedOrigins** | Pointer to **[]string** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] 
**PostLogoutRedirectUris** | Pointer to **[]string** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] 
**FrontchannelLogoutUri** | Pointer to **NullableString** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] 
**BackchannelLogoutUri** | Pointer to **NullableString** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] 
**AccessTokenFormat** | Pointer to **string** | Format of the access tokens that the client receives. | [optional] 
**TokenEndpointAuthMethod** | Pointer to **string** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] 
**JwksUri** | Pointer to **NullableString** | https address of the client&#39;s public keys. | [optional] 
**Jwks** | Pointer to **map[string]interface{}** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional] 
**FapiMode** | Pointer to **string** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. | [optional] 
**RequirePar** | Pointer to **bool** | Require pushed authorization requests (RFC 9126). | [optional] 
**DpopBoundAccessTokens** | Pointer to **bool** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] 
**AttestationBasedAuthEnabled** | Pointer to **bool** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] 
**AttesterIssuer** | Pointer to **NullableString** |  | [optional] 
**AttesterJwksUri** | Pointer to **NullableString** | https address of the attester&#39;s public keys. | [optional] 
**TokenExchangeEnabled** | Pointer to **bool** | Allow token exchange (RFC 8693) for this client. | [optional] 

## Methods

### NewOAuthClientWrite

`func NewOAuthClientWrite() *OAuthClientWrite`

NewOAuthClientWrite instantiates a new OAuthClientWrite object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthClientWriteWithDefaults

`func NewOAuthClientWriteWithDefaults() *OAuthClientWrite`

NewOAuthClientWriteWithDefaults instantiates a new OAuthClientWrite object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *OAuthClientWrite) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *OAuthClientWrite) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *OAuthClientWrite) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *OAuthClientWrite) HasName() bool`

HasName returns a boolean if a field has been set.

### GetRedirectUris

`func (o *OAuthClientWrite) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *OAuthClientWrite) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *OAuthClientWrite) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *OAuthClientWrite) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetScopes

`func (o *OAuthClientWrite) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *OAuthClientWrite) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *OAuthClientWrite) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *OAuthClientWrite) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetGrantTypes

`func (o *OAuthClientWrite) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *OAuthClientWrite) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *OAuthClientWrite) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *OAuthClientWrite) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetIsConfidential

`func (o *OAuthClientWrite) GetIsConfidential() bool`

GetIsConfidential returns the IsConfidential field if non-nil, zero value otherwise.

### GetIsConfidentialOk

`func (o *OAuthClientWrite) GetIsConfidentialOk() (*bool, bool)`

GetIsConfidentialOk returns a tuple with the IsConfidential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsConfidential

`func (o *OAuthClientWrite) SetIsConfidential(v bool)`

SetIsConfidential sets IsConfidential field to given value.

### HasIsConfidential

`func (o *OAuthClientWrite) HasIsConfidential() bool`

HasIsConfidential returns a boolean if a field has been set.

### GetRequiresPkce

`func (o *OAuthClientWrite) GetRequiresPkce() bool`

GetRequiresPkce returns the RequiresPkce field if non-nil, zero value otherwise.

### GetRequiresPkceOk

`func (o *OAuthClientWrite) GetRequiresPkceOk() (*bool, bool)`

GetRequiresPkceOk returns a tuple with the RequiresPkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiresPkce

`func (o *OAuthClientWrite) SetRequiresPkce(v bool)`

SetRequiresPkce sets RequiresPkce field to given value.

### HasRequiresPkce

`func (o *OAuthClientWrite) HasRequiresPkce() bool`

HasRequiresPkce returns a boolean if a field has been set.

### GetCibaEnabled

`func (o *OAuthClientWrite) GetCibaEnabled() bool`

GetCibaEnabled returns the CibaEnabled field if non-nil, zero value otherwise.

### GetCibaEnabledOk

`func (o *OAuthClientWrite) GetCibaEnabledOk() (*bool, bool)`

GetCibaEnabledOk returns a tuple with the CibaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCibaEnabled

`func (o *OAuthClientWrite) SetCibaEnabled(v bool)`

SetCibaEnabled sets CibaEnabled field to given value.

### HasCibaEnabled

`func (o *OAuthClientWrite) HasCibaEnabled() bool`

HasCibaEnabled returns a boolean if a field has been set.

### GetAllowedOrigins

`func (o *OAuthClientWrite) GetAllowedOrigins() []string`

GetAllowedOrigins returns the AllowedOrigins field if non-nil, zero value otherwise.

### GetAllowedOriginsOk

`func (o *OAuthClientWrite) GetAllowedOriginsOk() (*[]string, bool)`

GetAllowedOriginsOk returns a tuple with the AllowedOrigins field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedOrigins

`func (o *OAuthClientWrite) SetAllowedOrigins(v []string)`

SetAllowedOrigins sets AllowedOrigins field to given value.

### HasAllowedOrigins

`func (o *OAuthClientWrite) HasAllowedOrigins() bool`

HasAllowedOrigins returns a boolean if a field has been set.

### SetAllowedOriginsNil

`func (o *OAuthClientWrite) SetAllowedOriginsNil(b bool)`

 SetAllowedOriginsNil sets the value for AllowedOrigins to be an explicit nil

### UnsetAllowedOrigins
`func (o *OAuthClientWrite) UnsetAllowedOrigins()`

UnsetAllowedOrigins ensures that no value is present for AllowedOrigins, not even an explicit nil
### GetPostLogoutRedirectUris

`func (o *OAuthClientWrite) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *OAuthClientWrite) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *OAuthClientWrite) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *OAuthClientWrite) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### SetPostLogoutRedirectUrisNil

`func (o *OAuthClientWrite) SetPostLogoutRedirectUrisNil(b bool)`

 SetPostLogoutRedirectUrisNil sets the value for PostLogoutRedirectUris to be an explicit nil

### UnsetPostLogoutRedirectUris
`func (o *OAuthClientWrite) UnsetPostLogoutRedirectUris()`

UnsetPostLogoutRedirectUris ensures that no value is present for PostLogoutRedirectUris, not even an explicit nil
### GetFrontchannelLogoutUri

`func (o *OAuthClientWrite) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *OAuthClientWrite) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *OAuthClientWrite) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *OAuthClientWrite) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### SetFrontchannelLogoutUriNil

`func (o *OAuthClientWrite) SetFrontchannelLogoutUriNil(b bool)`

 SetFrontchannelLogoutUriNil sets the value for FrontchannelLogoutUri to be an explicit nil

### UnsetFrontchannelLogoutUri
`func (o *OAuthClientWrite) UnsetFrontchannelLogoutUri()`

UnsetFrontchannelLogoutUri ensures that no value is present for FrontchannelLogoutUri, not even an explicit nil
### GetBackchannelLogoutUri

`func (o *OAuthClientWrite) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *OAuthClientWrite) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *OAuthClientWrite) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *OAuthClientWrite) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### SetBackchannelLogoutUriNil

`func (o *OAuthClientWrite) SetBackchannelLogoutUriNil(b bool)`

 SetBackchannelLogoutUriNil sets the value for BackchannelLogoutUri to be an explicit nil

### UnsetBackchannelLogoutUri
`func (o *OAuthClientWrite) UnsetBackchannelLogoutUri()`

UnsetBackchannelLogoutUri ensures that no value is present for BackchannelLogoutUri, not even an explicit nil
### GetAccessTokenFormat

`func (o *OAuthClientWrite) GetAccessTokenFormat() string`

GetAccessTokenFormat returns the AccessTokenFormat field if non-nil, zero value otherwise.

### GetAccessTokenFormatOk

`func (o *OAuthClientWrite) GetAccessTokenFormatOk() (*string, bool)`

GetAccessTokenFormatOk returns a tuple with the AccessTokenFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessTokenFormat

`func (o *OAuthClientWrite) SetAccessTokenFormat(v string)`

SetAccessTokenFormat sets AccessTokenFormat field to given value.

### HasAccessTokenFormat

`func (o *OAuthClientWrite) HasAccessTokenFormat() bool`

HasAccessTokenFormat returns a boolean if a field has been set.

### GetTokenEndpointAuthMethod

`func (o *OAuthClientWrite) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *OAuthClientWrite) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *OAuthClientWrite) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.

### HasTokenEndpointAuthMethod

`func (o *OAuthClientWrite) HasTokenEndpointAuthMethod() bool`

HasTokenEndpointAuthMethod returns a boolean if a field has been set.

### GetJwksUri

`func (o *OAuthClientWrite) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *OAuthClientWrite) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *OAuthClientWrite) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *OAuthClientWrite) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### SetJwksUriNil

`func (o *OAuthClientWrite) SetJwksUriNil(b bool)`

 SetJwksUriNil sets the value for JwksUri to be an explicit nil

### UnsetJwksUri
`func (o *OAuthClientWrite) UnsetJwksUri()`

UnsetJwksUri ensures that no value is present for JwksUri, not even an explicit nil
### GetJwks

`func (o *OAuthClientWrite) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *OAuthClientWrite) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *OAuthClientWrite) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *OAuthClientWrite) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### SetJwksNil

`func (o *OAuthClientWrite) SetJwksNil(b bool)`

 SetJwksNil sets the value for Jwks to be an explicit nil

### UnsetJwks
`func (o *OAuthClientWrite) UnsetJwks()`

UnsetJwks ensures that no value is present for Jwks, not even an explicit nil
### GetFapiMode

`func (o *OAuthClientWrite) GetFapiMode() string`

GetFapiMode returns the FapiMode field if non-nil, zero value otherwise.

### GetFapiModeOk

`func (o *OAuthClientWrite) GetFapiModeOk() (*string, bool)`

GetFapiModeOk returns a tuple with the FapiMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFapiMode

`func (o *OAuthClientWrite) SetFapiMode(v string)`

SetFapiMode sets FapiMode field to given value.

### HasFapiMode

`func (o *OAuthClientWrite) HasFapiMode() bool`

HasFapiMode returns a boolean if a field has been set.

### GetRequirePar

`func (o *OAuthClientWrite) GetRequirePar() bool`

GetRequirePar returns the RequirePar field if non-nil, zero value otherwise.

### GetRequireParOk

`func (o *OAuthClientWrite) GetRequireParOk() (*bool, bool)`

GetRequireParOk returns a tuple with the RequirePar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePar

`func (o *OAuthClientWrite) SetRequirePar(v bool)`

SetRequirePar sets RequirePar field to given value.

### HasRequirePar

`func (o *OAuthClientWrite) HasRequirePar() bool`

HasRequirePar returns a boolean if a field has been set.

### GetDpopBoundAccessTokens

`func (o *OAuthClientWrite) GetDpopBoundAccessTokens() bool`

GetDpopBoundAccessTokens returns the DpopBoundAccessTokens field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensOk

`func (o *OAuthClientWrite) GetDpopBoundAccessTokensOk() (*bool, bool)`

GetDpopBoundAccessTokensOk returns a tuple with the DpopBoundAccessTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokens

`func (o *OAuthClientWrite) SetDpopBoundAccessTokens(v bool)`

SetDpopBoundAccessTokens sets DpopBoundAccessTokens field to given value.

### HasDpopBoundAccessTokens

`func (o *OAuthClientWrite) HasDpopBoundAccessTokens() bool`

HasDpopBoundAccessTokens returns a boolean if a field has been set.

### GetAttestationBasedAuthEnabled

`func (o *OAuthClientWrite) GetAttestationBasedAuthEnabled() bool`

GetAttestationBasedAuthEnabled returns the AttestationBasedAuthEnabled field if non-nil, zero value otherwise.

### GetAttestationBasedAuthEnabledOk

`func (o *OAuthClientWrite) GetAttestationBasedAuthEnabledOk() (*bool, bool)`

GetAttestationBasedAuthEnabledOk returns a tuple with the AttestationBasedAuthEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestationBasedAuthEnabled

`func (o *OAuthClientWrite) SetAttestationBasedAuthEnabled(v bool)`

SetAttestationBasedAuthEnabled sets AttestationBasedAuthEnabled field to given value.

### HasAttestationBasedAuthEnabled

`func (o *OAuthClientWrite) HasAttestationBasedAuthEnabled() bool`

HasAttestationBasedAuthEnabled returns a boolean if a field has been set.

### GetAttesterIssuer

`func (o *OAuthClientWrite) GetAttesterIssuer() string`

GetAttesterIssuer returns the AttesterIssuer field if non-nil, zero value otherwise.

### GetAttesterIssuerOk

`func (o *OAuthClientWrite) GetAttesterIssuerOk() (*string, bool)`

GetAttesterIssuerOk returns a tuple with the AttesterIssuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterIssuer

`func (o *OAuthClientWrite) SetAttesterIssuer(v string)`

SetAttesterIssuer sets AttesterIssuer field to given value.

### HasAttesterIssuer

`func (o *OAuthClientWrite) HasAttesterIssuer() bool`

HasAttesterIssuer returns a boolean if a field has been set.

### SetAttesterIssuerNil

`func (o *OAuthClientWrite) SetAttesterIssuerNil(b bool)`

 SetAttesterIssuerNil sets the value for AttesterIssuer to be an explicit nil

### UnsetAttesterIssuer
`func (o *OAuthClientWrite) UnsetAttesterIssuer()`

UnsetAttesterIssuer ensures that no value is present for AttesterIssuer, not even an explicit nil
### GetAttesterJwksUri

`func (o *OAuthClientWrite) GetAttesterJwksUri() string`

GetAttesterJwksUri returns the AttesterJwksUri field if non-nil, zero value otherwise.

### GetAttesterJwksUriOk

`func (o *OAuthClientWrite) GetAttesterJwksUriOk() (*string, bool)`

GetAttesterJwksUriOk returns a tuple with the AttesterJwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterJwksUri

`func (o *OAuthClientWrite) SetAttesterJwksUri(v string)`

SetAttesterJwksUri sets AttesterJwksUri field to given value.

### HasAttesterJwksUri

`func (o *OAuthClientWrite) HasAttesterJwksUri() bool`

HasAttesterJwksUri returns a boolean if a field has been set.

### SetAttesterJwksUriNil

`func (o *OAuthClientWrite) SetAttesterJwksUriNil(b bool)`

 SetAttesterJwksUriNil sets the value for AttesterJwksUri to be an explicit nil

### UnsetAttesterJwksUri
`func (o *OAuthClientWrite) UnsetAttesterJwksUri()`

UnsetAttesterJwksUri ensures that no value is present for AttesterJwksUri, not even an explicit nil
### GetTokenExchangeEnabled

`func (o *OAuthClientWrite) GetTokenExchangeEnabled() bool`

GetTokenExchangeEnabled returns the TokenExchangeEnabled field if non-nil, zero value otherwise.

### GetTokenExchangeEnabledOk

`func (o *OAuthClientWrite) GetTokenExchangeEnabledOk() (*bool, bool)`

GetTokenExchangeEnabledOk returns a tuple with the TokenExchangeEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenExchangeEnabled

`func (o *OAuthClientWrite) SetTokenExchangeEnabled(v bool)`

SetTokenExchangeEnabled sets TokenExchangeEnabled field to given value.

### HasTokenExchangeEnabled

`func (o *OAuthClientWrite) HasTokenExchangeEnabled() bool`

HasTokenExchangeEnabled returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


