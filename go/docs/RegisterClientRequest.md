# RegisterClientRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RedirectUris** | Pointer to **[]string** |  | [optional] 
**ClientName** | Pointer to **string** |  | [optional] 
**GrantTypes** | Pointer to **[]string** |  | [optional] 
**ResponseTypes** | Pointer to **[]string** |  | [optional] 
**TokenEndpointAuthMethod** | Pointer to **string** |  | [optional] 
**Scope** | Pointer to **string** |  | [optional] 
**JwksUri** | Pointer to **string** |  | [optional] 
**Jwks** | Pointer to **map[string]interface{}** |  | [optional] 
**ApplicationType** | Pointer to **string** |  | [optional] 
**PostLogoutRedirectUris** | Pointer to **[]string** |  | [optional] 
**BackchannelLogoutUri** | Pointer to **string** |  | [optional] 
**FrontchannelLogoutUri** | Pointer to **string** |  | [optional] 
**ClientUri** | Pointer to **string** |  | [optional] 
**LogoUri** | Pointer to **string** |  | [optional] 
**PolicyUri** | Pointer to **string** |  | [optional] 
**TosUri** | Pointer to **string** |  | [optional] 
**Contacts** | Pointer to **[]string** |  | [optional] 

## Methods

### NewRegisterClientRequest

`func NewRegisterClientRequest() *RegisterClientRequest`

NewRegisterClientRequest instantiates a new RegisterClientRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRegisterClientRequestWithDefaults

`func NewRegisterClientRequestWithDefaults() *RegisterClientRequest`

NewRegisterClientRequestWithDefaults instantiates a new RegisterClientRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRedirectUris

`func (o *RegisterClientRequest) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *RegisterClientRequest) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *RegisterClientRequest) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *RegisterClientRequest) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetClientName

`func (o *RegisterClientRequest) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *RegisterClientRequest) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *RegisterClientRequest) SetClientName(v string)`

SetClientName sets ClientName field to given value.

### HasClientName

`func (o *RegisterClientRequest) HasClientName() bool`

HasClientName returns a boolean if a field has been set.

### GetGrantTypes

`func (o *RegisterClientRequest) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *RegisterClientRequest) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *RegisterClientRequest) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *RegisterClientRequest) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetResponseTypes

`func (o *RegisterClientRequest) GetResponseTypes() []string`

GetResponseTypes returns the ResponseTypes field if non-nil, zero value otherwise.

### GetResponseTypesOk

`func (o *RegisterClientRequest) GetResponseTypesOk() (*[]string, bool)`

GetResponseTypesOk returns a tuple with the ResponseTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponseTypes

`func (o *RegisterClientRequest) SetResponseTypes(v []string)`

SetResponseTypes sets ResponseTypes field to given value.

### HasResponseTypes

`func (o *RegisterClientRequest) HasResponseTypes() bool`

HasResponseTypes returns a boolean if a field has been set.

### GetTokenEndpointAuthMethod

`func (o *RegisterClientRequest) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *RegisterClientRequest) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *RegisterClientRequest) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.

### HasTokenEndpointAuthMethod

`func (o *RegisterClientRequest) HasTokenEndpointAuthMethod() bool`

HasTokenEndpointAuthMethod returns a boolean if a field has been set.

### GetScope

`func (o *RegisterClientRequest) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *RegisterClientRequest) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *RegisterClientRequest) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *RegisterClientRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetJwksUri

`func (o *RegisterClientRequest) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *RegisterClientRequest) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *RegisterClientRequest) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *RegisterClientRequest) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetJwks

`func (o *RegisterClientRequest) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *RegisterClientRequest) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *RegisterClientRequest) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *RegisterClientRequest) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### GetApplicationType

`func (o *RegisterClientRequest) GetApplicationType() string`

GetApplicationType returns the ApplicationType field if non-nil, zero value otherwise.

### GetApplicationTypeOk

`func (o *RegisterClientRequest) GetApplicationTypeOk() (*string, bool)`

GetApplicationTypeOk returns a tuple with the ApplicationType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplicationType

`func (o *RegisterClientRequest) SetApplicationType(v string)`

SetApplicationType sets ApplicationType field to given value.

### HasApplicationType

`func (o *RegisterClientRequest) HasApplicationType() bool`

HasApplicationType returns a boolean if a field has been set.

### GetPostLogoutRedirectUris

`func (o *RegisterClientRequest) GetPostLogoutRedirectUris() []string`

GetPostLogoutRedirectUris returns the PostLogoutRedirectUris field if non-nil, zero value otherwise.

### GetPostLogoutRedirectUrisOk

`func (o *RegisterClientRequest) GetPostLogoutRedirectUrisOk() (*[]string, bool)`

GetPostLogoutRedirectUrisOk returns a tuple with the PostLogoutRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPostLogoutRedirectUris

`func (o *RegisterClientRequest) SetPostLogoutRedirectUris(v []string)`

