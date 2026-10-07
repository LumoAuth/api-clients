# AdminSandboxListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]SandboxTenant**](SandboxTenant.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminSandboxListResponse

`func NewAdminSandboxListResponse() *AdminSandboxListResponse`

NewAdminSandboxListResponse instantiates a new AdminSandboxListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSandboxListResponseWithDefaults

`func NewAdminSandboxListResponseWithDefaults() *AdminSandboxListResponse`

NewAdminSandboxListResponseWithDefaults instantiates a new AdminSandboxListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminSandboxListResponse) GetData() []SandboxTenant`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminSandboxListResponse) GetDataOk() (*[]SandboxTenant, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminSandboxListResponse) SetData(v []SandboxTenant)`

SetData sets Data field to given value.

### HasData

`func (o *AdminSandboxListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *AdminSandboxListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminSandboxListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminSandboxListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminSandboxListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


