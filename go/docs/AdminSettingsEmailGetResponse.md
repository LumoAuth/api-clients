# AdminSettingsEmailGetResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**EmailSenderSettings**](EmailSenderSettings.md) |  | [optional] 

## Methods

### NewAdminSettingsEmailGetResponse

`func NewAdminSettingsEmailGetResponse() *AdminSettingsEmailGetResponse`

NewAdminSettingsEmailGetResponse instantiates a new AdminSettingsEmailGetResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSettingsEmailGetResponseWithDefaults

`func NewAdminSettingsEmailGetResponseWithDefaults() *AdminSettingsEmailGetResponse`

NewAdminSettingsEmailGetResponseWithDefaults instantiates a new AdminSettingsEmailGetResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminSettingsEmailGetResponse) GetData() EmailSenderSettings`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminSettingsEmailGetResponse) GetDataOk() (*EmailSenderSettings, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminSettingsEmailGetResponse) SetData(v EmailSenderSettings)`

SetData sets Data field to given value.

### HasData

`func (o *AdminSettingsEmailGetResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


