# CimdCheckResultEffective

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientName** | Pointer to **string** |  | [optional] 
**ApplicationType** | Pointer to **string** |  | [optional] 
**TokenEndpointAuthMethod** | Pointer to **string** |  | [optional] 
**PublicClient** | Pointer to **bool** |  | [optional] 
**PkceRequired** | Pointer to **bool** |  | [optional] 
**RedirectUris** | Pointer to **[]string** |  | [optional] 
**DroppedRedirectUris** | Pointer to **[]string** | Loopback URIs removed by the organization&#39;s localhost policy. | [optional] 
**GrantTypes** | Pointer to **[]string** |  | [optional] 
**Scopes** | Pointer to **[]string** |  | [optional] 
**DroppedScopes** | Pointer to **[]string** | Scopes the document asked for that are neither identity scopes nor on the organization&#39;s cimd_allowed_scopes list. | [optional] 
**LogoUri** | Pointer to **NullableString** |  | [optional] 
**ClientUri** | Pointer to **NullableString** |  | [optional] 
**HasLoopbackRedirect** | Pointer to **bool** |  | [optional] 

## Methods

### NewCimdCheckResultEffective

`func NewCimdCheckResultEffective() *CimdCheckResultEffective`

NewCimdCheckResultEffective instantiates a new CimdCheckResultEffective object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCimdCheckResultEffectiveWithDefaults

`func NewCimdCheckResultEffectiveWithDefaults() *CimdCheckResultEffective`

NewCimdCheckResultEffectiveWithDefaults instantiates a new CimdCheckResultEffective object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientName

`func (o *CimdCheckResultEffective) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *CimdCheckResultEffective) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *CimdCheckResultEffective) SetClientName(v string)`

SetClientName sets ClientName field to given value.

### HasClientName

`func (o *CimdCheckResultEffective) HasClientName() bool`

HasClientName returns a boolean if a field has been set.

### GetApplicationType

`func (o *CimdCheckResultEffective) GetApplicationType() string`

GetApplicationType returns the ApplicationType field if non-nil, zero value otherwise.

### GetApplicationTypeOk

`func (o *CimdCheckResultEffective) GetApplicationTypeOk() (*string, bool)`

GetApplicationTypeOk returns a tuple with the ApplicationType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApplicationType

`func (o *CimdCheckResultEffective) SetApplicationType(v string)`

SetApplicationType sets ApplicationType field to given value.

### HasApplicationType

`func (o *CimdCheckResultEffective) HasApplicationType() bool`

HasApplicationType returns a boolean if a field has been set.

### GetTokenEndpointAuthMethod

`func (o *CimdCheckResultEffective) GetTokenEndpointAuthMethod() string`

GetTokenEndpointAuthMethod returns the TokenEndpointAuthMethod field if non-nil, zero value otherwise.

### GetTokenEndpointAuthMethodOk

`func (o *CimdCheckResultEffective) GetTokenEndpointAuthMethodOk() (*string, bool)`

GetTokenEndpointAuthMethodOk returns a tuple with the TokenEndpointAuthMethod field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpointAuthMethod

`func (o *CimdCheckResultEffective) SetTokenEndpointAuthMethod(v string)`

SetTokenEndpointAuthMethod sets TokenEndpointAuthMethod field to given value.

### HasTokenEndpointAuthMethod

`func (o *CimdCheckResultEffective) HasTokenEndpointAuthMethod() bool`

HasTokenEndpointAuthMethod returns a boolean if a field has been set.

### GetPublicClient

`func (o *CimdCheckResultEffective) GetPublicClient() bool`

GetPublicClient returns the PublicClient field if non-nil, zero value otherwise.

### GetPublicClientOk

`func (o *CimdCheckResultEffective) GetPublicClientOk() (*bool, bool)`

GetPublicClientOk returns a tuple with the PublicClient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicClient

`func (o *CimdCheckResultEffective) SetPublicClient(v bool)`

SetPublicClient sets PublicClient field to given value.

### HasPublicClient

`func (o *CimdCheckResultEffective) HasPublicClient() bool`

HasPublicClient returns a boolean if a field has been set.

### GetPkceRequired

`func (o *CimdCheckResultEffective) GetPkceRequired() bool`

GetPkceRequired returns the PkceRequired field if non-nil, zero value otherwise.

### GetPkceRequiredOk

`func (o *CimdCheckResultEffective) GetPkceRequiredOk() (*bool, bool)`

GetPkceRequiredOk returns a tuple with the PkceRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPkceRequired

`func (o *CimdCheckResultEffective) SetPkceRequired(v bool)`

SetPkceRequired sets PkceRequired field to given value.

### HasPkceRequired

`func (o *CimdCheckResultEffective) HasPkceRequired() bool`

HasPkceRequired returns a boolean if a field has been set.

### GetRedirectUris

`func (o *CimdCheckResultEffective) GetRedirectUris() []string`

GetRedirectUris returns the RedirectUris field if non-nil, zero value otherwise.

### GetRedirectUrisOk

`func (o *CimdCheckResultEffective) GetRedirectUrisOk() (*[]string, bool)`

GetRedirectUrisOk returns a tuple with the RedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUris

`func (o *CimdCheckResultEffective) SetRedirectUris(v []string)`

SetRedirectUris sets RedirectUris field to given value.

### HasRedirectUris

