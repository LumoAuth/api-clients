# RegisterClientResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **string** |  | 
**ClientSecret** | Pointer to **string** | Plaintext secret, shown once (confidential clients only). | [optional] 
**ClientSecretExpiresAt** | Pointer to **int32** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] 
**ClientIdIssuedAt** | **int32** | Unix seconds. | 
**RegistrationAccessToken** | Pointer to **string** | Bearer token for the client configuration endpoint, shown once. | [optional] 
**RegistrationClientUri** | Pointer to **string** |  | [optional] 
**ClientName** | **NullableString** |  | 
**RedirectUris** | **[]string** |  | 
**ResponseTypes** | **[]string** |  | 
**GrantTypes** | **[]string** |  | 
**ApplicationType** | **string** |  | 
**TokenEndpointAuthMethod** | **string** |  | 
**Contacts** | Pointer to **[]string** |  | [optional] 
**ClientUri** | Pointer to **string** |  | [optional] 
**LogoUri** | Pointer to **string** |  | [optional] 
**PolicyUri** | Pointer to **string** |  | [optional] 
**TosUri** | Pointer to **string** |  | [optional] 
**SectorIdentifierUri** | Pointer to **string** |  | [optional] 
**SubjectType** | Pointer to **string** | Only when not \&quot;public\&quot;. | [optional] 
**JwksUri** | Pointer to **string** |  | [optional] 
**Jwks** | Pointer to **map[string]interface{}** |  | [optional] 
**PostLogoutRedirectUris** | Pointer to **[]string** |  | [optional] 
**InitiateLoginUri** | Pointer to **string** |  | [optional] 
**RequestUris** | Pointer to **[]string** |  | [optional] 
**Scope** | Pointer to **string** | Space-separated registered scopes. | [optional] 
**IdTokenSignedResponseAlg** | Pointer to **string** | Only when not RS256. | [optional] 
**UserinfoSignedResponseAlg** | Pointer to **string** |  | [optional] 
**RequestObjectSigningAlg** | Pointer to **string** |  | [optional] 
**TokenEndpointAuthSigningAlg** | Pointer to **string** |  | [optional] 
**DefaultMaxAge** | Pointer to **int32** |  | [optional] 
**RequireAuthTime** | Pointer to **bool** | Only when true. | [optional] 
**DefaultAcrValues** | Pointer to **[]string** |  | [optional] 
**FrontchannelLogoutUri** | Pointer to **string** |  | [optional] 
**FrontchannelLogoutSessionRequired** | Pointer to **bool** | Only when true. | [optional] 
**BackchannelLogoutUri** | Pointer to **string** |  | [optional] 
**BackchannelLogoutSessionRequired** | Pointer to **bool** | Only when true. | [optional] 
**AudienceUris** | Pointer to **[]string** | RFC 8707 resource indicators the client may request. | [optional] 

## Methods

### NewRegisterClientResponse

`func NewRegisterClientResponse(clientId string, clientIdIssuedAt int32, clientName NullableString, redirectUris []string, responseTypes []string, grantTypes []string, applicationType string, tokenEndpointAuthMethod string, ) *RegisterClientResponse`

NewRegisterClientResponse instantiates a new RegisterClientResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRegisterClientResponseWithDefaults

`func NewRegisterClientResponseWithDefaults() *RegisterClientResponse`

NewRegisterClientResponseWithDefaults instantiates a new RegisterClientResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientId

