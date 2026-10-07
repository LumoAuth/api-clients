# PutAdminTenantUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**TenantProfile**](TenantProfile.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminTenantUpdateResponse

`func NewPutAdminTenantUpdateResponse() *PutAdminTenantUpdateResponse`

NewPutAdminTenantUpdateResponse instantiates a new PutAdminTenantUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminTenantUpdateResponseWithDefaults

`func NewPutAdminTenantUpdateResponseWithDefaults() *PutAdminTenantUpdateResponse`

NewPutAdminTenantUpdateResponseWithDefaults instantiates a new PutAdminTenantUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAdminTenantUpdateResponse) GetData() TenantProfile`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAdminTenantUpdateResponse) GetDataOk() (*TenantProfile, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAdminTenantUpdateResponse) SetData(v TenantProfile)`

SetData sets Data field to given value.

### HasData

`func (o *PutAdminTenantUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *PutAdminTenantUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAdminTenantUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAdminTenantUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAdminTenantUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


