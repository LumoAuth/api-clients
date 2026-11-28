# OAuthClient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**ClientId** | **string** |  | 
**Name** | **string** |  | 
**IsConfidential** | **bool** |  | 
**IsPublic** | **bool** |  | 
**IsActive** | **bool** |  | 
**RequiresPkce** | **bool** |  | 
**CreatedAt** | **time.Time** |  | 
**RedirectUris** | Pointer to **[]string** | Detailed responses only | [optional] 
**Scopes** | Pointer to **[]string** | Detailed responses only | [optional] 
**GrantTypes** | Pointer to **[]string** | Detailed responses only | [optional] 
**CibaEnabled** | Pointer to **bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] 
**AllowedOrigins** | Pointer to **[]string** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] 
**PostLogoutRedirectUris** | Pointer to **[]string** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] 
**FrontchannelLogoutUri** | Pointer to **NullableString** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] 
**BackchannelLogoutUri** | Pointer to **NullableString** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] 
**AccessTokenFormat** | Pointer to **string** | Detailed responses only. Format of the access tokens that the client receives. | [optional] 
**TokenEndpointAuthMethod** | Pointer to **string** | Detailed responses only. | [optional] 
**JwksUri** | Pointer to **NullableString** | Detailed responses only. https address of the client&#39;s public keys. | [optional] 
**Jwks** | Pointer to **map[string]interface{}** | Detailed responses only. The client&#39;s public keys, inline. | [optional] 
**FapiMode** | Pointer to **string** | Detailed responses only. FAPI 2.0 security profile. | [optional] 
**RequirePar** | Pointer to **bool** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] 
**DpopBoundAccessTokens** | Pointer to **bool** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] 
**AttestationBasedAuthEnabled** | Pointer to **bool** | Detailed responses only. | [optional] 
**AttesterIssuer** | Pointer to **NullableString** | Detailed responses only. | [optional] 
**AttesterJwksUri** | Pointer to **NullableString** | Detailed responses only. | [optional] 
**TokenExchangeEnabled** | Pointer to **bool** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] 

## Methods

### NewOAuthClient

`func NewOAuthClient(id int32, clientId string, name string, isConfidential bool, isPublic bool, isActive bool, requiresPkce bool, createdAt time.Time, ) *OAuthClient`

NewOAuthClient instantiates a new OAuthClient object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthClientWithDefaults

`func NewOAuthClientWithDefaults() *OAuthClient`

NewOAuthClientWithDefaults instantiates a new OAuthClient object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OAuthClient) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OAuthClient) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OAuthClient) SetId(v int32)`

SetId sets Id field to given value.


### GetClientId

`func (o *OAuthClient) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *OAuthClient) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *OAuthClient) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetName

`func (o *OAuthClient) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *OAuthClient) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *OAuthClient) SetName(v string)`

SetName sets Name field to given value.


### GetIsConfidential

`func (o *OAuthClient) GetIsConfidential() bool`

GetIsConfidential returns the IsConfidential field if non-nil, zero value otherwise.

### GetIsConfidentialOk

`func (o *OAuthClient) GetIsConfidentialOk() (*bool, bool)`

GetIsConfidentialOk returns a tuple with the IsConfidential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsConfidential

`func (o *OAuthClient) SetIsConfidential(v bool)`

SetIsConfidential sets IsConfidential field to given value.


### GetIsPublic

`func (o *OAuthClient) GetIsPublic() bool`

GetIsPublic returns the IsPublic field if non-nil, zero value otherwise.

### GetIsPublicOk

`func (o *OAuthClient) GetIsPublicOk() (*bool, bool)`

GetIsPublicOk returns a tuple with the IsPublic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPublic

`func (o *OAuthClient) SetIsPublic(v bool)`

SetIsPublic sets IsPublic field to given value.


### GetIsActive

`func (o *OAuthClient) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *OAuthClient) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *OAuthClient) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetRequiresPkce

`func (o *OAuthClient) GetRequiresPkce() bool`

GetRequiresPkce returns the RequiresPkce field if non-nil, zero value otherwise.

### GetRequiresPkceOk

`func (o *OAuthClient) GetRequiresPkceOk() (*bool, bool)`

GetRequiresPkceOk returns a tuple with the RequiresPkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiresPkce

`func (o *OAuthClient) SetRequiresPkce(v bool)`

SetRequiresPkce sets RequiresPkce field to given value.


### GetCreatedAt

`func (o *OAuthClient) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OAuthClient) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OAuthClient) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRedirectUris

`func (o *OAuthClient) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *OAuthClient) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *OAuthClient) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *OAuthClient) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetScopes

`func (o *OAuthClient) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *OAuthClient) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *OAuthClient) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *OAuthClient) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetGrantTypes

