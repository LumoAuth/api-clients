# AdminSocialProvidersCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **string** | The provider key, for example google, microsoft, github or apple. | 
**ClientId** | Pointer to **string** |  | [optional] 
**ClientSecret** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**Enabled** | Pointer to **bool** |  | [optional] 
**EnableForOAuthApps** | Pointer to **bool** |  | [optional] 
**RequestedScopes** | Pointer to **[]string** |  | [optional] 
**ClaimMapping** | Pointer to **map[string]interface{}** |  | [optional] 
**ProviderConfig** | Pointer to **map[string]interface{}** |  | [optional] 
**DefaultRoles** | Pointer to **[]string** | Role slugs; roles that open the portal are refused. | [optional] 
**BrandColor** | Pointer to **string** |  | [optional] 
**IconUrl** | Pointer to **string** |  | [optional] 
**AuthorizationUrl** | Pointer to **string** |  | [optional] 
**TokenUrl** | Pointer to **string** |  | [optional] 
**UserInfoUrl** | Pointer to **string** |  | [optional] 
**HostedDomain** | Pointer to **string** | Google: Workspace domain. | [optional] 
**TenantId** | Pointer to **string** | Microsoft: Entra tenant. | [optional] 
**IssuerUrl** | Pointer to **string** |  | [optional] 
**TeamId** | Pointer to **string** | Apple. | [optional] 
**KeyId** | Pointer to **string** | Apple. | [optional] 
**PrivateKey** | Pointer to **string** | Apple: the .p8 key. | [optional] 

## Methods

### NewAdminSocialProvidersCreateRequest

`func NewAdminSocialProvidersCreateRequest(provider string, ) *AdminSocialProvidersCreateRequest`

NewAdminSocialProvidersCreateRequest instantiates a new AdminSocialProvidersCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSocialProvidersCreateRequestWithDefaults

`func NewAdminSocialProvidersCreateRequestWithDefaults() *AdminSocialProvidersCreateRequest`

NewAdminSocialProvidersCreateRequestWithDefaults instantiates a new AdminSocialProvidersCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProvider

`func (o *AdminSocialProvidersCreateRequest) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AdminSocialProvidersCreateRequest) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AdminSocialProvidersCreateRequest) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetClientId

`func (o *AdminSocialProvidersCreateRequest) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *AdminSocialProvidersCreateRequest) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *AdminSocialProvidersCreateRequest) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *AdminSocialProvidersCreateRequest) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetClientSecret

`func (o *AdminSocialProvidersCreateRequest) GetClientSecret() string`

GetClientSecret returns the ClientSecret field if non-nil, zero value otherwise.

### GetClientSecretOk

`func (o *AdminSocialProvidersCreateRequest) GetClientSecretOk() (*string, bool)`

GetClientSecretOk returns a tuple with the ClientSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientSecret

`func (o *AdminSocialProvidersCreateRequest) SetClientSecret(v string)`

SetClientSecret sets ClientSecret field to given value.

### HasClientSecret

`func (o *AdminSocialProvidersCreateRequest) HasClientSecret() bool`

HasClientSecret returns a boolean if a field has been set.

### GetDisplayName

`func (o *AdminSocialProvidersCreateRequest) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *AdminSocialProvidersCreateRequest) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *AdminSocialProvidersCreateRequest) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *AdminSocialProvidersCreateRequest) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEnabled

`func (o *AdminSocialProvidersCreateRequest) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *AdminSocialProvidersCreateRequest) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *AdminSocialProvidersCreateRequest) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *AdminSocialProvidersCreateRequest) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetEnableForOAuthApps

`func (o *AdminSocialProvidersCreateRequest) GetEnableForOAuthApps() bool`

GetEnableForOAuthApps returns the EnableForOAuthApps field if non-nil, zero value otherwise.

### GetEnableForOAuthAppsOk

`func (o *AdminSocialProvidersCreateRequest) GetEnableForOAuthAppsOk() (*bool, bool)`

GetEnableForOAuthAppsOk returns a tuple with the EnableForOAuthApps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnableForOAuthApps

`func (o *AdminSocialProvidersCreateRequest) SetEnableForOAuthApps(v bool)`

SetEnableForOAuthApps sets EnableForOAuthApps field to given value.

### HasEnableForOAuthApps

`func (o *AdminSocialProvidersCreateRequest) HasEnableForOAuthApps() bool`

HasEnableForOAuthApps returns a boolean if a field has been set.

### GetRequestedScopes

`func (o *AdminSocialProvidersCreateRequest) GetRequestedScopes() []string`

GetRequestedScopes returns the RequestedScopes field if non-nil, zero value otherwise.

### GetRequestedScopesOk

`func (o *AdminSocialProvidersCreateRequest) GetRequestedScopesOk() (*[]string, bool)`

GetRequestedScopesOk returns a tuple with the RequestedScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestedScopes

`func (o *AdminSocialProvidersCreateRequest) SetRequestedScopes(v []string)`

SetRequestedScopes sets RequestedScopes field to given value.

### HasRequestedScopes

`func (o *AdminSocialProvidersCreateRequest) HasRequestedScopes() bool`

