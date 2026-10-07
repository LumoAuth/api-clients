# AdminIdentitiesLegacySamlRelinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdpId** | **int32** |  | 
**UserIds** | Pointer to **[]string** |  | [optional] 
**AllMatchingDomains** | Pointer to **bool** |  | [optional] [default to false]
**DryRun** | Pointer to **bool** |  | [optional] [default to true]

## Methods

### NewAdminIdentitiesLegacySamlRelinkRequest

`func NewAdminIdentitiesLegacySamlRelinkRequest(idpId int32, ) *AdminIdentitiesLegacySamlRelinkRequest`

NewAdminIdentitiesLegacySamlRelinkRequest instantiates a new AdminIdentitiesLegacySamlRelinkRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminIdentitiesLegacySamlRelinkRequestWithDefaults

`func NewAdminIdentitiesLegacySamlRelinkRequestWithDefaults() *AdminIdentitiesLegacySamlRelinkRequest`

NewAdminIdentitiesLegacySamlRelinkRequestWithDefaults instantiates a new AdminIdentitiesLegacySamlRelinkRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIdpId

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetIdpId() int32`

GetIdpId returns the IdpId field if non-nil, zero value otherwise.

### GetIdpIdOk

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetIdpIdOk() (*int32, bool)`

GetIdpIdOk returns a tuple with the IdpId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdpId

`func (o *AdminIdentitiesLegacySamlRelinkRequest) SetIdpId(v int32)`

SetIdpId sets IdpId field to given value.


### GetUserIds

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetUserIds() []string`

GetUserIds returns the UserIds field if non-nil, zero value otherwise.

### GetUserIdsOk

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetUserIdsOk() (*[]string, bool)`

GetUserIdsOk returns a tuple with the UserIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserIds

`func (o *AdminIdentitiesLegacySamlRelinkRequest) SetUserIds(v []string)`

SetUserIds sets UserIds field to given value.

### HasUserIds

`func (o *AdminIdentitiesLegacySamlRelinkRequest) HasUserIds() bool`

HasUserIds returns a boolean if a field has been set.

### GetAllMatchingDomains

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetAllMatchingDomains() bool`

GetAllMatchingDomains returns the AllMatchingDomains field if non-nil, zero value otherwise.

### GetAllMatchingDomainsOk

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetAllMatchingDomainsOk() (*bool, bool)`

GetAllMatchingDomainsOk returns a tuple with the AllMatchingDomains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllMatchingDomains

`func (o *AdminIdentitiesLegacySamlRelinkRequest) SetAllMatchingDomains(v bool)`

SetAllMatchingDomains sets AllMatchingDomains field to given value.

### HasAllMatchingDomains

`func (o *AdminIdentitiesLegacySamlRelinkRequest) HasAllMatchingDomains() bool`

HasAllMatchingDomains returns a boolean if a field has been set.

### GetDryRun

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetDryRun() bool`

GetDryRun returns the DryRun field if non-nil, zero value otherwise.

### GetDryRunOk

`func (o *AdminIdentitiesLegacySamlRelinkRequest) GetDryRunOk() (*bool, bool)`

GetDryRunOk returns a tuple with the DryRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDryRun

`func (o *AdminIdentitiesLegacySamlRelinkRequest) SetDryRun(v bool)`

SetDryRun sets DryRun field to given value.

### HasDryRun

`func (o *AdminIdentitiesLegacySamlRelinkRequest) HasDryRun() bool`

HasDryRun returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