`func (o *OAuthClient) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *OAuthClient) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *OAuthClient) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *OAuthClient) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetCibaEnabled

`func (o *OAuthClient) GetCibaEnabled() bool`

GetCibaEnabled returns the CibaEnabled field if non-nil, zero value otherwise.

### GetCibaEnabledOk

`func (o *OAuthClient) GetCibaEnabledOk() (*bool, bool)`

GetCibaEnabledOk returns a tuple with the CibaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCibaEnabled

`func (o *OAuthClient) SetCibaEnabled(v bool)`

SetCibaEnabled sets CibaEnabled field to given value.

### HasCibaEnabled

`func (o *OAuthClient) HasCibaEnabled() bool`

HasCibaEnabled returns a boolean if a field has been set.

### GetAllowedOrigins

`func (o *OAuthClient) GetAllowedOrigins() []string`

GetAllowedOrigins returns the AllowedOrigins field if non-nil, zero value otherwise.

### GetAllowedOriginsOk

`func (o *OAuthClient) GetAllowedOriginsOk() (*[]string, bool)`

GetAllowedOriginsOk returns a tuple with the AllowedOrigins field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedOrigins

`func (o *OAuthClient) SetAllowedOrigins(v []string)`

SetAllowedOrigins sets AllowedOrigins field to given value.

### HasAllowedOrigins

`func (o *OAuthClient) HasAllowedOrigins() bool`

HasAllowedOrigins returns a boolean if a field has been set.

### GetPostLogoutRedirectUris

`func (o *OAuthClient) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *OAuthClient) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *OAuthClient) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *OAuthClient) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### GetFrontchannelLogoutUri

`func (o *OAuthClient) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *OAuthClient) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *OAuthClient) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *OAuthClient) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### SetFrontchannelLogoutUriNil

`func (o *OAuthClient) SetFrontchannelLogoutUriNil(b bool)`

 SetFrontchannelLogoutUriNil sets the value for FrontchannelLogoutUri to be an explicit nil

### UnsetFrontchannelLogoutUri
`func (o *OAuthClient) UnsetFrontchannelLogoutUri()`

UnsetFrontchannelLogoutUri ensures that no value is present for FrontchannelLogoutUri, not even an explicit nil
### GetBackchannelLogoutUri

`func (o *OAuthClient) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *OAuthClient) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *OAuthClient) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *OAuthClient) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### SetBackchannelLogoutUriNil

`func (o *OAuthClient) SetBackchannelLogoutUriNil(b bool)`

 SetBackchannelLogoutUriNil sets the value for BackchannelLogoutUri to be an explicit nil

### UnsetBackchannelLogoutUri
`func (o *OAuthClient) UnsetBackchannelLogoutUri()`

UnsetBackchannelLogoutUri ensures that no value is present for BackchannelLogoutUri, not even an explicit nil
### GetAccessTokenFormat

`func (o *OAuthClient) GetAccessTokenFormat() string`

GetAccessTokenFormat returns the AccessTokenFormat field if non-nil, zero value otherwise.

### GetAccessTokenFormatOk

`func (o *OAuthClient) GetAccessTokenFormatOk() (*string, bool)`

GetAccessTokenFormatOk returns a tuple with the AccessTokenFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessTokenFormat

`func (o *OAuthClient) SetAccessTokenFormat(v string)`

SetAccessTokenFormat sets AccessTokenFormat field to given value.

### HasAccessTokenFormat

`func (o *OAuthClient) HasAccessTokenFormat() bool`

HasAccessTokenFormat returns a boolean if a field has been set.

### GetTokenEndpointAuthMethod

`func (o *OAuthClient) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *OAuthClient) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *OAuthClient) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.

### HasTokenEndpointAuthMethod

`func (o *OAuthClient) HasTokenEndpointAuthMethod() bool`

HasTokenEndpointAuthMethod returns a boolean if a field has been set.

### GetJwksUri

`func (o *OAuthClient) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *OAuthClient) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *OAuthClient) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *OAuthClient) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### SetJwksUriNil

`func (o *OAuthClient) SetJwksUriNil(b bool)`

 SetJwksUriNil sets the value for JwksUri to be an explicit nil

### UnsetJwksUri
`func (o *OAuthClient) UnsetJwksUri()`

UnsetJwksUri ensures that no value is present for JwksUri, not even an explicit nil
### GetJwks