HasRequestedScopes returns a boolean if a field has been set.

### GetClaimMapping

`func (o *AdminSocialProvidersCreateRequest) GetClaimMapping() map[string]interface{}`

GetClaimMapping returns the ClaimMapping field if non-nil, zero value otherwise.

### GetClaimMappingOk

`func (o *AdminSocialProvidersCreateRequest) GetClaimMappingOk() (*map[string]interface{}, bool)`

GetClaimMappingOk returns a tuple with the ClaimMapping field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimMapping

`func (o *AdminSocialProvidersCreateRequest) SetClaimMapping(v map[string]interface{})`

SetClaimMapping sets ClaimMapping field to given value.

### HasClaimMapping

`func (o *AdminSocialProvidersCreateRequest) HasClaimMapping() bool`

HasClaimMapping returns a boolean if a field has been set.

### GetProviderConfig

`func (o *AdminSocialProvidersCreateRequest) GetProviderConfig() map[string]interface{}`

GetProviderConfig returns the ProviderConfig field if non-nil, zero value otherwise.

### GetProviderConfigOk

`func (o *AdminSocialProvidersCreateRequest) GetProviderConfigOk() (*map[string]interface{}, bool)`

GetProviderConfigOk returns a tuple with the ProviderConfig field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderConfig

`func (o *AdminSocialProvidersCreateRequest) SetProviderConfig(v map[string]interface{})`

SetProviderConfig sets ProviderConfig field to given value.

### HasProviderConfig

`func (o *AdminSocialProvidersCreateRequest) HasProviderConfig() bool`

HasProviderConfig returns a boolean if a field has been set.

### GetDefaultRoles

`func (o *AdminSocialProvidersCreateRequest) GetDefaultRoles() []string`

GetDefaultRoles returns the DefaultRoles field if non-nil, zero value otherwise.

### GetDefaultRolesOk

`func (o *AdminSocialProvidersCreateRequest) GetDefaultRolesOk() (*[]string, bool)`

GetDefaultRolesOk returns a tuple with the DefaultRoles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultRoles

`func (o *AdminSocialProvidersCreateRequest) SetDefaultRoles(v []string)`

SetDefaultRoles sets DefaultRoles field to given value.

### HasDefaultRoles

`func (o *AdminSocialProvidersCreateRequest) HasDefaultRoles() bool`

HasDefaultRoles returns a boolean if a field has been set.

### GetBrandColor

`func (o *AdminSocialProvidersCreateRequest) GetBrandColor() string`

GetBrandColor returns the BrandColor field if non-nil, zero value otherwise.

### GetBrandColorOk

`func (o *AdminSocialProvidersCreateRequest) GetBrandColorOk() (*string, bool)`

GetBrandColorOk returns a tuple with the BrandColor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrandColor

`func (o *AdminSocialProvidersCreateRequest) SetBrandColor(v string)`

SetBrandColor sets BrandColor field to given value.

### HasBrandColor

`func (o *AdminSocialProvidersCreateRequest) HasBrandColor() bool`

HasBrandColor returns a boolean if a field has been set.

### GetIconUrl

`func (o *AdminSocialProvidersCreateRequest) GetIconUrl() string`

GetIconUrl returns the IconUrl field if non-nil, zero value otherwise.

### GetIconUrlOk

`func (o *AdminSocialProvidersCreateRequest) GetIconUrlOk() (*string, bool)`

GetIconUrlOk returns a tuple with the IconUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconUrl

`func (o *AdminSocialProvidersCreateRequest) SetIconUrl(v string)`

SetIconUrl sets IconUrl field to given value.

### HasIconUrl

`func (o *AdminSocialProvidersCreateRequest) HasIconUrl() bool`

HasIconUrl returns a boolean if a field has been set.

### GetAuthorizationUrl

`func (o *AdminSocialProvidersCreateRequest) GetAuthorizationUrl() string`

GetAuthorizationUrl returns the AuthorizationUrl field if non-nil, zero value otherwise.

### GetAuthorizationUrlOk

`func (o *AdminSocialProvidersCreateRequest) GetAuthorizationUrlOk() (*string, bool)`

GetAuthorizationUrlOk returns a tuple with the AuthorizationUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationUrl

`func (o *AdminSocialProvidersCreateRequest) SetAuthorizationUrl(v string)`

SetAuthorizationUrl sets AuthorizationUrl field to given value.

### HasAuthorizationUrl

`func (o *AdminSocialProvidersCreateRequest) HasAuthorizationUrl() bool`

HasAuthorizationUrl returns a boolean if a field has been set.

### GetTokenUrl

`func (o *AdminSocialProvidersCreateRequest) GetTokenUrl() string`

GetTokenUrl returns the TokenUrl field if non-nil, zero value otherwise.

### GetTokenUrlOk

`func (o *AdminSocialProvidersCreateRequest) GetTokenUrlOk() (*string, bool)`

GetTokenUrlOk returns a tuple with the TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenUrl

`func (o *AdminSocialProvidersCreateRequest) SetTokenUrl(v string)`