SetPostLogoutRedirectUris sets PostLogoutRedirectUris field to given value.

### HasPostLogoutRedirectUris

`func (o *RegisterClientRequest) HasPostLogoutRedirectUris() bool`

HasPostLogoutRedirectUris returns a boolean if a field has been set.

### GetBackchannelLogoutUri

`func (o *RegisterClientRequest) GetBackchannelLogoutUri() string`

GetBackchannelLogoutUri returns the BackchannelLogoutUri field if non-nil, zero value otherwise.

### GetBackchannelLogoutUriOk

`func (o *RegisterClientRequest) GetBackchannelLogoutUriOk() (*string, bool)`

GetBackchannelLogoutUriOk returns a tuple with the BackchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBackchannelLogoutUri

`func (o *RegisterClientRequest) SetBackchannelLogoutUri(v string)`

SetBackchannelLogoutUri sets BackchannelLogoutUri field to given value.

### HasBackchannelLogoutUri

`func (o *RegisterClientRequest) HasBackchannelLogoutUri() bool`

HasBackchannelLogoutUri returns a boolean if a field has been set.

### GetFrontchannelLogoutUri

`func (o *RegisterClientRequest) GetFrontchannelLogoutUri() string`

GetFrontchannelLogoutUri returns the FrontchannelLogoutUri field if non-nil, zero value otherwise.

### GetFrontchannelLogoutUriOk

`func (o *RegisterClientRequest) GetFrontchannelLogoutUriOk() (*string, bool)`

GetFrontchannelLogoutUriOk returns a tuple with the FrontchannelLogoutUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrontchannelLogoutUri

`func (o *RegisterClientRequest) SetFrontchannelLogoutUri(v string)`

SetFrontchannelLogoutUri sets FrontchannelLogoutUri field to given value.

### HasFrontchannelLogoutUri

`func (o *RegisterClientRequest) HasFrontchannelLogoutUri() bool`

HasFrontchannelLogoutUri returns a boolean if a field has been set.

### GetClientUri

`func (o *RegisterClientRequest) GetClientUri() string`

GetClientUri returns the ClientUri field if non-nil, zero value otherwise.

### GetClientUriOk

`func (o *RegisterClientRequest) GetClientUriOk() (*string, bool)`

GetClientUriOk returns a tuple with the ClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientUri

`func (o *RegisterClientRequest) SetClientUri(v string)`

SetClientUri sets ClientUri field to given value.

### HasClientUri

`func (o *RegisterClientRequest) HasClientUri() bool`

HasClientUri returns a boolean if a field has been set.

### GetLogoUri

`func (o *RegisterClientRequest) GetLogoUri() string`

GetLogoUri returns the LogoUri field if non-nil, zero value otherwise.

### GetLogoUriOk

`func (o *RegisterClientRequest) GetLogoUriOk() (*string, bool)`

GetLogoUriOk returns a tuple with the LogoUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUri

`func (o *RegisterClientRequest) SetLogoUri(v string)`

SetLogoUri sets LogoUri field to given value.

### HasLogoUri

`func (o *RegisterClientRequest) HasLogoUri() bool`

HasLogoUri returns a boolean if a field has been set.

### GetPolicyUri

`func (o *RegisterClientRequest) GetPolicyUri() string`

GetPolicyUri returns the PolicyUri field if non-nil, zero value otherwise.

### GetPolicyUriOk

`func (o *RegisterClientRequest) GetPolicyUriOk() (*string, bool)`

GetPolicyUriOk returns a tuple with the PolicyUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPolicyUri

`func (o *RegisterClientRequest) SetPolicyUri(v string)`

SetPolicyUri sets PolicyUri field to given value.

### HasPolicyUri

`func (o *RegisterClientRequest) HasPolicyUri() bool`

HasPolicyUri returns a boolean if a field has been set.

### GetTosUri

`func (o *RegisterClientRequest) GetTosUri() string`

GetTosUri returns the TosUri field if non-nil, zero value otherwise.

### GetTosUriOk

`func (o *RegisterClientRequest) GetTosUriOk() (*string, bool)`

GetTosUriOk returns a tuple with the TosUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTosUri

`func (o *RegisterClientRequest) SetTosUri(v string)`

SetTosUri sets TosUri field to given value.

### HasTosUri

`func (o *RegisterClientRequest) HasTosUri() bool`

HasTosUri returns a boolean if a field has been set.

### GetContacts

`func (o *RegisterClientRequest) GetContacts() []string`

GetContacts returns the Contacts field if non-nil, zero value otherwise.

### GetContactsOk

`func (o *RegisterClientRequest) GetContactsOk() (*[]string, bool)`

GetContactsOk returns a tuple with the Contacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContacts

`func (o *RegisterClientRequest) SetContacts(v []string)`

SetContacts sets Contacts field to given value.

### HasContacts

`func (o *RegisterClientRequest) HasContacts() bool`

HasContacts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


