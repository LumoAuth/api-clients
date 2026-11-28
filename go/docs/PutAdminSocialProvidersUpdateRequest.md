# PutAdminSocialProvidersUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | Pointer to **string** |  | [optional] 
**ClientSecret** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**Enabled** | Pointer to **bool** |  | [optional] 
**EnableForOAuthApps** | Pointer to **bool** |  | [optional] 
**RequestedScopes** | Pointer to **[]string** |  | [optional] 
**ClaimMapping** | Pointer to **map[string]interface{}** |  | [optional] 
**ProviderConfig** | Pointer to **map[string]interface{}** |  | [optional] 
**DefaultRoles** | Pointer to **[]string** |  | [optional] 
**BrandColor** | Pointer to **string** |  | [optional] 
**IconUrl** | Pointer to **string** |  | [optional] 
**AuthorizationUrl** | Pointer to **string** |  | [optional] 
**TokenUrl** | Pointer to **string** |  | [optional] 
**UserInfoUrl** | Pointer to **string** |  | [optional] 
**HostedDomain** | Pointer to **string** |  | [optional] 
**TenantId** | Pointer to **string** |  | [optional] 
**IssuerUrl** | Pointer to **string** |  | [optional] 
**TeamId** | Pointer to **string** |  | [optional] 
**KeyId** | Pointer to **string** |  | [optional] 
**PrivateKey** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminSocialProvidersUpdateRequest

`func NewPutAdminSocialProvidersUpdateRequest() *PutAdminSocialProvidersUpdateRequest`

NewPutAdminSocialProvidersUpdateRequest instantiates a new PutAdminSocialProvidersUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSocialProvidersUpdateRequestWithDefaults

`func NewPutAdminSocialProvidersUpdateRequestWithDefaults() *PutAdminSocialProvidersUpdateRequest`

NewPutAdminSocialProvidersUpdateRequestWithDefaults instantiates a new PutAdminSocialProvidersUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientId

`func (o *PutAdminSocialProvidersUpdateRequest) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *PutAdminSocialProvidersUpdateRequest) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *PutAdminSocialProvidersUpdateRequest) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetClientSecret

`func (o *PutAdminSocialProvidersUpdateRequest) GetClientSecret() string`

GetClientSecret returns the ClientSecret field if non-nil, zero value otherwise.

### GetClientSecretOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetClientSecretOk() (*string, bool)`

GetClientSecretOk returns a tuple with the ClientSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientSecret

`func (o *PutAdminSocialProvidersUpdateRequest) SetClientSecret(v string)`

SetClientSecret sets ClientSecret field to given value.

### HasClientSecret

`func (o *PutAdminSocialProvidersUpdateRequest) HasClientSecret() bool`

HasClientSecret returns a boolean if a field has been set.

### GetDisplayName

`func (o *PutAdminSocialProvidersUpdateRequest) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *PutAdminSocialProvidersUpdateRequest) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *PutAdminSocialProvidersUpdateRequest) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEnabled

`func (o *PutAdminSocialProvidersUpdateRequest) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *PutAdminSocialProvidersUpdateRequest) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *PutAdminSocialProvidersUpdateRequest) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetEnableForOAuthApps

`func (o *PutAdminSocialProvidersUpdateRequest) GetEnableForOAuthApps() bool`

GetEnableForOAuthApps returns the EnableForOAuthApps field if non-nil, zero value otherwise.

### GetEnableForOAuthAppsOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetEnableForOAuthAppsOk() (*bool, bool)`

GetEnableForOAuthAppsOk returns a tuple with the EnableForOAuthApps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnableForOAuthApps

`func (o *PutAdminSocialProvidersUpdateRequest) SetEnableForOAuthApps(v bool)`

SetEnableForOAuthApps sets EnableForOAuthApps field to given value.

### HasEnableForOAuthApps

`func (o *PutAdminSocialProvidersUpdateRequest) HasEnableForOAuthApps() bool`

HasEnableForOAuthApps returns a boolean if a field has been set.

### GetRequestedScopes

`func (o *PutAdminSocialProvidersUpdateRequest) GetRequestedScopes() []string`

GetRequestedScopes returns the RequestedScopes field if non-nil, zero value otherwise.

### GetRequestedScopesOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetRequestedScopesOk() (*[]string, bool)`

GetRequestedScopesOk returns a tuple with the RequestedScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestedScopes

`func (o *PutAdminSocialProvidersUpdateRequest) SetRequestedScopes(v []string)`

SetRequestedScopes sets RequestedScopes field to given value.

### HasRequestedScopes

`func (o *PutAdminSocialProvidersUpdateRequest) HasRequestedScopes() bool`

HasRequestedScopes returns a boolean if a field has been set.

### GetClaimMapping

