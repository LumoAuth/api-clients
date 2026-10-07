# RegisteredClientMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **string** |  | 
**ClientSecretExpiresAt** | Pointer to **int32** | Unix seconds; 0 &#x3D; never expires (confidential clients only). | [optional] 
**ClientIdIssuedAt** | **int32** | Unix seconds. | 
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

### NewRegisteredClientMetadata

`func NewRegisteredClientMetadata(clientId string, clientIdIssuedAt int32, clientName NullableString, redirectUris []string, responseTypes []string, grantTypes []string, applicationType string, tokenEndpointAuthMethod string, ) *RegisteredClientMetadata`

NewRegisteredClientMetadata instantiates a new RegisteredClientMetadata object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRegisteredClientMetadataWithDefaults

`func NewRegisteredClientMetadataWithDefaults() *RegisteredClientMetadata`

NewRegisteredClientMetadataWithDefaults instantiates a new RegisteredClientMetadata object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientId

`func (o *RegisteredClientMetadata) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *RegisteredClientMetadata) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *RegisteredClientMetadata) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetClientSecretExpiresAt

`func (o *RegisteredClientMetadata) GetClientSecretExpiresAt() int32`

GetClientSecretExpiresAt returns the ClientSecretExpiresAt field if non-nil, zero value otherwise.

### GetClientSecretExpiresAtOk

`func (o *RegisteredClientMetadata) GetClientSecretExpiresAtOk() (*int32, bool)`

GetClientSecretExpiresAtOk returns a tuple with the ClientSecretExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientSecretExpiresAt

`func (o *RegisteredClientMetadata) SetClientSecretExpiresAt(v int32)`

SetClientSecretExpiresAt sets ClientSecretExpiresAt field to given value.

### HasClientSecretExpiresAt

`func (o *RegisteredClientMetadata) HasClientSecretExpiresAt() bool`

HasClientSecretExpiresAt returns a boolean if a field has been set.

### GetClientIdIssuedAt

`func (o *RegisteredClientMetadata) GetClientIdIssuedAt() int32`

GetClientIdIssuedAt returns the ClientIdIssuedAt field if non-nil, zero value otherwise.

### GetClientIdIssuedAtOk

`func (o *RegisteredClientMetadata) GetClientIdIssuedAtOk() (*int32, bool)`

GetClientIdIssuedAtOk returns a tuple with the ClientIdIssuedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientIdIssuedAt

`func (o *RegisteredClientMetadata) SetClientIdIssuedAt(v int32)`

SetClientIdIssuedAt sets ClientIdIssuedAt field to given value.


### GetRegistrationClientUri

`func (o *RegisteredClientMetadata) GetRegistrationClientUri() string`

GetRegistrationClientUri returns the RegistrationClientUri field if non-nil, zero value otherwise.

### GetRegistrationClientUriOk

`func (o *RegisteredClientMetadata) GetRegistrationClientUriOk() (*string, bool)`

GetRegistrationClientUriOk returns a tuple with the RegistrationClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegistrationClientUri

`func (o *RegisteredClientMetadata) SetRegistrationClientUri(v string)`

SetRegistrationClientUri sets RegistrationClientUri field to given value.

### HasRegistrationClientUri

`func (o *RegisteredClientMetadata) HasRegistrationClientUri() bool`

HasRegistrationClientUri returns a boolean if a field has been set.

### GetClientName

`func (o *RegisteredClientMetadata) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *RegisteredClientMetadata) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *RegisteredClientMetadata) SetClientName(v string)`

SetClientName sets ClientName field to given value.


### SetClientNameNil

`func (o *RegisteredClientMetadata) SetClientNameNil(b bool)`

 SetClientNameNil sets the value for ClientName to be an explicit nil

### UnsetClientName
`func (o *RegisteredClientMetadata) UnsetClientName()`

UnsetClientName ensures that no value is present for ClientName, not even an explicit nil
### GetRedirectUris

`func (o *RegisteredClientMetadata) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *RegisteredClientMetadata) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *RegisteredClientMetadata) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.


### GetResponseTypes

`func (o *RegisteredClientMetadata) GetResponseTypes() []string`