`func (o *RegisterClientResponse) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *RegisterClientResponse) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *RegisterClientResponse) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetClientSecret

`func (o *RegisterClientResponse) GetClientSecret() string`

GetClientSecret returns the ClientSecret field if non-nil, zero value otherwise.

### GetClientSecretOk

`func (o *RegisterClientResponse) GetClientSecretOk() (*string, bool)`

GetClientSecretOk returns a tuple with the ClientSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientSecret

`func (o *RegisterClientResponse) SetClientSecret(v string)`

SetClientSecret sets ClientSecret field to given value.

### HasClientSecret

`func (o *RegisterClientResponse) HasClientSecret() bool`

HasClientSecret returns a boolean if a field has been set.

### GetClientSecretExpiresAt

`func (o *RegisterClientResponse) GetClientSecretExpiresAt() int32`

GetClientSecretExpiresAt returns the ClientSecretExpiresAt field if non-nil, zero value otherwise.

### GetClientSecretExpiresAtOk

`func (o *RegisterClientResponse) GetClientSecretExpiresAtOk() (*int32, bool)`

GetClientSecretExpiresAtOk returns a tuple with the ClientSecretExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientSecretExpiresAt

`func (o *RegisterClientResponse) SetClientSecretExpiresAt(v int32)`

SetClientSecretExpiresAt sets ClientSecretExpiresAt field to given value.

### HasClientSecretExpiresAt

`func (o *RegisterClientResponse) HasClientSecretExpiresAt() bool`

HasClientSecretExpiresAt returns a boolean if a field has been set.

### GetClientIdIssuedAt

`func (o *RegisterClientResponse) GetClientIdIssuedAt() int32`

GetClientIdIssuedAt returns the ClientIdIssuedAt field if non-nil, zero value otherwise.

### GetClientIdIssuedAtOk

`func (o *RegisterClientResponse) GetClientIdIssuedAtOk() (*int32, bool)`

GetClientIdIssuedAtOk returns a tuple with the ClientIdIssuedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientIdIssuedAt

`func (o *RegisterClientResponse) SetClientIdIssuedAt(v int32)`

SetClientIdIssuedAt sets ClientIdIssuedAt field to given value.


### GetRegistrationAccessToken

`func (o *RegisterClientResponse) GetRegistrationAccessToken() string`

GetRegistrationAccessToken returns the RegistrationAccessToken field if non-nil, zero value otherwise.

### GetRegistrationAccessTokenOk

`func (o *RegisterClientResponse) GetRegistrationAccessTokenOk() (*string, bool)`

GetRegistrationAccessTokenOk returns a tuple with the RegistrationAccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationAccessToken

`func (o *RegisterClientResponse) SetRegistrationAccessToken(v string)`

SetRegistrationAccessToken sets RegistrationAccessToken field to given value.

### HasRegistrationAccessToken

`func (o *RegisterClientResponse) HasRegistrationAccessToken() bool`

HasRegistrationAccessToken returns a boolean if a field has been set.

### GetRegistrationClientUri

`func (o *RegisterClientResponse) GetRegistrationClientUri() string`

GetRegistrationClientUri returns the RegistrationClientUri field if non-nil, zero value otherwise.

### GetRegistrationClientUriOk

`func (o *RegisterClientResponse) GetRegistrationClientUriOk() (*string, bool)`

GetRegistrationClientUriOk returns a tuple with the RegistrationClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationClientUri

`func (o *RegisterClientResponse) SetRegistrationClientUri(v string)`

SetRegistrationClientUri sets RegistrationClientUri field to given value.

### HasRegistrationClientUri

`func (o *RegisterClientResponse) HasRegistrationClientUri() bool`

HasRegistrationClientUri returns a boolean if a field has been set.

### GetClientName

`func (o *RegisterClientResponse) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *RegisterClientResponse) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *RegisterClientResponse) SetClientName(v string)`

SetClientName sets ClientName field to given value.


### SetClientNameNil

`func (o *RegisterClientResponse) SetClientNameNil(b bool)`

 SetClientNameNil sets the value for ClientName to be an explicit nil

### UnsetClientName
`func (o *RegisterClientResponse) UnsetClientName()`

UnsetClientName ensures that no value is present for ClientName, not even an explicit nil
### GetRedirectUris

`func (o *RegisterClientResponse) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *RegisterClientResponse) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *RegisterClientResponse) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.


### GetResponseTypes

`func (o *RegisterClientResponse) GetResponseTypes() []string`

GetResponseTypes returns the ResponseTypes field if non-nil, zero value otherwise.

### GetResponseTypesOk

