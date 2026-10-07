# AdminIdentitiesListResponseDataBindingsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] 
**IdpId** | Pointer to **NullableInt32** |  | [optional] 
**NameId** | Pointer to **NullableString** |  | [optional] 
**Legacy** | Pointer to **bool** |  | [optional] 
**LdapConfigId** | Pointer to **NullableInt32** |  | [optional] 
**Dn** | Pointer to **NullableString** |  | [optional] 
**Provider** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewAdminIdentitiesListResponseDataBindingsItem

`func NewAdminIdentitiesListResponseDataBindingsItem() *AdminIdentitiesListResponseDataBindingsItem`

NewAdminIdentitiesListResponseDataBindingsItem instantiates a new AdminIdentitiesListResponseDataBindingsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminIdentitiesListResponseDataBindingsItemWithDefaults

`func NewAdminIdentitiesListResponseDataBindingsItemWithDefaults() *AdminIdentitiesListResponseDataBindingsItem`

NewAdminIdentitiesListResponseDataBindingsItemWithDefaults instantiates a new AdminIdentitiesListResponseDataBindingsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasType() bool`

HasType returns a boolean if a field has been set.

### GetIdpId

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetIdpId() int32`

GetIdpId returns the IdpId field if non-nil, zero value otherwise.

### GetIdpIdOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetIdpIdOk() (*int32, bool)`

GetIdpIdOk returns a tuple with the IdpId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdpId

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetIdpId(v int32)`

SetIdpId sets IdpId field to given value.

### HasIdpId

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasIdpId() bool`

HasIdpId returns a boolean if a field has been set.

### SetIdpIdNil

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetIdpIdNil(b bool)`

 SetIdpIdNil sets the value for IdpId to be an explicit nil

### UnsetIdpId
`func (o *AdminIdentitiesListResponseDataBindingsItem) UnsetIdpId()`

UnsetIdpId ensures that no value is present for IdpId, not even an explicit nil
### GetNameId

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetNameId() string`

GetNameId returns the NameId field if non-nil, zero value otherwise.

### GetNameIdOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetNameIdOk() (*string, bool)`

GetNameIdOk returns a tuple with the NameId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameId

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetNameId(v string)`

SetNameId sets NameId field to given value.

### HasNameId

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasNameId() bool`

HasNameId returns a boolean if a field has been set.

### SetNameIdNil

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetNameIdNil(b bool)`

 SetNameIdNil sets the value for NameId to be an explicit nil

### UnsetNameId
`func (o *AdminIdentitiesListResponseDataBindingsItem) UnsetNameId()`

UnsetNameId ensures that no value is present for NameId, not even an explicit nil
### GetLegacy

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetLegacy() bool`

GetLegacy returns the Legacy field if non-nil, zero value otherwise.

### GetLegacyOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetLegacyOk() (*bool, bool)`

GetLegacyOk returns a tuple with the Legacy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegacy

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetLegacy(v bool)`

SetLegacy sets Legacy field to given value.

### HasLegacy

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasLegacy() bool`

HasLegacy returns a boolean if a field has been set.

### GetLdapConfigId

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetLdapConfigId() int32`

GetLdapConfigId returns the LdapConfigId field if non-nil, zero value otherwise.

### GetLdapConfigIdOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetLdapConfigIdOk() (*int32, bool)`

GetLdapConfigIdOk returns a tuple with the LdapConfigId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapConfigId

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetLdapConfigId(v int32)`

SetLdapConfigId sets LdapConfigId field to given value.

### HasLdapConfigId

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasLdapConfigId() bool`

HasLdapConfigId returns a boolean if a field has been set.

### SetLdapConfigIdNil

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetLdapConfigIdNil(b bool)`

 SetLdapConfigIdNil sets the value for LdapConfigId to be an explicit nil

### UnsetLdapConfigId
`func (o *AdminIdentitiesListResponseDataBindingsItem) UnsetLdapConfigId()`

UnsetLdapConfigId ensures that no value is present for LdapConfigId, not even an explicit nil
### GetDn

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetDn() string`

GetDn returns the Dn field if non-nil, zero value otherwise.

### GetDnOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetDnOk() (*string, bool)`

GetDnOk returns a tuple with the Dn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDn

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetDn(v string)`

SetDn sets Dn field to given value.

### HasDn

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasDn() bool`

HasDn returns a boolean if a field has been set.

### SetDnNil

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetDnNil(b bool)`

 SetDnNil sets the value for Dn to be an explicit nil

### UnsetDn
`func (o *AdminIdentitiesListResponseDataBindingsItem) UnsetDn()`

UnsetDn ensures that no value is present for Dn, not even an explicit nil
### GetProvider

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AdminIdentitiesListResponseDataBindingsItem) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *AdminIdentitiesListResponseDataBindingsItem) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### SetProviderNil

`func (o *AdminIdentitiesListResponseDataBindingsItem) SetProviderNil(b bool)`

 SetProviderNil sets the value for Provider to be an explicit nil

### UnsetProvider
`func (o *AdminIdentitiesListResponseDataBindingsItem) UnsetProvider()`

UnsetProvider ensures that no value is present for Provider, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