GetResponseTypes returns the ResponseTypes field if non-nil, zero value otherwise.

### GetResponseTypesOk

`func (o *RegisteredClientMetadata) GetResponseTypesOk() (*[]string, bool)`

GetResponseTypesOk returns a tuple with the ResponseTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseTypes

`func (o *RegisteredClientMetadata) SetResponseTypes(v []string)`

SetResponseTypes sets ResponseTypes field to given value.


### GetGrantTypes

`func (o *RegisteredClientMetadata) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *RegisteredClientMetadata) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *RegisteredClientMetadata) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.


### GetApplicationType

`func (o *RegisteredClientMetadata) GetApplicationType() string`

GetApplicationType returns the ApplicationType field if non-nil, zero value otherwise.

### GetApplicationTypeOk

`func (o *RegisteredClientMetadata) GetApplicationTypeOk() (*string, bool)`

GetApplicationTypeOk returns a tuple with the ApplicationType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplicationType

`func (o *RegisteredClientMetadata) SetApplicationType(v string)`

SetApplicationType sets ApplicationType field to given value.


### GetTokenEndpointAuthMethod

`func (o *RegisteredClientMetadata) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *RegisteredClientMetadata) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *RegisteredClientMetadata) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.


### GetContacts

`func (o *RegisteredClientMetadata) GetContacts() []string`

GetContacts returns the Contacts field if non-nil, zero value otherwise.

### GetContactsOk

`func (o *RegisteredClientMetadata) GetContactsOk() (*[]string, bool)`

GetContactsOk returns a tuple with the Contacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContacts

`func (o *RegisteredClientMetadata) SetContacts(v []string)`

SetContacts sets Contacts field to given value.

### HasContacts

`func (o *RegisteredClientMetadata) HasContacts() bool`

HasContacts returns a boolean if a field has been set.

### GetClientUri

`func (o *RegisteredClientMetadata) GetClientUri() string`

GetClientUri returns the ClientUri field if non-nil, zero value otherwise.

### GetClientUriOk

`func (o *RegisteredClientMetadata) GetClientUriOk() (*string, bool)`

GetClientUriOk returns a tuple with the ClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientUri

`func (o *RegisteredClientMetadata) SetClientUri(v string)`

SetClientUri sets ClientUri field to given value.

### HasClientUri

`func (o *RegisteredClientMetadata) HasClientUri() bool`

HasClientUri returns a boolean if a field has been set.

### GetLogoUri

`func (o *RegisteredClientMetadata) GetLogoUri() string`

GetLogoUri returns the LogoUri field if non-nil, zero value otherwise.

### GetLogoUriOk

`func (o *RegisteredClientMetadata) GetLogoUriOk() (*string, bool)`

GetLogoUriOk returns a tuple with the LogoUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUri

`func (o *RegisteredClientMetadata) SetLogoUri(v string)`

SetLogoUri sets LogoUri field to given value.

### HasLogoUri

`func (o *RegisteredClientMetadata) HasLogoUri() bool`

HasLogoUri returns a boolean if a field has been set.

### GetPolicyUri

`func (o *RegisteredClientMetadata) GetPolicyUri() string`

GetPolicyUri returns the PolicyUri field if non-nil, zero value otherwise.

### GetPolicyUriOk

`func (o *RegisteredClientMetadata) GetPolicyUriOk() (*string, bool)`

GetPolicyUriOk returns a tuple with the PolicyUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPolicyUri

`func (o *RegisteredClientMetadata) SetPolicyUri(v string)`

SetPolicyUri sets PolicyUri field to given value.

### HasPolicyUri

`func (o *RegisteredClientMetadata) HasPolicyUri() bool`

HasPolicyUri returns a boolean if a field has been set.

### GetTosUri

`func (o *RegisteredClientMetadata) GetTosUri() string`

GetTosUri returns the TosUri field if non-nil, zero value otherwise.

### GetTosUriOk

`func (o *RegisteredClientMetadata) GetTosUriOk() (*string, bool)`

GetTosUriOk returns a tuple with the TosUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTosUri

`func (o *RegisteredClientMetadata) SetTosUri(v string)`

SetTosUri sets TosUri field to given value.

### HasTosUri

`func (o *RegisteredClientMetadata) HasTosUri() bool`

HasTosUri returns a boolean if a field has been set.

### GetSectorIdentifierUri

`func (o *RegisteredClientMetadata) GetSectorIdentifierUri() string`

GetSectorIdentifierUri returns the SectorIdentifierUri field if non-nil, zero value otherwise.

### GetSectorIdentifierUriOk

`func (o *RegisteredClientMetadata) GetSectorIdentifierUriOk() (*string, bool)`

GetSectorIdentifierUriOk returns a tuple with the SectorIdentifierUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSectorIdentifierUri

`func (o *RegisteredClientMetadata) SetSectorIdentifierUri(v string)`

SetSectorIdentifierUri sets SectorIdentifierUri field to given value.

### HasSectorIdentifierUri

`func (o *RegisteredClientMetadata) HasSectorIdentifierUri() bool`

HasSectorIdentifierUri returns a boolean if a field has been set.

### GetSubjectType

`func (o *RegisteredClientMetadata) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *RegisteredClientMetadata) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *RegisteredClientMetadata) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *RegisteredClientMetadata) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetJwksUri

`func (o *RegisteredClientMetadata) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *RegisteredClientMetadata) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *RegisteredClientMetadata) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *RegisteredClientMetadata) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetJwks

`func (o *RegisteredClientMetadata) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *RegisteredClientMetadata) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *RegisteredClientMetadata) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *RegisteredClientMetadata) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### GetPostLogoutRedirectUris

`func (o *RegisteredClientMetadata) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *RegisteredClientMetadata) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *RegisteredClientMetadata) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *RegisteredClientMetadata) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### GetInitiateLoginUri

`func (o *RegisteredClientMetadata) GetInitiateLoginUri() string`

GetInitiateLoginUri returns the InitiateLoginUri field if non-nil, zero value otherwise.

### GetInitiateLoginUriOk

`func (o *RegisteredClientMetadata) GetInitiateLoginUriOk() (*string, bool)`

GetInitiateLoginUriOk returns a tuple with the InitiateLoginUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInitiateLoginUri

`func (o *RegisteredClientMetadata) SetInitiateLoginUri(v string)`

SetInitiateLoginUri sets InitiateLoginUri field to given value.

### HasInitiateLoginUri

`func (o *RegisteredClientMetadata) HasInitiateLoginUri() bool`

HasInitiateLoginUri returns a boolean if a field has been set.

### GetRequestUris

`func (o *RegisteredClientMetadata) GetRequestUris() []string`

GetRequestUris returns the RequestUris field if non-nil, zero value otherwise.

### GetRequestUrisOk

`func (o *RegisteredClientMetadata) GetRequestUrisOk() (*[]string, bool)`

GetRequestUrisOk returns a tuple with the RequestUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestUris

`func (o *RegisteredClientMetadata) SetRequestUris(v []string)`

SetRequestUris sets RequestUris field to given value.

### HasRequestUris

`func (o *RegisteredClientMetadata) HasRequestUris() bool`

HasRequestUris returns a boolean if a field has been set.

### GetScope