`func (o *PutAdminSocialProvidersUpdateRequest) GetClaimMapping() map[string]interface{}`

GetClaimMapping returns the ClaimMapping field if non-nil, zero value otherwise.

### GetClaimMappingOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetClaimMappingOk() (*map[string]interface{}, bool)`

GetClaimMappingOk returns a tuple with the ClaimMapping field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimMapping

`func (o *PutAdminSocialProvidersUpdateRequest) SetClaimMapping(v map[string]interface{})`

SetClaimMapping sets ClaimMapping field to given value.

### HasClaimMapping

`func (o *PutAdminSocialProvidersUpdateRequest) HasClaimMapping() bool`

HasClaimMapping returns a boolean if a field has been set.

### GetProviderConfig

`func (o *PutAdminSocialProvidersUpdateRequest) GetProviderConfig() map[string]interface{}`

GetProviderConfig returns the ProviderConfig field if non-nil, zero value otherwise.

### GetProviderConfigOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetProviderConfigOk() (*map[string]interface{}, bool)`

GetProviderConfigOk returns a tuple with the ProviderConfig field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderConfig

`func (o *PutAdminSocialProvidersUpdateRequest) SetProviderConfig(v map[string]interface{})`

SetProviderConfig sets ProviderConfig field to given value.

### HasProviderConfig

`func (o *PutAdminSocialProvidersUpdateRequest) HasProviderConfig() bool`

HasProviderConfig returns a boolean if a field has been set.

### GetDefaultRoles

`func (o *PutAdminSocialProvidersUpdateRequest) GetDefaultRoles() []string`

GetDefaultRoles returns the DefaultRoles field if non-nil, zero value otherwise.

### GetDefaultRolesOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetDefaultRolesOk() (*[]string, bool)`

GetDefaultRolesOk returns a tuple with the DefaultRoles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultRoles

`func (o *PutAdminSocialProvidersUpdateRequest) SetDefaultRoles(v []string)`

SetDefaultRoles sets DefaultRoles field to given value.

### HasDefaultRoles

`func (o *PutAdminSocialProvidersUpdateRequest) HasDefaultRoles() bool`

HasDefaultRoles returns a boolean if a field has been set.

### GetBrandColor

`func (o *PutAdminSocialProvidersUpdateRequest) GetBrandColor() string`

GetBrandColor returns the BrandColor field if non-nil, zero value otherwise.

### GetBrandColorOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetBrandColorOk() (*string, bool)`

GetBrandColorOk returns a tuple with the BrandColor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrandColor

`func (o *PutAdminSocialProvidersUpdateRequest) SetBrandColor(v string)`

SetBrandColor sets BrandColor field to given value.

### HasBrandColor

`func (o *PutAdminSocialProvidersUpdateRequest) HasBrandColor() bool`

HasBrandColor returns a boolean if a field has been set.

### GetIconUrl

`func (o *PutAdminSocialProvidersUpdateRequest) GetIconUrl() string`

GetIconUrl returns the IconUrl field if non-nil, zero value otherwise.

### GetIconUrlOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetIconUrlOk() (*string, bool)`

GetIconUrlOk returns a tuple with the IconUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconUrl

`func (o *PutAdminSocialProvidersUpdateRequest) SetIconUrl(v string)`

SetIconUrl sets IconUrl field to given value.

### HasIconUrl

`func (o *PutAdminSocialProvidersUpdateRequest) HasIconUrl() bool`

HasIconUrl returns a boolean if a field has been set.

### GetAuthorizationUrl

`func (o *PutAdminSocialProvidersUpdateRequest) GetAuthorizationUrl() string`

GetAuthorizationUrl returns the AuthorizationUrl field if non-nil, zero value otherwise.

### GetAuthorizationUrlOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetAuthorizationUrlOk() (*string, bool)`

GetAuthorizationUrlOk returns a tuple with the AuthorizationUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationUrl

`func (o *PutAdminSocialProvidersUpdateRequest) SetAuthorizationUrl(v string)`

SetAuthorizationUrl sets AuthorizationUrl field to given value.

### HasAuthorizationUrl

`func (o *PutAdminSocialProvidersUpdateRequest) HasAuthorizationUrl() bool`

HasAuthorizationUrl returns a boolean if a field has been set.

### GetTokenUrl

`func (o *PutAdminSocialProvidersUpdateRequest) GetTokenUrl() string`

GetTokenUrl returns the TokenUrl field if non-nil, zero value otherwise.

### GetTokenUrlOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetTokenUrlOk() (*string, bool)`

GetTokenUrlOk returns a tuple with the TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenUrl

`func (o *PutAdminSocialProvidersUpdateRequest) SetTokenUrl(v string)`

SetTokenUrl sets TokenUrl field to given value.

### HasTokenUrl

`func (o *PutAdminSocialProvidersUpdateRequest) HasTokenUrl() bool`

