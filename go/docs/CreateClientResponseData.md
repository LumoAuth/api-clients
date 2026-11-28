# CreateClientResponseData

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
**Secret** | Pointer to **string** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional] 
**Note** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateClientResponseData

`func NewCreateClientResponseData(id int32, clientId string, name string, isConfidential bool, isPublic bool, isActive bool, requiresPkce bool, createdAt time.Time, ) *CreateClientResponseData`

NewCreateClientResponseData instantiates a new CreateClientResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateClientResponseDataWithDefaults

`func NewCreateClientResponseDataWithDefaults() *CreateClientResponseData`

NewCreateClientResponseDataWithDefaults instantiates a new CreateClientResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *CreateClientResponseData) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CreateClientResponseData) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CreateClientResponseData) SetId(v int32)`

SetId sets Id field to given value.


### GetClientId

`func (o *CreateClientResponseData) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *CreateClientResponseData) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *CreateClientResponseData) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetName

`func (o *CreateClientResponseData) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CreateClientResponseData) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CreateClientResponseData) SetName(v string)`

SetName sets Name field to given value.


### GetIsConfidential

`func (o *CreateClientResponseData) GetIsConfidential() bool`

GetIsConfidential returns the IsConfidential field if non-nil, zero value otherwise.

### GetIsConfidentialOk

`func (o *CreateClientResponseData) GetIsConfidentialOk() (*bool, bool)`

GetIsConfidentialOk returns a tuple with the IsConfidential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsConfidential

`func (o *CreateClientResponseData) SetIsConfidential(v bool)`

SetIsConfidential sets IsConfidential field to given value.


### GetIsPublic

`func (o *CreateClientResponseData) GetIsPublic() bool`

GetIsPublic returns the IsPublic field if non-nil, zero value otherwise.

### GetIsPublicOk

`func (o *CreateClientResponseData) GetIsPublicOk() (*bool, bool)`

GetIsPublicOk returns a tuple with the IsPublic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPublic

`func (o *CreateClientResponseData) SetIsPublic(v bool)`

SetIsPublic sets IsPublic field to given value.


### GetIsActive

`func (o *CreateClientResponseData) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *CreateClientResponseData) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *CreateClientResponseData) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetRequiresPkce

`func (o *CreateClientResponseData) GetRequiresPkce() bool`

GetRequiresPkce returns the RequiresPkce field if non-nil, zero value otherwise.

### GetRequiresPkceOk

`func (o *CreateClientResponseData) GetRequiresPkceOk() (*bool, bool)`

GetRequiresPkceOk returns a tuple with the RequiresPkce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiresPkce

`func (o *CreateClientResponseData) SetRequiresPkce(v bool)`

SetRequiresPkce sets RequiresPkce field to given value.


### GetCreatedAt

`func (o *CreateClientResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *CreateClientResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *CreateClientResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRedirectUris

`func (o *CreateClientResponseData) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *CreateClientResponseData) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *CreateClientResponseData) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *CreateClientResponseData) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetScopes

`func (o *CreateClientResponseData) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *CreateClientResponseData) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *CreateClientResponseData) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *CreateClientResponseData) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetGrantTypes

`func (o *CreateClientResponseData) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *CreateClientResponseData) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *CreateClientResponseData) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *CreateClientResponseData) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetCibaEnabled

`func (o *CreateClientResponseData) GetCibaEnabled() bool`

GetCibaEnabled returns the CibaEnabled field if non-nil, zero value otherwise.

### GetCibaEnabledOk

`func (o *CreateClientResponseData) GetCibaEnabledOk() (*bool, bool)`

GetCibaEnabledOk returns a tuple with the CibaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCibaEnabled

`func (o *CreateClientResponseData) SetCibaEnabled(v bool)`

SetCibaEnabled sets CibaEnabled field to given value.

### HasCibaEnabled

`func (o *CreateClientResponseData) HasCibaEnabled() bool`

HasCibaEnabled returns a boolean if a field has been set.

### GetAllowedOrigins

`func (o *CreateClientResponseData) GetAllowedOrigins() []string`

GetAllowedOrigins returns the AllowedOrigins field if non-nil, zero value otherwise.

### GetAllowedOriginsOk

`func (o *CreateClientResponseData) GetAllowedOriginsOk() (*[]string, bool)`

GetAllowedOriginsOk returns a tuple with the AllowedOrigins field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedOrigins

`func (o *CreateClientResponseData) SetAllowedOrigins(v []string)`

SetAllowedOrigins sets AllowedOrigins field to given value.

### HasAllowedOrigins

`func (o *CreateClientResponseData) HasAllowedOrigins() bool`

HasAllowedOrigins returns a boolean if a field has been set.

### GetPostLogoutRedirectUris

`func (o *CreateClientResponseData) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *CreateClientResponseData) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *CreateClientResponseData) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *CreateClientResponseData) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### GetFrontchannelLogoutUri

