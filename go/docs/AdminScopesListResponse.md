# AdminScopesListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]OAuthScope**](OAuthScope.md) |  | [optional] 
**Meta** | Pointer to [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminScopesListResponse

`func NewAdminScopesListResponse() *AdminScopesListResponse`

NewAdminScopesListResponse instantiates a new AdminScopesListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminScopesListResponseWithDefaults

`func NewAdminScopesListResponseWithDefaults() *AdminScopesListResponse`

NewAdminScopesListResponseWithDefaults instantiates a new AdminScopesListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminScopesListResponse) GetData() []OAuthScope`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminScopesListResponse) GetDataOk() (*[]OAuthScope, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminScopesListResponse) SetData(v []OAuthScope)`

SetData sets Data field to given value.

### HasData

`func (o *AdminScopesListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminScopesListResponse) GetMeta() AdminScopesListResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminScopesListResponse) GetMetaOk() (*AdminScopesListResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminScopesListResponse) SetMeta(v AdminScopesListResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminScopesListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminScopesListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminScopesListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminScopesListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminScopesListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