`func (o *RegisteredClientMetadata) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *RegisteredClientMetadata) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *RegisteredClientMetadata) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *RegisteredClientMetadata) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetIdTokenSignedResponseAlg

`func (o *RegisteredClientMetadata) GetIdTokenSignedResponseAlg() string`

GetIdTokenSignedResponseAlg returns the IdTokenSignedResponseAlg field if non-nil, zero value otherwise.

### GetIdTokenSignedResponseAlgOk

`func (o *RegisteredClientMetadata) GetIdTokenSignedResponseAlgOk() (*string, bool)`

GetIdTokenSignedResponseAlgOk returns a tuple with the IdTokenSignedResponseAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdTokenSignedResponseAlg

`func (o *RegisteredClientMetadata) SetIdTokenSignedResponseAlg(v string)`

SetIdTokenSignedResponseAlg sets IdTokenSignedResponseAlg field to given value.

### HasIdTokenSignedResponseAlg

`func (o *RegisteredClientMetadata) HasIdTokenSignedResponseAlg() bool`

HasIdTokenSignedResponseAlg returns a boolean if a field has been set.

### GetUserinfoSignedResponseAlg

`func (o *RegisteredClientMetadata) GetUserinfoSignedResponseAlg() string`

GetUserinfoSignedResponseAlg returns the UserinfoSignedResponseAlg field if non-nil, zero value otherwise.

### GetUserinfoSignedResponseAlgOk

`func (o *RegisteredClientMetadata) GetUserinfoSignedResponseAlgOk() (*string, bool)`

GetUserinfoSignedResponseAlgOk returns a tuple with the UserinfoSignedResponseAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserinfoSignedResponseAlg

`func (o *RegisteredClientMetadata) SetUserinfoSignedResponseAlg(v string)`

SetUserinfoSignedResponseAlg sets UserinfoSignedResponseAlg field to given value.

### HasUserinfoSignedResponseAlg

`func (o *RegisteredClientMetadata) HasUserinfoSignedResponseAlg() bool`

HasUserinfoSignedResponseAlg returns a boolean if a field has been set.

### GetRequestObjectSigningAlg

`func (o *RegisteredClientMetadata) GetRequestObjectSigningAlg() string`

GetRequestObjectSigningAlg returns the RequestObjectSigningAlg field if non-nil, zero value otherwise.

### GetRequestObjectSigningAlgOk

`func (o *RegisteredClientMetadata) GetRequestObjectSigningAlgOk() (*string, bool)`

GetRequestObjectSigningAlgOk returns a tuple with the RequestObjectSigningAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestObjectSigningAlg

`func (o *RegisteredClientMetadata) SetRequestObjectSigningAlg(v string)`

SetRequestObjectSigningAlg sets RequestObjectSigningAlg field to given value.

### HasRequestObjectSigningAlg

`func (o *RegisteredClientMetadata) HasRequestObjectSigningAlg() bool`

HasRequestObjectSigningAlg returns a boolean if a field has been set.

### GetTokenEndpointAuthSigningAlg

`func (o *RegisteredClientMetadata) GetTokenEndpointAuthSigningAlg() string`

GetTokenEndpointAuthSigningAlg returns the TokenEndpointAuthSigningAlg field if non-nil, zero value otherwise.

### GetTokenEndpointAuthSigningAlgOk

`func (o *RegisteredClientMetadata) GetTokenEndpointAuthSigningAlgOk() (*string, bool)`

GetTokenEndpointAuthSigningAlgOk returns a tuple with the TokenEndpointAuthSigningAlg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthSigningAlg

`func (o *RegisteredClientMetadata) SetTokenEndpointAuthSigningAlg(v string)`

SetTokenEndpointAuthSigningAlg sets TokenEndpointAuthSigningAlg field to given value.

### HasTokenEndpointAuthSigningAlg

`func (o *RegisteredClientMetadata) HasTokenEndpointAuthSigningAlg() bool`

HasTokenEndpointAuthSigningAlg returns a boolean if a field has been set.

### GetDefaultMaxAge

`func (o *RegisteredClientMetadata) GetDefaultMaxAge() int32`

GetDefaultMaxAge returns the DefaultMaxAge field if non-nil, zero value otherwise.

### GetDefaultMaxAgeOk

`func (o *RegisteredClientMetadata) GetDefaultMaxAgeOk() (*int32, bool)`

GetDefaultMaxAgeOk returns a tuple with the DefaultMaxAge field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultMaxAge

`func (o *RegisteredClientMetadata) SetDefaultMaxAge(v int32)`

SetDefaultMaxAge sets DefaultMaxAge field to given value.

### HasDefaultMaxAge

`func (o *RegisteredClientMetadata) HasDefaultMaxAge() bool`

HasDefaultMaxAge returns a boolean if a field has been set.

### GetRequireAuthTime

`func (o *RegisteredClientMetadata) GetRequireAuthTime() bool`

GetRequireAuthTime returns the RequireAuthTime field if non-nil, zero value otherwise.

### GetRequireAuthTimeOk

`func (o *RegisteredClientMetadata) GetRequireAuthTimeOk() (*bool, bool)`

GetRequireAuthTimeOk returns a tuple with the RequireAuthTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireAuthTime

`func (o *RegisteredClientMetadata) SetRequireAuthTime(v bool)`

SetRequireAuthTime sets RequireAuthTime field to given value.

### HasRequireAuthTime

`func (o *RegisteredClientMetadata) HasRequireAuthTime() bool`

HasRequireAuthTime returns a boolean if a field has been set.

### GetDefaultAcrValues

`func (o *RegisteredClientMetadata) GetDefaultAcrValues() []string`

GetDefaultAcrValues returns the DefaultAcrValues field if non-nil, zero value otherwise.

### GetDefaultAcrValuesOk

`func (o *RegisteredClientMetadata) GetDefaultAcrValuesOk() (*[]string, bool)`

GetDefaultAcrValuesOk returns a tuple with the DefaultAcrValues field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultAcrValues

`func (o *RegisteredClientMetadata) SetDefaultAcrValues(v []string)`

SetDefaultAcrValues sets DefaultAcrValues field to given value.

### HasDefaultAcrValues

`func (o *RegisteredClientMetadata) HasDefaultAcrValues() bool`

HasDefaultAcrValues returns a boolean if a field has been set.

### GetFrontchannelLogoutUri

`func (o *RegisteredClientMetadata) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *RegisteredClientMetadata) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *RegisteredClientMetadata) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *RegisteredClientMetadata) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### GetFrontchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) GetFrontchannelLogoutSessionRequired() bool`

