# AdminIdentitiesLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | 
**IdpId** | Pointer to **int32** | SAML IdP config id (type&#x3D;saml) | [optional] 
**NameId** | Pointer to **string** | NameID the IdP asserts for this user (type&#x3D;saml) | [optional] 
**LdapConfigId** | Pointer to **int32** | LDAP directory id (type&#x3D;ldap) | [optional] 
**Dn** | Pointer to **string** | Distinguished name (type&#x3D;ldap); omitted &#x3D; look up | [optional] 
**LdapOnly** | Pointer to **bool** | Also disable the local password (type&#x3D;ldap) | [optional] [default to false]

## Methods

### NewAdminIdentitiesLinkRequest

`func NewAdminIdentitiesLinkRequest(type_ string, ) *AdminIdentitiesLinkRequest`

NewAdminIdentitiesLinkRequest instantiates a new AdminIdentitiesLinkRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminIdentitiesLinkRequestWithDefaults

`func NewAdminIdentitiesLinkRequestWithDefaults() *AdminIdentitiesLinkRequest`

NewAdminIdentitiesLinkRequestWithDefaults instantiates a new AdminIdentitiesLinkRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *AdminIdentitiesLinkRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AdminIdentitiesLinkRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AdminIdentitiesLinkRequest) SetType(v string)`

SetType sets Type field to given value.


### GetIdpId

`func (o *AdminIdentitiesLinkRequest) GetIdpId() int32`

GetIdpId returns the IdpId field if non-nil, zero value otherwise.

### GetIdpIdOk

`func (o *AdminIdentitiesLinkRequest) GetIdpIdOk() (*int32, bool)`

GetIdpIdOk returns a tuple with the IdpId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdpId

`func (o *AdminIdentitiesLinkRequest) SetIdpId(v int32)`

SetIdpId sets IdpId field to given value.

### HasIdpId

`func (o *AdminIdentitiesLinkRequest) HasIdpId() bool`

HasIdpId returns a boolean if a field has been set.

### GetNameId

`func (o *AdminIdentitiesLinkRequest) GetNameId() string`

GetNameId returns the NameId field if non-nil, zero value otherwise.

### GetNameIdOk

`func (o *AdminIdentitiesLinkRequest) GetNameIdOk() (*string, bool)`

GetNameIdOk returns a tuple with the NameId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameId

`func (o *AdminIdentitiesLinkRequest) SetNameId(v string)`

SetNameId sets NameId field to given value.

### HasNameId

`func (o *AdminIdentitiesLinkRequest) HasNameId() bool`

HasNameId returns a boolean if a field has been set.

### GetLdapConfigId

`func (o *AdminIdentitiesLinkRequest) GetLdapConfigId() int32`

GetLdapConfigId returns the LdapConfigId field if non-nil, zero value otherwise.

### GetLdapConfigIdOk

`func (o *AdminIdentitiesLinkRequest) GetLdapConfigIdOk() (*int32, bool)`

GetLdapConfigIdOk returns a tuple with the LdapConfigId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapConfigId

`func (o *AdminIdentitiesLinkRequest) SetLdapConfigId(v int32)`

SetLdapConfigId sets LdapConfigId field to given value.

### HasLdapConfigId

`func (o *AdminIdentitiesLinkRequest) HasLdapConfigId() bool`

HasLdapConfigId returns a boolean if a field has been set.

### GetDn

`func (o *AdminIdentitiesLinkRequest) GetDn() string`

GetDn returns the Dn field if non-nil, zero value otherwise.

### GetDnOk

`func (o *AdminIdentitiesLinkRequest) GetDnOk() (*string, bool)`

GetDnOk returns a tuple with the Dn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDn

`func (o *AdminIdentitiesLinkRequest) SetDn(v string)`

SetDn sets Dn field to given value.

### HasDn

`func (o *AdminIdentitiesLinkRequest) HasDn() bool`

HasDn returns a boolean if a field has been set.

### GetLdapOnly

`func (o *AdminIdentitiesLinkRequest) GetLdapOnly() bool`

GetLdapOnly returns the LdapOnly field if non-nil, zero value otherwise.

### GetLdapOnlyOk

`func (o *AdminIdentitiesLinkRequest) GetLdapOnlyOk() (*bool, bool)`

GetLdapOnlyOk returns a tuple with the LdapOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLdapOnly

`func (o *AdminIdentitiesLinkRequest) SetLdapOnly(v bool)`

SetLdapOnly sets LdapOnly field to given value.

### HasLdapOnly

`func (o *AdminIdentitiesLinkRequest) HasLdapOnly() bool`

HasLdapOnly returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


