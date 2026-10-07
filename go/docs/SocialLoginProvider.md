# SocialLoginProvider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Provider** | **string** |  | 
**DisplayName** | **string** |  | 
**Enabled** | **bool** |  | 
**BrandColor** | Pointer to **NullableString** |  | [optional] 
**IconUrl** | Pointer to **NullableString** |  | [optional] 
**JitProvisioningEnabled** | **bool** |  | 
**ClientId** | Pointer to **NullableString** | Detailed responses only | [optional] 
**CallbackUrl** | Pointer to **NullableString** | Detailed responses only | [optional] 
**RequestedScopes** | Pointer to **[]string** | Detailed responses only | [optional] 
**CustomClaims** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**ClaimMapping** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**ProviderConfig** | Pointer to **map[string]interface{}** | Detailed responses only; secrets redacted | [optional] 
**AuthorizationUrl** | Pointer to **NullableString** | Detailed responses only | [optional] 
**TokenUrl** | Pointer to **NullableString** | Detailed responses only | [optional] 
**UserInfoUrl** | Pointer to **NullableString** | Detailed responses only | [optional] 
**DefaultRoles** | Pointer to [**[]RoleRef**](RoleRef.md) | Detailed responses only | [optional] 

## Methods

### NewSocialLoginProvider

`func NewSocialLoginProvider(id int32, provider string, displayName string, enabled bool, jitProvisioningEnabled bool, ) *SocialLoginProvider`

NewSocialLoginProvider instantiates a new SocialLoginProvider object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSocialLoginProviderWithDefaults

`func NewSocialLoginProviderWithDefaults() *SocialLoginProvider`

NewSocialLoginProviderWithDefaults instantiates a new SocialLoginProvider object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SocialLoginProvider) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SocialLoginProvider) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SocialLoginProvider) SetId(v int32)`

SetId sets Id field to given value.


### GetProvider

`func (o *SocialLoginProvider) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *SocialLoginProvider) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *SocialLoginProvider) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetDisplayName

`func (o *SocialLoginProvider) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *SocialLoginProvider) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *SocialLoginProvider) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.


### GetEnabled

`func (o *SocialLoginProvider) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *SocialLoginProvider) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *SocialLoginProvider) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.


### GetBrandColor

`func (o *SocialLoginProvider) GetBrandColor() string`

GetBrandColor returns the BrandColor field if non-nil, zero value otherwise.

### GetBrandColorOk

`func (o *SocialLoginProvider) GetBrandColorOk() (*string, bool)`

GetBrandColorOk returns a tuple with the BrandColor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrandColor

`func (o *SocialLoginProvider) SetBrandColor(v string)`

SetBrandColor sets BrandColor field to given value.

### HasBrandColor

`func (o *SocialLoginProvider) HasBrandColor() bool`

HasBrandColor returns a boolean if a field has been set.

### SetBrandColorNil

`func (o *SocialLoginProvider) SetBrandColorNil(b bool)`

 SetBrandColorNil sets the value for BrandColor to be an explicit nil

### UnsetBrandColor
`func (o *SocialLoginProvider) UnsetBrandColor()`

UnsetBrandColor ensures that no value is present for BrandColor, not even an explicit nil
### GetIconUrl

`func (o *SocialLoginProvider) GetIconUrl() string`

GetIconUrl returns the IconUrl field if non-nil, zero value otherwise.

### GetIconUrlOk

`func (o *SocialLoginProvider) GetIconUrlOk() (*string, bool)`

GetIconUrlOk returns a tuple with the IconUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconUrl

`func (o *SocialLoginProvider) SetIconUrl(v string)`

SetIconUrl sets IconUrl field to given value.

### HasIconUrl

`func (o *SocialLoginProvider) HasIconUrl() bool`

HasIconUrl returns a boolean if a field has been set.

### SetIconUrlNil

`func (o *SocialLoginProvider) SetIconUrlNil(b bool)`

 SetIconUrlNil sets the value for IconUrl to be an explicit nil

### UnsetIconUrl
`func (o *SocialLoginProvider) UnsetIconUrl()`

UnsetIconUrl ensures that no value is present for IconUrl, not even an explicit nil
### GetJitProvisioningEnabled

`func (o *SocialLoginProvider) GetJitProvisioningEnabled() bool`

GetJitProvisioningEnabled returns the JitProvisioningEnabled field if non-nil, zero value otherwise.

### GetJitProvisioningEnabledOk

`func (o *SocialLoginProvider) GetJitProvisioningEnabledOk() (*bool, bool)`

GetJitProvisioningEnabledOk returns a tuple with the JitProvisioningEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJitProvisioningEnabled

`func (o *SocialLoginProvider) SetJitProvisioningEnabled(v bool)`

SetJitProvisioningEnabled sets JitProvisioningEnabled field to given value.


### GetClientId

