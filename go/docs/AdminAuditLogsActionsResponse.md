# AdminAuditLogsActionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to **[]string** |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminAuditLogsActionsResponse

`func NewAdminAuditLogsActionsResponse() *AdminAuditLogsActionsResponse`

NewAdminAuditLogsActionsResponse instantiates a new AdminAuditLogsActionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuditLogsActionsResponseWithDefaults

`func NewAdminAuditLogsActionsResponseWithDefaults() *AdminAuditLogsActionsResponse`

NewAdminAuditLogsActionsResponseWithDefaults instantiates a new AdminAuditLogsActionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminAuditLogsActionsResponse) GetData() []string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminAuditLogsActionsResponse) GetDataOk() (*[]string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminAuditLogsActionsResponse) SetData(v []string)`

SetData sets Data field to given value.

### HasData

`func (o *AdminAuditLogsActionsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *AdminAuditLogsActionsResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminAuditLogsActionsResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminAuditLogsActionsResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminAuditLogsActionsResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