GetFrontchannelLogoutSessionRequired returns the FrontchannelLogoutSessionRequired field if non-nil, zero value otherwise.

### GetFrontchannelLogoutSessionRequiredOk

`func (o *RegisteredClientMetadata) GetFrontchannelLogoutSessionRequiredOk() (*bool, bool)`

GetFrontchannelLogoutSessionRequiredOk returns a tuple with the FrontchannelLogoutSessionRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) SetFrontchannelLogoutSessionRequired(v bool)`

SetFrontchannelLogoutSessionRequired sets FrontchannelLogoutSessionRequired field to given value.

### HasFrontchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) HasFrontchannelLogoutSessionRequired() bool`

HasFrontchannelLogoutSessionRequired returns a boolean if a field has been set.

### GetBackchannelLogoutUri

`func (o *RegisteredClientMetadata) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *RegisteredClientMetadata) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *RegisteredClientMetadata) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *RegisteredClientMetadata) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### GetBackchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) GetBackchannelLogoutSessionRequired() bool`

GetBackchannelLogoutSessionRequired returns the BackchannelLogoutSessionRequired field if non-nil, zero value otherwise.

### GetBackchannelLogoutSessionRequiredOk

`func (o *RegisteredClientMetadata) GetBackchannelLogoutSessionRequiredOk() (*bool, bool)`

GetBackchannelLogoutSessionRequiredOk returns a tuple with the BackchannelLogoutSessionRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) SetBackchannelLogoutSessionRequired(v bool)`

SetBackchannelLogoutSessionRequired sets BackchannelLogoutSessionRequired field to given value.

### HasBackchannelLogoutSessionRequired

`func (o *RegisteredClientMetadata) HasBackchannelLogoutSessionRequired() bool`

HasBackchannelLogoutSessionRequired returns a boolean if a field has been set.

### GetAudienceUris

`func (o *RegisteredClientMetadata) GetAudienceUris() []string`

GetAudienceUris returns the AudienceUris field if non-nil, zero value otherwise.

### GetAudienceUrisOk

`func (o *RegisteredClientMetadata) GetAudienceUrisOk() (*[]string, bool)`

GetAudienceUrisOk returns a tuple with the AudienceUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudienceUris

`func (o *RegisteredClientMetadata) SetAudienceUris(v []string)`

SetAudienceUris sets AudienceUris field to given value.

### HasAudienceUris

`func (o *RegisteredClientMetadata) HasAudienceUris() bool`

HasAudienceUris returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