`func (o *CimdCheckResultEffective) HasRedirectUris() bool`

HasRedirectUris returns a boolean if a field has been set.

### GetDroppedRedirectUris

`func (o *CimdCheckResultEffective) GetDroppedRedirectUris() []string`

GetDroppedRedirectUris returns the DroppedRedirectUris field if non-nil, zero value otherwise.

### GetDroppedRedirectUrisOk

`func (o *CimdCheckResultEffective) GetDroppedRedirectUrisOk() (*[]string, bool)`

GetDroppedRedirectUrisOk returns a tuple with the DroppedRedirectUris field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDroppedRedirectUris

`func (o *CimdCheckResultEffective) SetDroppedRedirectUris(v []string)`

SetDroppedRedirectUris sets DroppedRedirectUris field to given value.

### HasDroppedRedirectUris

`func (o *CimdCheckResultEffective) HasDroppedRedirectUris() bool`

HasDroppedRedirectUris returns a boolean if a field has been set.

### GetGrantTypes

`func (o *CimdCheckResultEffective) GetGrantTypes() []string`

GetGrantTypes returns the GrantTypes field if non-nil, zero value otherwise.

### GetGrantTypesOk

`func (o *CimdCheckResultEffective) GetGrantTypesOk() (*[]string, bool)`

GetGrantTypesOk returns a tuple with the GrantTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantTypes

`func (o *CimdCheckResultEffective) SetGrantTypes(v []string)`

SetGrantTypes sets GrantTypes field to given value.

### HasGrantTypes

`func (o *CimdCheckResultEffective) HasGrantTypes() bool`

HasGrantTypes returns a boolean if a field has been set.

### GetScopes

`func (o *CimdCheckResultEffective) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *CimdCheckResultEffective) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *CimdCheckResultEffective) SetScopes(v []string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *CimdCheckResultEffective) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetDroppedScopes

`func (o *CimdCheckResultEffective) GetDroppedScopes() []string`

GetDroppedScopes returns the DroppedScopes field if non-nil, zero value otherwise.

### GetDroppedScopesOk

`func (o *CimdCheckResultEffective) GetDroppedScopesOk() (*[]string, bool)`

GetDroppedScopesOk returns a tuple with the DroppedScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDroppedScopes

`func (o *CimdCheckResultEffective) SetDroppedScopes(v []string)`

SetDroppedScopes sets DroppedScopes field to given value.

### HasDroppedScopes

`func (o *CimdCheckResultEffective) HasDroppedScopes() bool`

HasDroppedScopes returns a boolean if a field has been set.

### GetLogoUri

`func (o *CimdCheckResultEffective) GetLogoUri() string`

GetLogoUri returns the LogoUri field if non-nil, zero value otherwise.

### GetLogoUriOk

`func (o *CimdCheckResultEffective) GetLogoUriOk() (*string, bool)`

GetLogoUriOk returns a tuple with the LogoUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogoUri

`func (o *CimdCheckResultEffective) SetLogoUri(v string)`

SetLogoUri sets LogoUri field to given value.

### HasLogoUri

`func (o *CimdCheckResultEffective) HasLogoUri() bool`

HasLogoUri returns a boolean if a field has been set.

### SetLogoUriNil

`func (o *CimdCheckResultEffective) SetLogoUriNil(b bool)`

 SetLogoUriNil sets the value for LogoUri to be an explicit nil

### UnsetLogoUri
`func (o *CimdCheckResultEffective) UnsetLogoUri()`

UnsetLogoUri ensures that no value is present for LogoUri, not even an explicit nil
### GetClientUri

`func (o *CimdCheckResultEffective) GetClientUri() string`

GetClientUri returns the ClientUri field if non-nil, zero value otherwise.

### GetClientUriOk

`func (o *CimdCheckResultEffective) GetClientUriOk() (*string, bool)`

GetClientUriOk returns a tuple with the ClientUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientUri

`func (o *CimdCheckResultEffective) SetClientUri(v string)`

SetClientUri sets ClientUri field to given value.

### HasClientUri

`func (o *CimdCheckResultEffective) HasClientUri() bool`

HasClientUri returns a boolean if a field has been set.

### SetClientUriNil

`func (o *CimdCheckResultEffective) SetClientUriNil(b bool)`

 SetClientUriNil sets the value for ClientUri to be an explicit nil

### UnsetClientUri
`func (o *CimdCheckResultEffective) UnsetClientUri()`

UnsetClientUri ensures that no value is present for ClientUri, not even an explicit nil
### GetHasLoopbackRedirect

`func (o *CimdCheckResultEffective) GetHasLoopbackRedirect() bool`

GetHasLoopbackRedirect returns the HasLoopbackRedirect field if non-nil, zero value otherwise.

### GetHasLoopbackRedirectOk

`func (o *CimdCheckResultEffective) GetHasLoopbackRedirectOk() (*bool, bool)`

GetHasLoopbackRedirectOk returns a tuple with the HasLoopbackRedirect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHasLoopbackRedirect

`func (o *CimdCheckResultEffective) SetHasLoopbackRedirect(v bool)`

SetHasLoopbackRedirect sets HasLoopbackRedirect field to given value.

### HasHasLoopbackRedirect

`func (o *CimdCheckResultEffective) HasHasLoopbackRedirect() bool`

HasHasLoopbackRedirect returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