`func (o *OAuthClient) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *OAuthClient) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *OAuthClient) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *OAuthClient) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### SetJwksNil

`func (o *OAuthClient) SetJwksNil(b bool)`

 SetJwksNil sets the value for Jwks to be an explicit nil

### UnsetJwks
`func (o *OAuthClient) UnsetJwks()`

UnsetJwks ensures that no value is present for Jwks, not even an explicit nil
### GetFapiMode

`func (o *OAuthClient) GetFapiMode() string`

GetFapiMode returns the FapiMode field if non-nil, zero value otherwise.

### GetFapiModeOk

`func (o *OAuthClient) GetFapiModeOk() (*string, bool)`

GetFapiModeOk returns a tuple with the FapiMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFapiMode

`func (o *OAuthClient) SetFapiMode(v string)`

SetFapiMode sets FapiMode field to given value.

### HasFapiMode

`func (o *OAuthClient) HasFapiMode() bool`

HasFapiMode returns a boolean if a field has been set.

### GetRequirePar

`func (o *OAuthClient) GetRequirePar() bool`

GetRequirePar returns the RequirePar field if non-nil, zero value otherwise.

### GetRequireParOk

`func (o *OAuthClient) GetRequireParOk() (*bool, bool)`

GetRequireParOk returns a tuple with the RequirePar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePar

`func (o *OAuthClient) SetRequirePar(v bool)`

SetRequirePar sets RequirePar field to given value.

### HasRequirePar

`func (o *OAuthClient) HasRequirePar() bool`

HasRequirePar returns a boolean if a field has been set.

### GetDpopBoundAccessTokens

`func (o *OAuthClient) GetDpopBoundAccessTokens() bool`

GetDpopBoundAccessTokens returns the DpopBoundAccessTokens field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensOk

`func (o *OAuthClient) GetDpopBoundAccessTokensOk() (*bool, bool)`

GetDpopBoundAccessTokensOk returns a tuple with the DpopBoundAccessTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokens

`func (o *OAuthClient) SetDpopBoundAccessTokens(v bool)`

SetDpopBoundAccessTokens sets DpopBoundAccessTokens field to given value.

### HasDpopBoundAccessTokens

`func (o *OAuthClient) HasDpopBoundAccessTokens() bool`

HasDpopBoundAccessTokens returns a boolean if a field has been set.

### GetAttestationBasedAuthEnabled

`func (o *OAuthClient) GetAttestationBasedAuthEnabled() bool`

GetAttestationBasedAuthEnabled returns the AttestationBasedAuthEnabled field if non-nil, zero value otherwise.

### GetAttestationBasedAuthEnabledOk

`func (o *OAuthClient) GetAttestationBasedAuthEnabledOk() (*bool, bool)`

GetAttestationBasedAuthEnabledOk returns a tuple with the AttestationBasedAuthEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestationBasedAuthEnabled

`func (o *OAuthClient) SetAttestationBasedAuthEnabled(v bool)`

SetAttestationBasedAuthEnabled sets AttestationBasedAuthEnabled field to given value.

### HasAttestationBasedAuthEnabled

`func (o *OAuthClient) HasAttestationBasedAuthEnabled() bool`

HasAttestationBasedAuthEnabled returns a boolean if a field has been set.

### GetAttesterIssuer

`func (o *OAuthClient) GetAttesterIssuer() string`

GetAttesterIssuer returns the AttesterIssuer field if non-nil, zero value otherwise.

### GetAttesterIssuerOk

`func (o *OAuthClient) GetAttesterIssuerOk() (*string, bool)`

GetAttesterIssuerOk returns a tuple with the AttesterIssuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterIssuer

`func (o *OAuthClient) SetAttesterIssuer(v string)`

SetAttesterIssuer sets AttesterIssuer field to given value.

### HasAttesterIssuer

`func (o *OAuthClient) HasAttesterIssuer() bool`

HasAttesterIssuer returns a boolean if a field has been set.

### SetAttesterIssuerNil

`func (o *OAuthClient) SetAttesterIssuerNil(b bool)`

 SetAttesterIssuerNil sets the value for AttesterIssuer to be an explicit nil

### UnsetAttesterIssuer
`func (o *OAuthClient) UnsetAttesterIssuer()`

UnsetAttesterIssuer ensures that no value is present for AttesterIssuer, not even an explicit nil
### GetAttesterJwksUri

`func (o *OAuthClient) GetAttesterJwksUri() string`

GetAttesterJwksUri returns the AttesterJwksUri field if non-nil, zero value otherwise.

### GetAttesterJwksUriOk

`func (o *OAuthClient) GetAttesterJwksUriOk() (*string, bool)`

GetAttesterJwksUriOk returns a tuple with the AttesterJwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterJwksUri

`func (o *OAuthClient) SetAttesterJwksUri(v string)`

SetAttesterJwksUri sets AttesterJwksUri field to given value.

### HasAttesterJwksUri

`func (o *OAuthClient) HasAttesterJwksUri() bool`

HasAttesterJwksUri returns a boolean if a field has been set.

### SetAttesterJwksUriNil

`func (o *OAuthClient) SetAttesterJwksUriNil(b bool)`

 SetAttesterJwksUriNil sets the value for AttesterJwksUri to be an explicit nil

### UnsetAttesterJwksUri
`func (o *OAuthClient) UnsetAttesterJwksUri()`

UnsetAttesterJwksUri ensures that no value is present for AttesterJwksUri, not even an explicit nil
### GetTokenExchangeEnabled

`func (o *OAuthClient) GetTokenExchangeEnabled() bool`

GetTokenExchangeEnabled returns the TokenExchangeEnabled field if non-nil, zero value otherwise.

### GetTokenExchangeEnabledOk

`func (o *OAuthClient) GetTokenExchangeEnabledOk() (*bool, bool)`

GetTokenExchangeEnabledOk returns a tuple with the TokenExchangeEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenExchangeEnabled

`func (o *OAuthClient) SetTokenExchangeEnabled(v bool)`

SetTokenExchangeEnabled sets TokenExchangeEnabled field to given value.

### HasTokenExchangeEnabled

`func (o *OAuthClient) HasTokenExchangeEnabled() bool`

HasTokenExchangeEnabled returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


