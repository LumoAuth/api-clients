# ListServersResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Servers** | Pointer to **[]map[string]interface{}** | Historical key (kept for back-compat). | [optional] 
**Data** | Pointer to [**[]ListServersResponseDataItem**](ListServersResponseDataItem.md) | Canonical list envelope items. | [optional] 
**Pagination** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewListServersResponse

`func NewListServersResponse() *ListServersResponse`

NewListServersResponse instantiates a new ListServersResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListServersResponseWithDefaults

`func NewListServersResponseWithDefaults() *ListServersResponse`

NewListServersResponseWithDefaults instantiates a new ListServersResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServers

`func (o *ListServersResponse) GetServers() []map[string]interface{}`

GetServers returns the Servers field if non-nil, zero value otherwise.

### GetServersOk

`func (o *ListServersResponse) GetServersOk() (*[]map[string]interface{}, bool)`

GetServersOk returns a tuple with the Servers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServers

`func (o *ListServersResponse) SetServers(v []map[string]interface{})`

SetServers sets Servers field to given value.

### HasServers

`func (o *ListServersResponse) HasServers() bool`

HasServers returns a boolean if a field has been set.

### GetData

`func (o *ListServersResponse) GetData() []ListServersResponseDataItem`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListServersResponse) GetDataOk() (*[]ListServersResponseDataItem, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListServersResponse) SetData(v []ListServersResponseDataItem)`

SetData sets Data field to given value.

### HasData

`func (o *ListServersResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *ListServersResponse) GetPagination() map[string]interface{}`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *ListServersResponse) GetPaginationOk() (*map[string]interface{}, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *ListServersResponse) SetPagination(v map[string]interface{})`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *ListServersResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


