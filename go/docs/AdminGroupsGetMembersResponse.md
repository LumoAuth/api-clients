# AdminGroupsGetMembersResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AdminGroupsGetMembersResponseDataItem**](AdminGroupsGetMembersResponseDataItem.md) |  | [optional] 
**Meta** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminGroupsGetMembersResponse

`func NewAdminGroupsGetMembersResponse() *AdminGroupsGetMembersResponse`

NewAdminGroupsGetMembersResponse instantiates a new AdminGroupsGetMembersResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminGroupsGetMembersResponseWithDefaults

`func NewAdminGroupsGetMembersResponseWithDefaults() *AdminGroupsGetMembersResponse`

NewAdminGroupsGetMembersResponseWithDefaults instantiates a new AdminGroupsGetMembersResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminGroupsGetMembersResponse) GetData() []AdminGroupsGetMembersResponseDataItem`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminGroupsGetMembersResponse) GetDataOk() (*[]AdminGroupsGetMembersResponseDataItem, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminGroupsGetMembersResponse) SetData(v []AdminGroupsGetMembersResponseDataItem)`

SetData sets Data field to given value.

### HasData

`func (o *AdminGroupsGetMembersResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminGroupsGetMembersResponse) GetMeta() PaginationMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminGroupsGetMembersResponse) GetMetaOk() (*PaginationMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminGroupsGetMembersResponse) SetMeta(v PaginationMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminGroupsGetMembersResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminGroupsGetMembersResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminGroupsGetMembersResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminGroupsGetMembersResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminGroupsGetMembersResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.

### GetResourceType

`func (o *AdminGroupsGetMembersResponse) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AdminGroupsGetMembersResponse) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AdminGroupsGetMembersResponse) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *AdminGroupsGetMembersResponse) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