`func (o *SocialLoginProvider) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *SocialLoginProvider) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *SocialLoginProvider) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *SocialLoginProvider) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### SetClientIdNil

`func (o *SocialLoginProvider) SetClientIdNil(b bool)`

 SetClientIdNil sets the value for ClientId to be an explicit nil

### UnsetClientId
`func (o *SocialLoginProvider) UnsetClientId()`

UnsetClientId ensures that no value is present for ClientId, not even an explicit nil
### GetCallbackUrl

`func (o *SocialLoginProvider) GetCallbackUrl() string`

GetCallbackUrl returns the CallbackUrl field if non-nil, zero value otherwise.

### GetCallbackUrlOk

`func (o *SocialLoginProvider) GetCallbackUrlOk() (*string, bool)`

GetCallbackUrlOk returns a tuple with the CallbackUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCallbackUrl

`func (o *SocialLoginProvider) SetCallbackUrl(v string)`

SetCallbackUrl sets CallbackUrl field to given value.

### HasCallbackUrl

`func (o *SocialLoginProvider) HasCallbackUrl() bool`

HasCallbackUrl returns a boolean if a field has been set.

### SetCallbackUrlNil

`func (o *SocialLoginProvider) SetCallbackUrlNil(b bool)`

 SetCallbackUrlNil sets the value for CallbackUrl to be an explicit nil

### UnsetCallbackUrl
`func (o *SocialLoginProvider) UnsetCallbackUrl()`

UnsetCallbackUrl ensures that no value is present for CallbackUrl, not even an explicit nil
### GetRequestedScopes

`func (o *SocialLoginProvider) GetRequestedScopes() []string`

GetRequestedScopes returns the RequestedScopes field if non-nil, zero value otherwise.

### GetRequestedScopesOk

`func (o *SocialLoginProvider) GetRequestedScopesOk() (*[]string, bool)`

GetRequestedScopesOk returns a tuple with the RequestedScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestedScopes

`func (o *SocialLoginProvider) SetRequestedScopes(v []string)`

SetRequestedScopes sets RequestedScopes field to given value.

### HasRequestedScopes

`func (o *SocialLoginProvider) HasRequestedScopes() bool`

HasRequestedScopes returns a boolean if a field has been set.

### SetRequestedScopesNil

`func (o *SocialLoginProvider) SetRequestedScopesNil(b bool)`

 SetRequestedScopesNil sets the value for RequestedScopes to be an explicit nil

### UnsetRequestedScopes
`func (o *SocialLoginProvider) UnsetRequestedScopes()`

UnsetRequestedScopes ensures that no value is present for RequestedScopes, not even an explicit nil
### GetCustomClaims

`func (o *SocialLoginProvider) GetCustomClaims() map[string]interface{}`

GetCustomClaims returns the CustomClaims field if non-nil, zero value otherwise.

### GetCustomClaimsOk

`func (o *SocialLoginProvider) GetCustomClaimsOk() (*map[string]interface{}, bool)`

GetCustomClaimsOk returns a tuple with the CustomClaims field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomClaims

`func (o *SocialLoginProvider) SetCustomClaims(v map[string]interface{})`

SetCustomClaims sets CustomClaims field to given value.

### HasCustomClaims

`func (o *SocialLoginProvider) HasCustomClaims() bool`

HasCustomClaims returns a boolean if a field has been set.

### SetCustomClaimsNil

`func (o *SocialLoginProvider) SetCustomClaimsNil(b bool)`

 SetCustomClaimsNil sets the value for CustomClaims to be an explicit nil

### UnsetCustomClaims
`func (o *SocialLoginProvider) UnsetCustomClaims()`

UnsetCustomClaims ensures that no value is present for CustomClaims, not even an explicit nil
### GetClaimMapping

`func (o *SocialLoginProvider) GetClaimMapping() map[string]interface{}`

GetClaimMapping returns the ClaimMapping field if non-nil, zero value otherwise.

### GetClaimMappingOk

`func (o *SocialLoginProvider) GetClaimMappingOk() (*map[string]interface{}, bool)`

GetClaimMappingOk returns a tuple with the ClaimMapping field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClaimMapping

`func (o *SocialLoginProvider) SetClaimMapping(v map[string]interface{})`

SetClaimMapping sets ClaimMapping field to given value.

### HasClaimMapping

`func (o *SocialLoginProvider) HasClaimMapping() bool`

HasClaimMapping returns a boolean if a field has been set.

### SetClaimMappingNil

`func (o *SocialLoginProvider) SetClaimMappingNil(b bool)`

 SetClaimMappingNil sets the value for ClaimMapping to be an explicit nil

### UnsetClaimMapping
`func (o *SocialLoginProvider) UnsetClaimMapping()`

UnsetClaimMapping ensures that no value is present for ClaimMapping, not even an explicit nil
### GetProviderConfig

`func (o *SocialLoginProvider) GetProviderConfig() map[string]interface{}`

GetProviderConfig returns the ProviderConfig field if non-nil, zero value otherwise.

### GetProviderConfigOk

`func (o *SocialLoginProvider) GetProviderConfigOk() (*map[string]interface{}, bool)`

GetProviderConfigOk returns a tuple with the ProviderConfig field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderConfig

`func (o *SocialLoginProvider) SetProviderConfig(v map[string]interface{})`

SetProviderConfig sets ProviderConfig field to given value.

### HasProviderConfig

`func (o *SocialLoginProvider) HasProviderConfig() bool`

HasProviderConfig returns a boolean if a field has been set.

### SetProviderConfigNil

`func (o *SocialLoginProvider) SetProviderConfigNil(b bool)`

 SetProviderConfigNil sets the value for ProviderConfig to be an explicit nil

### UnsetProviderConfig
`func (o *SocialLoginProvider) UnsetProviderConfig()`

UnsetProviderConfig ensures that no value is present for ProviderConfig, not even an explicit nil
### GetAuthorizationUrl

`func (o *SocialLoginProvider) GetAuthorizationUrl() string`

GetAuthorizationUrl returns the AuthorizationUrl field if non-nil, zero value otherwise.

### GetAuthorizationUrlOk

`func (o *SocialLoginProvider) GetAuthorizationUrlOk() (*string, bool)`

GetAuthorizationUrlOk returns a tuple with the AuthorizationUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthorizationUrl

`func (o *SocialLoginProvider) SetAuthorizationUrl(v string)`

SetAuthorizationUrl sets AuthorizationUrl field to given value.

### HasAuthorizationUrl

`func (o *SocialLoginProvider) HasAuthorizationUrl() bool`

HasAuthorizationUrl returns a boolean if a field has been set.

### SetAuthorizationUrlNil

`func (o *SocialLoginProvider) SetAuthorizationUrlNil(b bool)`

 SetAuthorizationUrlNil sets the value for AuthorizationUrl to be an explicit nil

### UnsetAuthorizationUrl
`func (o *SocialLoginProvider) UnsetAuthorizationUrl()`

UnsetAuthorizationUrl ensures that no value is present for AuthorizationUrl, not even an explicit nil
### GetTokenUrl

`func (o *SocialLoginProvider) GetTokenUrl() string`

GetTokenUrl returns the TokenUrl field if non-nil, zero value otherwise.

### GetTokenUrlOk

`func (o *SocialLoginProvider) GetTokenUrlOk() (*string, bool)`

GetTokenUrlOk returns a tuple with the TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenUrl

`func (o *SocialLoginProvider) SetTokenUrl(v string)`

SetTokenUrl sets TokenUrl field to given value.

### HasTokenUrl

`func (o *SocialLoginProvider) HasTokenUrl() bool`

HasTokenUrl returns a boolean if a field has been set.

### SetTokenUrlNil

`func (o *SocialLoginProvider) SetTokenUrlNil(b bool)`

 SetTokenUrlNil sets the value for TokenUrl to be an explicit nil

### UnsetTokenUrl
`func (o *SocialLoginProvider) UnsetTokenUrl()`

UnsetTokenUrl ensures that no value is present for TokenUrl, not even an explicit nil
### GetUserInfoUrl

`func (o *SocialLoginProvider) GetUserInfoUrl() string`

GetUserInfoUrl returns the UserInfoUrl field if non-nil, zero value otherwise.

### GetUserInfoUrlOk

`func (o *SocialLoginProvider) GetUserInfoUrlOk() (*string, bool)`

GetUserInfoUrlOk returns a tuple with the UserInfoUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserInfoUrl

`func (o *SocialLoginProvider) SetUserInfoUrl(v string)`

SetUserInfoUrl sets UserInfoUrl field to given value.

### HasUserInfoUrl

`func (o *SocialLoginProvider) HasUserInfoUrl() bool`

HasUserInfoUrl returns a boolean if a field has been set.

### SetUserInfoUrlNil

`func (o *SocialLoginProvider) SetUserInfoUrlNil(b bool)`

 SetUserInfoUrlNil sets the value for UserInfoUrl to be an explicit nil

### UnsetUserInfoUrl
`func (o *SocialLoginProvider) UnsetUserInfoUrl()`

UnsetUserInfoUrl ensures that no value is present for UserInfoUrl, not even an explicit nil
### GetDefaultRoles

`func (o *SocialLoginProvider) GetDefaultRoles() []RoleRef`

GetDefaultRoles returns the DefaultRoles field if non-nil, zero value otherwise.

### GetDefaultRolesOk

`func (o *SocialLoginProvider) GetDefaultRolesOk() (*[]RoleRef, bool)`

GetDefaultRolesOk returns a tuple with the DefaultRoles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultRoles

`func (o *SocialLoginProvider) SetDefaultRoles(v []RoleRef)`

SetDefaultRoles sets DefaultRoles field to given value.

### HasDefaultRoles

`func (o *SocialLoginProvider) HasDefaultRoles() bool`

HasDefaultRoles returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


