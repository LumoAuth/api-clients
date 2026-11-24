# AdminMcpServersGrantsListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AdminMcpServersGrantsListResponseDataItem**](AdminMcpServersGrantsListResponseDataItem.md) |  | [optional] 
**ServerId** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminMcpServersGrantsListResponse

`func NewAdminMcpServersGrantsListResponse() *AdminMcpServersGrantsListResponse`

NewAdminMcpServersGrantsListResponse instantiates a new AdminMcpServersGrantsListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminMcpServersGrantsListResponseWithDefaults

`func NewAdminMcpServersGrantsListResponseWithDefaults() *AdminMcpServersGrantsListResponse`

NewAdminMcpServersGrantsListResponseWithDefaults instantiates a new AdminMcpServersGrantsListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminMcpServersGrantsListResponse) GetData() []AdminMcpServersGrantsListResponseDataItem`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminMcpServersGrantsListResponse) GetDataOk() (*[]AdminMcpServersGrantsListResponseDataItem, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminMcpServersGrantsListResponse) SetData(v []AdminMcpServersGrantsListResponseDataItem)`

SetData sets Data field to given value.

### HasData

`func (o *AdminMcpServersGrantsListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetServerId

`func (o *AdminMcpServersGrantsListResponse) GetServerId() string`

GetServerId returns the ServerId field if non-nil, zero value otherwise.

### GetServerIdOk

`func (o *AdminMcpServersGrantsListResponse) GetServerIdOk() (*string, bool)`

GetServerIdOk returns a tuple with the ServerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerId

`func (o *AdminMcpServersGrantsListResponse) SetServerId(v string)`

SetServerId sets ServerId field to given value.

### HasServerId

`func (o *AdminMcpServersGrantsListResponse) HasServerId() bool`

HasServerId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