`func (o *RegisterClientResponse) GetResponseTypesOk() (*[]string, bool)`

GetResponseTypesOk returns a tuple with the ResponseTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseTypes

`func (o *RegisterClientResponse) SetResponseTypes(v []string)`

SetResponseTypes sets ResponseTypes field to given value.


### GetGrantTypes

`func (o *RegisterClientResponse) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *RegisterClientResponse) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *RegisterClientResponse) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.


### GetApplicationType

`func (o *RegisterClientResponse) GetApplicationType() string`

GetApplicationType returns the ApplicationType field if non-nil, zero value otherwise.

### GetApplicationTypeOk

`func (o *RegisterClientResponse) GetApplicationTypeOk() (*string, bool)`

GetApplicationTypeOk returns a tuple with the ApplicationType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplicationType

`func (o *RegisterClientResponse) SetApplicationType(v string)`

SetApplicationType sets ApplicationType field to given value.


### GetTokenEndpointAuthMethod

`func (o *RegisterClientResponse) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *RegisterClientResponse) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *RegisterClientResponse) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.


### GetContacts

`func (o *RegisterClientResponse) GetContacts() []string`

GetContacts returns the Contacts field if non-nil, zero value otherwise.

### GetContactsOk

`func (o *RegisterClientResponse) GetContactsOk() (*[]string, bool)`

GetContactsOk returns a tuple with the Contacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContacts

`func (o *RegisterClientResponse) SetContacts(v []string)`

SetContacts sets Contacts field to given value.

### HasContacts

`func (o *RegisterClientResponse) HasContacts() bool`

HasContacts returns a boolean if a field has been set.

### GetClientUri

`func (o *RegisterClientResponse) GetClientUri() string`

GetClientUri returns the ClientUri field if non-nil, zero value otherwise.

### GetClientUriOk

`func (o *RegisterClientResponse) GetClientUriOk() (*string, bool)`

GetClientUriOk returns a tuple with the ClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientUri

`func (o *RegisterClientResponse) SetClientUri(v string)`

SetClientUri sets ClientUri field to given value.

### HasClientUri

`func (o *RegisterClientResponse) HasClientUri() bool`

HasClientUri returns a boolean if a field has been set.

### GetLogoUri

`func (o *RegisterClientResponse) GetLogoUri() string`

GetLogoUri returns the LogoUri field if non-nil, zero value otherwise.

### GetLogoUriOk

`func (o *RegisterClientResponse) GetLogoUriOk() (*string, bool)`

GetLogoUriOk returns a tuple with the LogoUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUri

`func (o *RegisterClientResponse) SetLogoUri(v string)`

SetLogoUri sets LogoUri field to given value.

### HasLogoUri

`func (o *RegisterClientResponse) HasLogoUri() bool`

HasLogoUri returns a boolean if a field has been set.

### GetPolicyUri

`func (o *RegisterClientResponse) GetPolicyUri() string`

GetPolicyUri returns the PolicyUri field if non-nil, zero value otherwise.

### GetPolicyUriOk

`func (o *RegisterClientResponse) GetPolicyUriOk() (*string, bool)`

GetPolicyUriOk returns a tuple with the PolicyUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPolicyUri

`func (o *RegisterClientResponse) SetPolicyUri(v string)`

SetPolicyUri sets PolicyUri field to given value.

### HasPolicyUri

`func (o *RegisterClientResponse) HasPolicyUri() bool`

HasPolicyUri returns a boolean if a field has been set.

### GetTosUri

`func (o *RegisterClientResponse) GetTosUri() string`

GetTosUri returns the TosUri field if non-nil, zero value otherwise.

### GetTosUriOk

`func (o *RegisterClientResponse) GetTosUriOk() (*string, bool)`

GetTosUriOk returns a tuple with the TosUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTosUri

`func (o *RegisterClientResponse) SetTosUri(v string)`

SetTosUri sets TosUri field to given value.

### HasTosUri

`func (o *RegisterClientResponse) HasTosUri() bool`