`func (o *CreateClientResponseData) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *CreateClientResponseData) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *CreateClientResponseData) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *CreateClientResponseData) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### SetFrontchannelLogoutUriNil

`func (o *CreateClientResponseData) SetFrontchannelLogoutUriNil(b bool)`

 SetFrontchannelLogoutUriNil sets the value for FrontchannelLogoutUri to be an explicit nil

### UnsetFrontchannelLogoutUri
`func (o *CreateClientResponseData) UnsetFrontchannelLogoutUri()`

UnsetFrontchannelLogoutUri ensures that no value is present for FrontchannelLogoutUri, not even an explicit nil
### GetBackchannelLogoutUri

`func (o *CreateClientResponseData) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *CreateClientResponseData) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *CreateClientResponseData) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *CreateClientResponseData) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### SetBackchannelLogoutUriNil

`func (o *CreateClientResponseData) SetBackchannelLogoutUriNil(b bool)`

 SetBackchannelLogoutUriNil sets the value for BackchannelLogoutUri to be an explicit nil

### UnsetBackchannelLogoutUri
`func (o *CreateClientResponseData) UnsetBackchannelLogoutUri()`

UnsetBackchannelLogoutUri ensures that no value is present for BackchannelLogoutUri, not even an explicit nil
### GetAccessTokenFormat

`func (o *CreateClientResponseData) GetAccessTokenFormat() string`

GetAccessTokenFormat returns the AccessTokenFormat field if non-nil, zero value otherwise.

### GetAccessTokenFormatOk

`func (o *CreateClientResponseData) GetAccessTokenFormatOk() (*string, bool)`

GetAccessTokenFormatOk returns a tuple with the AccessTokenFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessTokenFormat

`func (o *CreateClientResponseData) SetAccessTokenFormat(v string)`

SetAccessTokenFormat sets AccessTokenFormat field to given value.

### HasAccessTokenFormat

`func (o *CreateClientResponseData) HasAccessTokenFormat() bool`

HasAccessTokenFormat returns a boolean if a field has been set.

### GetTokenEndpointAuthMethod

`func (o *CreateClientResponseData) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *CreateClientResponseData) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *CreateClientResponseData) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.

### HasTokenEndpointAuthMethod

`func (o *CreateClientResponseData) HasTokenEndpointAuthMethod() bool`

HasTokenEndpointAuthMethod returns a boolean if a field has been set.

### GetJwksUri

`func (o *CreateClientResponseData) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *CreateClientResponseData) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *CreateClientResponseData) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *CreateClientResponseData) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### SetJwksUriNil

`func (o *CreateClientResponseData) SetJwksUriNil(b bool)`

 SetJwksUriNil sets the value for JwksUri to be an explicit nil

### UnsetJwksUri
`func (o *CreateClientResponseData) UnsetJwksUri()`

UnsetJwksUri ensures that no value is present for JwksUri, not even an explicit nil
### GetJwks

