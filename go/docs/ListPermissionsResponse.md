# ListPermissionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | Pointer to **string** |  | [optional] 
**Permissions** | Pointer to [**[]ListPermissionsResponsePermissionsItem**](ListPermissionsResponsePermissionsItem.md) |  | [optional] 
**Count** | Pointer to **int32** |  | [optional] 
**Data** | Pointer to [**[]ListPermissionsResponseDataItem**](ListPermissionsResponseDataItem.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewListPermissionsResponse

`func NewListPermissionsResponse() *ListPermissionsResponse`

NewListPermissionsResponse instantiates a new ListPermissionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListPermissionsResponseWithDefaults

`func NewListPermissionsResponseWithDefaults() *ListPermissionsResponse`

NewListPermissionsResponseWithDefaults instantiates a new ListPermissionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *ListPermissionsResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *ListPermissionsResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *ListPermissionsResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *ListPermissionsResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetPermissions

`func (o *ListPermissionsResponse) GetPermissions() []ListPermissionsResponsePermissionsItem`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *ListPermissionsResponse) GetPermissionsOk() (*[]ListPermissionsResponsePermissionsItem, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *ListPermissionsResponse) SetPermissions(v []ListPermissionsResponsePermissionsItem)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *ListPermissionsResponse) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetCount

`func (o *ListPermissionsResponse) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *ListPermissionsResponse) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *ListPermissionsResponse) SetCount(v int32)`

SetCount sets Count field to given value.

### HasCount

`func (o *ListPermissionsResponse) HasCount() bool`

HasCount returns a boolean if a field has been set.

### GetData

`func (o *ListPermissionsResponse) GetData() []ListPermissionsResponseDataItem`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListPermissionsResponse) GetDataOk() (*[]ListPermissionsResponseDataItem, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListPermissionsResponse) SetData(v []ListPermissionsResponseDataItem)`

SetData sets Data field to given value.

### HasData

`func (o *ListPermissionsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *ListPermissionsResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *ListPermissionsResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *ListPermissionsResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *ListPermissionsResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