HasTosUri returns a boolean if a field has been set.

### GetSectorIdentifierUri

`func (o *RegisterClientResponse) GetSectorIdentifierUri() string`

GetSectorIdentifierUri returns the SectorIdentifierUri field if non-nil, zero value otherwise.

### GetSectorIdentifierUriOk

`func (o *RegisterClientResponse) GetSectorIdentifierUriOk() (*string, bool)`

GetSectorIdentifierUriOk returns a tuple with the SectorIdentifierUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSectorIdentifierUri

`func (o *RegisterClientResponse) SetSectorIdentifierUri(v string)`

SetSectorIdentifierUri sets SectorIdentifierUri field to given value.

### HasSectorIdentifierUri

`func (o *RegisterClientResponse) HasSectorIdentifierUri() bool`

HasSectorIdentifierUri returns a boolean if a field has been set.

### GetSubjectType

`func (o *RegisterClientResponse) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *RegisterClientResponse) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *RegisterClientResponse) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *RegisterClientResponse) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetJwksUri

`func (o *RegisterClientResponse) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *RegisterClientResponse) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *RegisterClientResponse) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *RegisterClientResponse) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetJwks

`func (o *RegisterClientResponse) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *RegisterClientResponse) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *RegisterClientResponse) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *RegisterClientResponse) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### GetPostLogoutRedirectUris

`func (o *RegisterClientResponse) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *RegisterClientResponse) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *RegisterClientResponse) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *RegisterClientResponse) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### GetInitiateLoginUri

`func (o *RegisterClientResponse) GetInitiateLoginUri() string`

GetInitiateLoginUri returns the InitiateLoginUri field if non-nil, zero value otherwise.

### GetInitiateLoginUriOk

`func (o *RegisterClientResponse) GetInitiateLoginUriOk() (*string, bool)`

GetInitiateLoginUriOk returns a tuple with the InitiateLoginUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInitiateLoginUri

`func (o *RegisterClientResponse) SetInitiateLoginUri(v string)`

SetInitiateLoginUri sets InitiateLoginUri field to given value.

### HasInitiateLoginUri

`func (o *RegisterClientResponse) HasInitiateLoginUri() bool`

HasInitiateLoginUri returns a boolean if a field has been set.

### GetRequestUris

`func (o *RegisterClientResponse) GetRequestUris() []string`

GetRequestUris returns the RequestUris field if non-nil, zero value otherwise.

### GetRequestUrisOk

`func (o *RegisterClientResponse) GetRequestUrisOk() (*[]string, bool)`

GetRequestUrisOk returns a tuple with the RequestUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestUris

`func (o *RegisterClientResponse) SetRequestUris(v []string)`

SetRequestUris sets RequestUris field to given value.

### HasRequestUris

`func (o *RegisterClientResponse) HasRequestUris() bool`

HasRequestUris returns a boolean if a field has been set.

### GetScope