`func (o *CreateClientResponseData) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *CreateClientResponseData) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *CreateClientResponseData) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *CreateClientResponseData) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### SetJwksNil

`func (o *CreateClientResponseData) SetJwksNil(b bool)`

 SetJwksNil sets the value for Jwks to be an explicit nil

### UnsetJwks
`func (o *CreateClientResponseData) UnsetJwks()`

UnsetJwks ensures that no value is present for Jwks, not even an explicit nil
### GetFapiMode

`func (o *CreateClientResponseData) GetFapiMode() string`

GetFapiMode returns the FapiMode field if non-nil, zero value otherwise.

### GetFapiModeOk

`func (o *CreateClientResponseData) GetFapiModeOk() (*string, bool)`

GetFapiModeOk returns a tuple with the FapiMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFapiMode

`func (o *CreateClientResponseData) SetFapiMode(v string)`

SetFapiMode sets FapiMode field to given value.

### HasFapiMode

`func (o *CreateClientResponseData) HasFapiMode() bool`

HasFapiMode returns a boolean if a field has been set.

### GetRequirePar

`func (o *CreateClientResponseData) GetRequirePar() bool`

GetRequirePar returns the RequirePar field if non-nil, zero value otherwise.

### GetRequireParOk

`func (o *CreateClientResponseData) GetRequireParOk() (*bool, bool)`

GetRequireParOk returns a tuple with the RequirePar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirePar

`func (o *CreateClientResponseData) SetRequirePar(v bool)`

SetRequirePar sets RequirePar field to given value.

### HasRequirePar

`func (o *CreateClientResponseData) HasRequirePar() bool`

HasRequirePar returns a boolean if a field has been set.

### GetDpopBoundAccessTokens

`func (o *CreateClientResponseData) GetDpopBoundAccessTokens() bool`

GetDpopBoundAccessTokens returns the DpopBoundAccessTokens field if non-nil, zero value otherwise.

### GetDpopBoundAccessTokensOk

`func (o *CreateClientResponseData) GetDpopBoundAccessTokensOk() (*bool, bool)`

GetDpopBoundAccessTokensOk returns a tuple with the DpopBoundAccessTokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopBoundAccessTokens

`func (o *CreateClientResponseData) SetDpopBoundAccessTokens(v bool)`

SetDpopBoundAccessTokens sets DpopBoundAccessTokens field to given value.

### HasDpopBoundAccessTokens

`func (o *CreateClientResponseData) HasDpopBoundAccessTokens() bool`

HasDpopBoundAccessTokens returns a boolean if a field has been set.

### GetAttestationBasedAuthEnabled

`func (o *CreateClientResponseData) GetAttestationBasedAuthEnabled() bool`

GetAttestationBasedAuthEnabled returns the AttestationBasedAuthEnabled field if non-nil, zero value otherwise.

### GetAttestationBasedAuthEnabledOk

`func (o *CreateClientResponseData) GetAttestationBasedAuthEnabledOk() (*bool, bool)`

GetAttestationBasedAuthEnabledOk returns a tuple with the AttestationBasedAuthEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestationBasedAuthEnabled

`func (o *CreateClientResponseData) SetAttestationBasedAuthEnabled(v bool)`

SetAttestationBasedAuthEnabled sets AttestationBasedAuthEnabled field to given value.

### HasAttestationBasedAuthEnabled

`func (o *CreateClientResponseData) HasAttestationBasedAuthEnabled() bool`

HasAttestationBasedAuthEnabled returns a boolean if a field has been set.

### GetAttesterIssuer

`func (o *CreateClientResponseData) GetAttesterIssuer() string`

GetAttesterIssuer returns the AttesterIssuer field if non-nil, zero value otherwise.

### GetAttesterIssuerOk

`func (o *CreateClientResponseData) GetAttesterIssuerOk() (*string, bool)`

GetAttesterIssuerOk returns a tuple with the AttesterIssuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterIssuer

`func (o *CreateClientResponseData) SetAttesterIssuer(v string)`

SetAttesterIssuer sets AttesterIssuer field to given value.

### HasAttesterIssuer

`func (o *CreateClientResponseData) HasAttesterIssuer() bool`

HasAttesterIssuer returns a boolean if a field has been set.

### SetAttesterIssuerNil

`func (o *CreateClientResponseData) SetAttesterIssuerNil(b bool)`

 SetAttesterIssuerNil sets the value for AttesterIssuer to be an explicit nil

### UnsetAttesterIssuer
`func (o *CreateClientResponseData) UnsetAttesterIssuer()`

UnsetAttesterIssuer ensures that no value is present for AttesterIssuer, not even an explicit nil
### GetAttesterJwksUri

`func (o *CreateClientResponseData) GetAttesterJwksUri() string`

GetAttesterJwksUri returns the AttesterJwksUri field if non-nil, zero value otherwise.

### GetAttesterJwksUriOk

`func (o *CreateClientResponseData) GetAttesterJwksUriOk() (*string, bool)`

GetAttesterJwksUriOk returns a tuple with the AttesterJwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttesterJwksUri

`func (o *CreateClientResponseData) SetAttesterJwksUri(v string)`

SetAttesterJwksUri sets AttesterJwksUri field to given value.

### HasAttesterJwksUri

`func (o *CreateClientResponseData) HasAttesterJwksUri() bool`

HasAttesterJwksUri returns a boolean if a field has been set.

### SetAttesterJwksUriNil

`func (o *CreateClientResponseData) SetAttesterJwksUriNil(b bool)`

 SetAttesterJwksUriNil sets the value for AttesterJwksUri to be an explicit nil

### UnsetAttesterJwksUri
`func (o *CreateClientResponseData) UnsetAttesterJwksUri()`

UnsetAttesterJwksUri ensures that no value is present for AttesterJwksUri, not even an explicit nil
### GetTokenExchangeEnabled

`func (o *CreateClientResponseData) GetTokenExchangeEnabled() bool`

GetTokenExchangeEnabled returns the TokenExchangeEnabled field if non-nil, zero value otherwise.

### GetTokenExchangeEnabledOk

`func (o *CreateClientResponseData) GetTokenExchangeEnabledOk() (*bool, bool)`

GetTokenExchangeEnabledOk returns a tuple with the TokenExchangeEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenExchangeEnabled

`func (o *CreateClientResponseData) SetTokenExchangeEnabled(v bool)`

SetTokenExchangeEnabled sets TokenExchangeEnabled field to given value.

### HasTokenExchangeEnabled

`func (o *CreateClientResponseData) HasTokenExchangeEnabled() bool`

HasTokenExchangeEnabled returns a boolean if a field has been set.

### GetSecret

`func (o *CreateClientResponseData) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *CreateClientResponseData) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *CreateClientResponseData) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *CreateClientResponseData) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetNote

`func (o *CreateClientResponseData) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *CreateClientResponseData) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *CreateClientResponseData) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *CreateClientResponseData) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


