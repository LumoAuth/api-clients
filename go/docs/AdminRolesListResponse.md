# AdminRolesListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]Role**](Role.md) |  | [optional] 
**Meta** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminRolesListResponse

`func NewAdminRolesListResponse() *AdminRolesListResponse`

NewAdminRolesListResponse instantiates a new AdminRolesListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminRolesListResponseWithDefaults

`func NewAdminRolesListResponseWithDefaults() *AdminRolesListResponse`

NewAdminRolesListResponseWithDefaults instantiates a new AdminRolesListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminRolesListResponse) GetData() []Role`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminRolesListResponse) GetDataOk() (*[]Role, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminRolesListResponse) SetData(v []Role)`

SetData sets Data field to given value.

### HasData

`func (o *AdminRolesListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminRolesListResponse) GetMeta() PaginationMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminRolesListResponse) GetMetaOk() (*PaginationMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminRolesListResponse) SetMeta(v PaginationMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminRolesListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminRolesListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminRolesListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminRolesListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminRolesListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.

### GetResourceType

`func (o *AdminRolesListResponse) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AdminRolesListResponse) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AdminRolesListResponse) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *AdminRolesListResponse) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