`func (o *RegisterClientResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *RegisterClientResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *RegisterClientResponse) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *RegisterClientResponse) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetIdTokenSignedResponseAlg

`func (o *RegisterClientResponse) GetIdTokenSignedResponseAlg() string`

GetIdTokenSignedResponseAlg returns the IdTokenSignedResponseAlg field if non-nil, zero value otherwise.

### GetIdTokenSignedResponseAlgOk

`func (o *RegisterClientResponse) GetIdTokenSignedResponseAlgOk() (*string, bool)`

GetIdTokenSignedResponseAlgOk returns a tuple with the IdTokenSignedResponseAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdTokenSignedResponseAlg

`func (o *RegisterClientResponse) SetIdTokenSignedResponseAlg(v string)`

SetIdTokenSignedResponseAlg sets IdTokenSignedResponseAlg field to given value.

### HasIdTokenSignedResponseAlg

`func (o *RegisterClientResponse) HasIdTokenSignedResponseAlg() bool`

HasIdTokenSignedResponseAlg returns a boolean if a field has been set.

### GetUserinfoSignedResponseAlg

`func (o *RegisterClientResponse) GetUserinfoSignedResponseAlg() string`

GetUserinfoSignedResponseAlg returns the UserinfoSignedResponseAlg field if non-nil, zero value otherwise.

### GetUserinfoSignedResponseAlgOk

`func (o *RegisterClientResponse) GetUserinfoSignedResponseAlgOk() (*string, bool)`

GetUserinfoSignedResponseAlgOk returns a tuple with the UserinfoSignedResponseAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserinfoSignedResponseAlg

`func (o *RegisterClientResponse) SetUserinfoSignedResponseAlg(v string)`

SetUserinfoSignedResponseAlg sets UserinfoSignedResponseAlg field to given value.

### HasUserinfoSignedResponseAlg

`func (o *RegisterClientResponse) HasUserinfoSignedResponseAlg() bool`

HasUserinfoSignedResponseAlg returns a boolean if a field has been set.

### GetRequestObjectSigningAlg

`func (o *RegisterClientResponse) GetRequestObjectSigningAlg() string`

GetRequestObjectSigningAlg returns the RequestObjectSigningAlg field if non-nil, zero value otherwise.

### GetRequestObjectSigningAlgOk

`func (o *RegisterClientResponse) GetRequestObjectSigningAlgOk() (*string, bool)`

GetRequestObjectSigningAlgOk returns a tuple with the RequestObjectSigningAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestObjectSigningAlg

`func (o *RegisterClientResponse) SetRequestObjectSigningAlg(v string)`

SetRequestObjectSigningAlg sets RequestObjectSigningAlg field to given value.

### HasRequestObjectSigningAlg

`func (o *RegisterClientResponse) HasRequestObjectSigningAlg() bool`

HasRequestObjectSigningAlg returns a boolean if a field has been set.

### GetTokenEndpointAuthSigningAlg

`func (o *RegisterClientResponse) GetTokenEndpointAuthSigningAlg() string`

GetTokenEndpointAuthSigningAlg returns the TokenEndpointAuthSigningAlg field if non-nil, zero value otherwise.

### GetTokenEndpointAuthSigningAlgOk

`func (o *RegisterClientResponse) GetTokenEndpointAuthSigningAlgOk() (*string, bool)`

GetTokenEndpointAuthSigningAlgOk returns a tuple with the TokenEndpointAuthSigningAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthSigningAlg

`func (o *RegisterClientResponse) SetTokenEndpointAuthSigningAlg(v string)`

SetTokenEndpointAuthSigningAlg sets TokenEndpointAuthSigningAlg field to given value.

### HasTokenEndpointAuthSigningAlg

`func (o *RegisterClientResponse) HasTokenEndpointAuthSigningAlg() bool`

HasTokenEndpointAuthSigningAlg returns a boolean if a field has been set.

### GetDefaultMaxAge

`func (o *RegisterClientResponse) GetDefaultMaxAge() int32`

GetDefaultMaxAge returns the DefaultMaxAge field if non-nil, zero value otherwise.

### GetDefaultMaxAgeOk

`func (o *RegisterClientResponse) GetDefaultMaxAgeOk() (*int32, bool)`

GetDefaultMaxAgeOk returns a tuple with the DefaultMaxAge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultMaxAge

`func (o *RegisterClientResponse) SetDefaultMaxAge(v int32)`

SetDefaultMaxAge sets DefaultMaxAge field to given value.

### HasDefaultMaxAge

`func (o *RegisterClientResponse) HasDefaultMaxAge() bool`

HasDefaultMaxAge returns a boolean if a field has been set.

### GetRequireAuthTime

`func (o *RegisterClientResponse) GetRequireAuthTime() bool`

GetRequireAuthTime returns the RequireAuthTime field if non-nil, zero value otherwise.

### GetRequireAuthTimeOk

`func (o *RegisterClientResponse) GetRequireAuthTimeOk() (*bool, bool)`

GetRequireAuthTimeOk returns a tuple with the RequireAuthTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireAuthTime

`func (o *RegisterClientResponse) SetRequireAuthTime(v bool)`

SetRequireAuthTime sets RequireAuthTime field to given value.

### HasRequireAuthTime

`func (o *RegisterClientResponse) HasRequireAuthTime() bool`

HasRequireAuthTime returns a boolean if a field has been set.

### GetDefaultAcrValues

`func (o *RegisterClientResponse) GetDefaultAcrValues() []string`

GetDefaultAcrValues returns the DefaultAcrValues field if non-nil, zero value otherwise.

### GetDefaultAcrValuesOk

`func (o *RegisterClientResponse) GetDefaultAcrValuesOk() (*[]string, bool)`

GetDefaultAcrValuesOk returns a tuple with the DefaultAcrValues field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultAcrValues

`func (o *RegisterClientResponse) SetDefaultAcrValues(v []string)`

SetDefaultAcrValues sets DefaultAcrValues field to given value.

### HasDefaultAcrValues

`func (o *RegisterClientResponse) HasDefaultAcrValues() bool`

HasDefaultAcrValues returns a boolean if a field has been set.

### GetFrontchannelLogoutUri

`func (o *RegisterClientResponse) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *RegisterClientResponse) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *RegisterClientResponse) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *RegisterClientResponse) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### GetFrontchannelLogoutSessionRequired

