# AdminOrgInvitationsListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]OrganizationInvitation**](OrganizationInvitation.md) |  | [optional] 
**Pagination** | Pointer to [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Methods

### NewAdminOrgInvitationsListResponse

`func NewAdminOrgInvitationsListResponse() *AdminOrgInvitationsListResponse`

NewAdminOrgInvitationsListResponse instantiates a new AdminOrgInvitationsListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOrgInvitationsListResponseWithDefaults

`func NewAdminOrgInvitationsListResponseWithDefaults() *AdminOrgInvitationsListResponse`

NewAdminOrgInvitationsListResponseWithDefaults instantiates a new AdminOrgInvitationsListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminOrgInvitationsListResponse) GetData() []OrganizationInvitation`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminOrgInvitationsListResponse) GetDataOk() (*[]OrganizationInvitation, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminOrgInvitationsListResponse) SetData(v []OrganizationInvitation)`

SetData sets Data field to given value.

### HasData

`func (o *AdminOrgInvitationsListResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetPagination

`func (o *AdminOrgInvitationsListResponse) GetPagination() PaginationMeta`

GetPagination returns the Pagination field if non-nil, zero value otherwise.

### GetPaginationOk

`func (o *AdminOrgInvitationsListResponse) GetPaginationOk() (*PaginationMeta, bool)`

GetPaginationOk returns a tuple with the Pagination field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPagination

`func (o *AdminOrgInvitationsListResponse) SetPagination(v PaginationMeta)`

SetPagination sets Pagination field to given value.

### HasPagination

`func (o *AdminOrgInvitationsListResponse) HasPagination() bool`

HasPagination returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


