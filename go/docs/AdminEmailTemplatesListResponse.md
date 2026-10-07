# AdminEmailTemplatesListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailTemplates** | Pointer to [**[]EmailTemplate**](EmailTemplate.md) |  | [optional] 
**Data** | Pointer to [**[]EmailTemplate**](EmailTemplate.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminEmailTemplatesListResponse

`func NewAdminEmailTemplatesListResponse() *AdminEmailTemplatesListResponse`

NewAdminEmailTemplatesListResponse instantiates a new AdminEmailTemplatesListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminEmailTemplatesListResponseWithDefaults

`func NewAdminEmailTemplatesListResponseWithDefaults() *AdminEmailTemplatesListResponse`

NewAdminEmailTemplatesListResponseWithDefaults instantiates a new AdminEmailTemplatesListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmailTemplates

`func (o *AdminEmailTemplatesListResponse) GetEmailTemplates() []EmailTemplate`

GetEmailTemplates returns the EmailTemplates field if non-nil, zero value otherwise.

### GetEmailTemplatesOk

`func (o *AdminEmailTemplatesListResponse) GetEmailTemplatesOk() (*[]EmailTemplate, bool)`

GetEmailTemplatesOk returns a tuple with the EmailTemplates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailTemplates

`func (o *AdminEmailTemplatesListResponse) SetEmailTemplates(v []EmailTemplate)`

SetEmailTemplates sets EmailTemplates field to given value.

### HasEmailTemplates

`func (o *AdminEmailTemplatesListResponse) HasEmailTemplates() bool`

HasEmailTemplates returns a boolean if a field has been set.

### GetData

`func (o *AdminEmailTemplatesListResponse) GetData() []EmailTemplate`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminEmailTemplatesListResponse) GetDataOk() (*[]EmailTemplate, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminEmailTemplatesListResponse) SetData(v []EmailTemplate)`

SetData sets Data field to given value.

### HasData

`func (o *AdminEmailTemplatesListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *AdminEmailTemplatesListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminEmailTemplatesListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminEmailTemplatesListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminEmailTemplatesListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


