# AdminRolesGetPermissionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AdminRolesGetPermissionsResponseDataItem**](AdminRolesGetPermissionsResponseDataItem.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminRolesGetPermissionsResponse

`func NewAdminRolesGetPermissionsResponse() *AdminRolesGetPermissionsResponse`

NewAdminRolesGetPermissionsResponse instantiates a new AdminRolesGetPermissionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminRolesGetPermissionsResponseWithDefaults

`func NewAdminRolesGetPermissionsResponseWithDefaults() *AdminRolesGetPermissionsResponse`

NewAdminRolesGetPermissionsResponseWithDefaults instantiates a new AdminRolesGetPermissionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminRolesGetPermissionsResponse) GetData() []AdminRolesGetPermissionsResponseDataItem`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminRolesGetPermissionsResponse) GetDataOk() (*[]AdminRolesGetPermissionsResponseDataItem, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminRolesGetPermissionsResponse) SetData(v []AdminRolesGetPermissionsResponseDataItem)`

SetData sets Data field to given value.

### HasData

`func (o *AdminRolesGetPermissionsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *AdminRolesGetPermissionsResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminRolesGetPermissionsResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminRolesGetPermissionsResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminRolesGetPermissionsResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


