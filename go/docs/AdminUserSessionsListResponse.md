# AdminUserSessionsListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]UserSession**](UserSession.md) |  | [optional] 
**Meta** | Pointer to [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminUserSessionsListResponse

`func NewAdminUserSessionsListResponse() *AdminUserSessionsListResponse`

NewAdminUserSessionsListResponse instantiates a new AdminUserSessionsListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminUserSessionsListResponseWithDefaults

`func NewAdminUserSessionsListResponseWithDefaults() *AdminUserSessionsListResponse`

NewAdminUserSessionsListResponseWithDefaults instantiates a new AdminUserSessionsListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminUserSessionsListResponse) GetData() []UserSession`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminUserSessionsListResponse) GetDataOk() (*[]UserSession, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminUserSessionsListResponse) SetData(v []UserSession)`

SetData sets Data field to given value.

### HasData

`func (o *AdminUserSessionsListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminUserSessionsListResponse) GetMeta() AdminScopesListResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminUserSessionsListResponse) GetMetaOk() (*AdminScopesListResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminUserSessionsListResponse) SetMeta(v AdminScopesListResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminUserSessionsListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminUserSessionsListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminUserSessionsListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminUserSessionsListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminUserSessionsListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


