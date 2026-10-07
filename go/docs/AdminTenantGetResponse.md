# AdminTenantGetResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**TenantProfile**](TenantProfile.md) |  | [optional] 

## Methods

### NewAdminTenantGetResponse

`func NewAdminTenantGetResponse() *AdminTenantGetResponse`

NewAdminTenantGetResponse instantiates a new AdminTenantGetResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminTenantGetResponseWithDefaults

`func NewAdminTenantGetResponseWithDefaults() *AdminTenantGetResponse`

NewAdminTenantGetResponseWithDefaults instantiates a new AdminTenantGetResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminTenantGetResponse) GetData() TenantProfile`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminTenantGetResponse) GetDataOk() (*TenantProfile, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminTenantGetResponse) SetData(v TenantProfile)`

SetData sets Data field to given value.

### HasData

`func (o *AdminTenantGetResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


