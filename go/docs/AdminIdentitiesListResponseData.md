# AdminIdentitiesListResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthSource** | Pointer to **NullableString** |  | [optional] 
**LdapOnly** | Pointer to **bool** |  | [optional] 
**Bindings** | Pointer to [**[]AdminIdentitiesListResponseDataBindingsItem**](AdminIdentitiesListResponseDataBindingsItem.md) |  | [optional] 

## Methods

### NewAdminIdentitiesListResponseData

`func NewAdminIdentitiesListResponseData() *AdminIdentitiesListResponseData`

NewAdminIdentitiesListResponseData instantiates a new AdminIdentitiesListResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminIdentitiesListResponseDataWithDefaults

`func NewAdminIdentitiesListResponseDataWithDefaults() *AdminIdentitiesListResponseData`

NewAdminIdentitiesListResponseDataWithDefaults instantiates a new AdminIdentitiesListResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAuthSource

`func (o *AdminIdentitiesListResponseData) GetAuthSource() string`

GetAuthSource returns the AuthSource field if non-nil, zero value otherwise.

### GetAuthSourceOk

`func (o *AdminIdentitiesListResponseData) GetAuthSourceOk() (*string, bool)`

GetAuthSourceOk returns a tuple with the AuthSource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthSource

`func (o *AdminIdentitiesListResponseData) SetAuthSource(v string)`

SetAuthSource sets AuthSource field to given value.

### HasAuthSource

`func (o *AdminIdentitiesListResponseData) HasAuthSource() bool`

HasAuthSource returns a boolean if a field has been set.

### SetAuthSourceNil

`func (o *AdminIdentitiesListResponseData) SetAuthSourceNil(b bool)`

 SetAuthSourceNil sets the value for AuthSource to be an explicit nil

### UnsetAuthSource
`func (o *AdminIdentitiesListResponseData) UnsetAuthSource()`

UnsetAuthSource ensures that no value is present for AuthSource, not even an explicit nil
### GetLdapOnly

`func (o *AdminIdentitiesListResponseData) GetLdapOnly() bool`

GetLdapOnly returns the LdapOnly field if non-nil, zero value otherwise.

### GetLdapOnlyOk

`func (o *AdminIdentitiesListResponseData) GetLdapOnlyOk() (*bool, bool)`

GetLdapOnlyOk returns a tuple with the LdapOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapOnly

`func (o *AdminIdentitiesListResponseData) SetLdapOnly(v bool)`

SetLdapOnly sets LdapOnly field to given value.

### HasLdapOnly

`func (o *AdminIdentitiesListResponseData) HasLdapOnly() bool`

HasLdapOnly returns a boolean if a field has been set.

### GetBindings

`func (o *AdminIdentitiesListResponseData) GetBindings() []AdminIdentitiesListResponseDataBindingsItem`

GetBindings returns the Bindings field if non-nil, zero value otherwise.

### GetBindingsOk

`func (o *AdminIdentitiesListResponseData) GetBindingsOk() (*[]AdminIdentitiesListResponseDataBindingsItem, bool)`

GetBindingsOk returns a tuple with the Bindings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBindings

`func (o *AdminIdentitiesListResponseData) SetBindings(v []AdminIdentitiesListResponseDataBindingsItem)`

SetBindings sets Bindings field to given value.

### HasBindings

`func (o *AdminIdentitiesListResponseData) HasBindings() bool`

HasBindings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


