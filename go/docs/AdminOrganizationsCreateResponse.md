# AdminOrganizationsCreateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**Organization**](Organization.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminOrganizationsCreateResponse

`func NewAdminOrganizationsCreateResponse() *AdminOrganizationsCreateResponse`

NewAdminOrganizationsCreateResponse instantiates a new AdminOrganizationsCreateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOrganizationsCreateResponseWithDefaults

`func NewAdminOrganizationsCreateResponseWithDefaults() *AdminOrganizationsCreateResponse`

NewAdminOrganizationsCreateResponseWithDefaults instantiates a new AdminOrganizationsCreateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminOrganizationsCreateResponse) GetData() Organization`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminOrganizationsCreateResponse) GetDataOk() (*Organization, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminOrganizationsCreateResponse) SetData(v Organization)`

SetData sets Data field to given value.

### HasData

`func (o *AdminOrganizationsCreateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *AdminOrganizationsCreateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminOrganizationsCreateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminOrganizationsCreateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminOrganizationsCreateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


