# AdminWebhooksListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]Webhook**](Webhook.md) |  | [optional] 
**Meta** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminWebhooksListResponse

`func NewAdminWebhooksListResponse() *AdminWebhooksListResponse`

NewAdminWebhooksListResponse instantiates a new AdminWebhooksListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksListResponseWithDefaults

`func NewAdminWebhooksListResponseWithDefaults() *AdminWebhooksListResponse`

NewAdminWebhooksListResponseWithDefaults instantiates a new AdminWebhooksListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminWebhooksListResponse) GetData() []Webhook`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminWebhooksListResponse) GetDataOk() (*[]Webhook, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminWebhooksListResponse) SetData(v []Webhook)`

SetData sets Data field to given value.

### HasData

`func (o *AdminWebhooksListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminWebhooksListResponse) GetMeta() PaginationMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminWebhooksListResponse) GetMetaOk() (*PaginationMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminWebhooksListResponse) SetMeta(v PaginationMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminWebhooksListResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetPagination

`func (o *AdminWebhooksListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminWebhooksListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminWebhooksListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminWebhooksListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.

### GetResourceType

`func (o *AdminWebhooksListResponse) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AdminWebhooksListResponse) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AdminWebhooksListResponse) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *AdminWebhooksListResponse) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