HasTokenUrl returns a boolean if a field has been set.

### GetUserInfoUrl

`func (o *PutAdminSocialProvidersUpdateRequest) GetUserInfoUrl() string`

GetUserInfoUrl returns the UserInfoUrl field if non-nil, zero value otherwise.

### GetUserInfoUrlOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetUserInfoUrlOk() (*string, bool)`

GetUserInfoUrlOk returns a tuple with the UserInfoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserInfoUrl

`func (o *PutAdminSocialProvidersUpdateRequest) SetUserInfoUrl(v string)`

SetUserInfoUrl sets UserInfoUrl field to given value.

### HasUserInfoUrl

`func (o *PutAdminSocialProvidersUpdateRequest) HasUserInfoUrl() bool`

HasUserInfoUrl returns a boolean if a field has been set.

### GetHostedDomain

`func (o *PutAdminSocialProvidersUpdateRequest) GetHostedDomain() string`

GetHostedDomain returns the HostedDomain field if non-nil, zero value otherwise.

### GetHostedDomainOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetHostedDomainOk() (*string, bool)`

GetHostedDomainOk returns a tuple with the HostedDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostedDomain

`func (o *PutAdminSocialProvidersUpdateRequest) SetHostedDomain(v string)`

SetHostedDomain sets HostedDomain field to given value.

### HasHostedDomain

`func (o *PutAdminSocialProvidersUpdateRequest) HasHostedDomain() bool`

HasHostedDomain returns a boolean if a field has been set.

### GetTenantId

`func (o *PutAdminSocialProvidersUpdateRequest) GetTenantId() string`

GetTenantId returns the TenantId field if non-nil, zero value otherwise.

### GetTenantIdOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetTenantIdOk() (*string, bool)`

GetTenantIdOk returns a tuple with the TenantId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenantId

`func (o *PutAdminSocialProvidersUpdateRequest) SetTenantId(v string)`

SetTenantId sets TenantId field to given value.

### HasTenantId

`func (o *PutAdminSocialProvidersUpdateRequest) HasTenantId() bool`

HasTenantId returns a boolean if a field has been set.

### GetIssuerUrl

`func (o *PutAdminSocialProvidersUpdateRequest) GetIssuerUrl() string`

GetIssuerUrl returns the IssuerUrl field if non-nil, zero value otherwise.

### GetIssuerUrlOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetIssuerUrlOk() (*string, bool)`

GetIssuerUrlOk returns a tuple with the IssuerUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuerUrl

`func (o *PutAdminSocialProvidersUpdateRequest) SetIssuerUrl(v string)`

SetIssuerUrl sets IssuerUrl field to given value.

### HasIssuerUrl

`func (o *PutAdminSocialProvidersUpdateRequest) HasIssuerUrl() bool`

HasIssuerUrl returns a boolean if a field has been set.

### GetTeamId

`func (o *PutAdminSocialProvidersUpdateRequest) GetTeamId() string`

GetTeamId returns the TeamId field if non-nil, zero value otherwise.

### GetTeamIdOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetTeamIdOk() (*string, bool)`

GetTeamIdOk returns a tuple with the TeamId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeamId

`func (o *PutAdminSocialProvidersUpdateRequest) SetTeamId(v string)`

SetTeamId sets TeamId field to given value.

### HasTeamId

`func (o *PutAdminSocialProvidersUpdateRequest) HasTeamId() bool`

HasTeamId returns a boolean if a field has been set.

### GetKeyId

`func (o *PutAdminSocialProvidersUpdateRequest) GetKeyId() string`

GetKeyId returns the KeyId field if non-nil, zero value otherwise.

### GetKeyIdOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetKeyIdOk() (*string, bool)`

GetKeyIdOk returns a tuple with the KeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyId

`func (o *PutAdminSocialProvidersUpdateRequest) SetKeyId(v string)`

SetKeyId sets KeyId field to given value.

### HasKeyId

`func (o *PutAdminSocialProvidersUpdateRequest) HasKeyId() bool`

HasKeyId returns a boolean if a field has been set.

### GetPrivateKey

`func (o *PutAdminSocialProvidersUpdateRequest) GetPrivateKey() string`

GetPrivateKey returns the PrivateKey field if non-nil, zero value otherwise.

### GetPrivateKeyOk

`func (o *PutAdminSocialProvidersUpdateRequest) GetPrivateKeyOk() (*string, bool)`

GetPrivateKeyOk returns a tuple with the PrivateKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivateKey

`func (o *PutAdminSocialProvidersUpdateRequest) SetPrivateKey(v string)`

SetPrivateKey sets PrivateKey field to given value.

### HasPrivateKey

`func (o *PutAdminSocialProvidersUpdateRequest) HasPrivateKey() bool`

HasPrivateKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