`func (o *RegisterClientResponse) GetFrontchannelLogoutSessionRequired() bool`

GetFrontchannelLogoutSessionRequired returns the FrontchannelLogoutSessionRequired field if non-nil, zero value otherwise.

### GetFrontchannelLogoutSessionRequiredOk

`func (o *RegisterClientResponse) GetFrontchannelLogoutSessionRequiredOk() (*bool, bool)`

GetFrontchannelLogoutSessionRequiredOk returns a tuple with the FrontchannelLogoutSessionRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutSessionRequired

`func (o *RegisterClientResponse) SetFrontchannelLogoutSessionRequired(v bool)`

SetFrontchannelLogoutSessionRequired sets FrontchannelLogoutSessionRequired field to given value.

### HasFrontchannelLogoutSessionRequired

`func (o *RegisterClientResponse) HasFrontchannelLogoutSessionRequired() bool`

HasFrontchannelLogoutSessionRequired returns a boolean if a field has been set.

### GetBackchannelLogoutUri

`func (o *RegisterClientResponse) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *RegisterClientResponse) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *RegisterClientResponse) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *RegisterClientResponse) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### GetBackchannelLogoutSessionRequired

`func (o *RegisterClientResponse) GetBackchannelLogoutSessionRequired() bool`

GetBackchannelLogoutSessionRequired returns the BackchannelLogoutSessionRequired field if non-nil, zero value otherwise.

### GetBackchannelLogoutSessionRequiredOk

`func (o *RegisterClientResponse) GetBackchannelLogoutSessionRequiredOk() (*bool, bool)`

GetBackchannelLogoutSessionRequiredOk returns a tuple with the BackchannelLogoutSessionRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutSessionRequired

`func (o *RegisterClientResponse) SetBackchannelLogoutSessionRequired(v bool)`

SetBackchannelLogoutSessionRequired sets BackchannelLogoutSessionRequired field to given value.

### HasBackchannelLogoutSessionRequired

`func (o *RegisterClientResponse) HasBackchannelLogoutSessionRequired() bool`

HasBackchannelLogoutSessionRequired returns a boolean if a field has been set.

### GetAudienceUris

`func (o *RegisterClientResponse) GetAudienceUris() []string`

GetAudienceUris returns the AudienceUris field if non-nil, zero value otherwise.

### GetAudienceUrisOk

`func (o *RegisterClientResponse) GetAudienceUrisOk() (*[]string, bool)`

GetAudienceUrisOk returns a tuple with the AudienceUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudienceUris

`func (o *RegisterClientResponse) SetAudienceUris(v []string)`

SetAudienceUris sets AudienceUris field to given value.

### HasAudienceUris

`func (o *RegisterClientResponse) HasAudienceUris() bool`

HasAudienceUris returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


