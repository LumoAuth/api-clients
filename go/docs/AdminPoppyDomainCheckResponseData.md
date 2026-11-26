# AdminPoppyDomainCheckResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | Pointer to **string** |  | [optional] 
**Ok** | Pointer to **bool** |  | [optional] 
**Checks** | Pointer to [**[]AdminPoppyDomainCheckResponseDataChecksItem**](AdminPoppyDomainCheckResponseDataChecksItem.md) |  | [optional] 

## Methods

### NewAdminPoppyDomainCheckResponseData

`func NewAdminPoppyDomainCheckResponseData() *AdminPoppyDomainCheckResponseData`

NewAdminPoppyDomainCheckResponseData instantiates a new AdminPoppyDomainCheckResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyDomainCheckResponseDataWithDefaults

`func NewAdminPoppyDomainCheckResponseDataWithDefaults() *AdminPoppyDomainCheckResponseData`

NewAdminPoppyDomainCheckResponseDataWithDefaults instantiates a new AdminPoppyDomainCheckResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDomain

`func (o *AdminPoppyDomainCheckResponseData) GetDomain() string`

GetDomain returns the Domain field if non-nil, zero value otherwise.

### GetDomainOk

`func (o *AdminPoppyDomainCheckResponseData) GetDomainOk() (*string, bool)`

GetDomainOk returns a tuple with the Domain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomain

`func (o *AdminPoppyDomainCheckResponseData) SetDomain(v string)`

SetDomain sets Domain field to given value.

### HasDomain

`func (o *AdminPoppyDomainCheckResponseData) HasDomain() bool`

HasDomain returns a boolean if a field has been set.

### GetOk

`func (o *AdminPoppyDomainCheckResponseData) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *AdminPoppyDomainCheckResponseData) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *AdminPoppyDomainCheckResponseData) SetOk(v bool)`

SetOk sets Ok field to given value.

### HasOk

`func (o *AdminPoppyDomainCheckResponseData) HasOk() bool`

HasOk returns a boolean if a field has been set.

### GetChecks

`func (o *AdminPoppyDomainCheckResponseData) GetChecks() []AdminPoppyDomainCheckResponseDataChecksItem`

GetChecks returns the Checks field if non-nil, zero value otherwise.

### GetChecksOk

`func (o *AdminPoppyDomainCheckResponseData) GetChecksOk() (*[]AdminPoppyDomainCheckResponseDataChecksItem, bool)`

GetChecksOk returns a tuple with the Checks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChecks

`func (o *AdminPoppyDomainCheckResponseData) SetChecks(v []AdminPoppyDomainCheckResponseDataChecksItem)`

SetChecks sets Checks field to given value.

### HasChecks

`func (o *AdminPoppyDomainCheckResponseData) HasChecks() bool`

HasChecks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


