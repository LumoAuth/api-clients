# AdminMcpServersListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]McpServer**](McpServer.md) |  | [optional] 
**Meta** | Pointer to [**AdminMcpServersListResponseMeta**](AdminMcpServersListResponseMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminMcpServersListResponse

`func NewAdminMcpServersListResponse() *AdminMcpServersListResponse`

NewAdminMcpServersListResponse instantiates a new AdminMcpServersListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminMcpServersListResponseWithDefaults

`func NewAdminMcpServersListResponseWithDefaults() *AdminMcpServersListResponse`

NewAdminMcpServersListResponseWithDefaults instantiates a new AdminMcpServersListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminMcpServersListResponse) GetData() []McpServer`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminMcpServersListResponse) GetDataOk() (*[]McpServer, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminMcpServersListResponse) SetData(v []McpServer)`

SetData sets Data field to given value.

### HasData

`func (o *AdminMcpServersListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminMcpServersListResponse) GetMeta() AdminMcpServersListResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminMcpServersListResponse) GetMetaOk() (*AdminMcpServersListResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminMcpServersListResponse) SetMeta(v AdminMcpServersListResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminMcpServersListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminMcpServersListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminMcpServersListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminMcpServersListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminMcpServersListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