SetTokenUrl sets TokenUrl field to given value.

### HasTokenUrl

`func (o *AdminSocialProvidersCreateRequest) HasTokenUrl() bool`

HasTokenUrl returns a boolean if a field has been set.

### GetUserInfoUrl

`func (o *AdminSocialProvidersCreateRequest) GetUserInfoUrl() string`

GetUserInfoUrl returns the UserInfoUrl field if non-nil, zero value otherwise.

### GetUserInfoUrlOk

`func (o *AdminSocialProvidersCreateRequest) GetUserInfoUrlOk() (*string, bool)`

GetUserInfoUrlOk returns a tuple with the UserInfoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserInfoUrl

`func (o *AdminSocialProvidersCreateRequest) SetUserInfoUrl(v string)`

SetUserInfoUrl sets UserInfoUrl field to given value.

### HasUserInfoUrl

`func (o *AdminSocialProvidersCreateRequest) HasUserInfoUrl() bool`

HasUserInfoUrl returns a boolean if a field has been set.

### GetHostedDomain

`func (o *AdminSocialProvidersCreateRequest) GetHostedDomain() string`

GetHostedDomain returns the HostedDomain field if non-nil, zero value otherwise.

### GetHostedDomainOk

`func (o *AdminSocialProvidersCreateRequest) GetHostedDomainOk() (*string, bool)`

GetHostedDomainOk returns a tuple with the HostedDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostedDomain

`func (o *AdminSocialProvidersCreateRequest) SetHostedDomain(v string)`

SetHostedDomain sets HostedDomain field to given value.

### HasHostedDomain

`func (o *AdminSocialProvidersCreateRequest) HasHostedDomain() bool`

HasHostedDomain returns a boolean if a field has been set.

### GetTenantId

`func (o *AdminSocialProvidersCreateRequest) GetTenantId() string`

GetTenantId returns the TenantId field if non-nil, zero value otherwise.

### GetTenantIdOk

`func (o *AdminSocialProvidersCreateRequest) GetTenantIdOk() (*string, bool)`

GetTenantIdOk returns a tuple with the TenantId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenantId

`func (o *AdminSocialProvidersCreateRequest) SetTenantId(v string)`

SetTenantId sets TenantId field to given value.

### HasTenantId

`func (o *AdminSocialProvidersCreateRequest) HasTenantId() bool`

HasTenantId returns a boolean if a field has been set.

### GetIssuerUrl

`func (o *AdminSocialProvidersCreateRequest) GetIssuerUrl() string`

GetIssuerUrl returns the IssuerUrl field if non-nil, zero value otherwise.

### GetIssuerUrlOk

`func (o *AdminSocialProvidersCreateRequest) GetIssuerUrlOk() (*string, bool)`

GetIssuerUrlOk returns a tuple with the IssuerUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuerUrl

`func (o *AdminSocialProvidersCreateRequest) SetIssuerUrl(v string)`

SetIssuerUrl sets IssuerUrl field to given value.

### HasIssuerUrl

`func (o *AdminSocialProvidersCreateRequest) HasIssuerUrl() bool`

HasIssuerUrl returns a boolean if a field has been set.

### GetTeamId

`func (o *AdminSocialProvidersCreateRequest) GetTeamId() string`

GetTeamId returns the TeamId field if non-nil, zero value otherwise.

### GetTeamIdOk

`func (o *AdminSocialProvidersCreateRequest) GetTeamIdOk() (*string, bool)`

GetTeamIdOk returns a tuple with the TeamId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTeamId

`func (o *AdminSocialProvidersCreateRequest) SetTeamId(v string)`

SetTeamId sets TeamId field to given value.

### HasTeamId

`func (o *AdminSocialProvidersCreateRequest) HasTeamId() bool`

HasTeamId returns a boolean if a field has been set.

### GetKeyId

`func (o *AdminSocialProvidersCreateRequest) GetKeyId() string`

GetKeyId returns the KeyId field if non-nil, zero value otherwise.

### GetKeyIdOk

`func (o *AdminSocialProvidersCreateRequest) GetKeyIdOk() (*string, bool)`

GetKeyIdOk returns a tuple with the KeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyId

`func (o *AdminSocialProvidersCreateRequest) SetKeyId(v string)`

SetKeyId sets KeyId field to given value.

### HasKeyId

`func (o *AdminSocialProvidersCreateRequest) HasKeyId() bool`

HasKeyId returns a boolean if a field has been set.

### GetPrivateKey

`func (o *AdminSocialProvidersCreateRequest) GetPrivateKey() string`

GetPrivateKey returns the PrivateKey field if non-nil, zero value otherwise.

### GetPrivateKeyOk

`func (o *AdminSocialProvidersCreateRequest) GetPrivateKeyOk() (*string, bool)`

GetPrivateKeyOk returns a tuple with the PrivateKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivateKey

`func (o *AdminSocialProvidersCreateRequest) SetPrivateKey(v string)`

SetPrivateKey sets PrivateKey field to given value.

### HasPrivateKey

`func (o *AdminSocialProvidersCreateRequest) HasPrivateKey() bool`

HasPrivateKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


