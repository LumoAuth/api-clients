# PutAdminSettingsBrandingUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**BrandingSettings**](BrandingSettings.md) |  | [optional] 
**Rejected** | Pointer to **[]string** | Keys whose value was refused by validation and not saved. | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminSettingsBrandingUpdateResponse

`func NewPutAdminSettingsBrandingUpdateResponse() *PutAdminSettingsBrandingUpdateResponse`

NewPutAdminSettingsBrandingUpdateResponse instantiates a new PutAdminSettingsBrandingUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsBrandingUpdateResponseWithDefaults

`func NewPutAdminSettingsBrandingUpdateResponseWithDefaults() *PutAdminSettingsBrandingUpdateResponse`

NewPutAdminSettingsBrandingUpdateResponseWithDefaults instantiates a new PutAdminSettingsBrandingUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAdminSettingsBrandingUpdateResponse) GetData() BrandingSettings`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAdminSettingsBrandingUpdateResponse) GetDataOk() (*BrandingSettings, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAdminSettingsBrandingUpdateResponse) SetData(v BrandingSettings)`

SetData sets Data field to given value.

### HasData

`func (o *PutAdminSettingsBrandingUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetRejected

`func (o *PutAdminSettingsBrandingUpdateResponse) GetRejected() []string`

GetRejected returns the Rejected field if non-nil, zero value otherwise.

### GetRejectedOk

`func (o *PutAdminSettingsBrandingUpdateResponse) GetRejectedOk() (*[]string, bool)`

GetRejectedOk returns a tuple with the Rejected field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejected

`func (o *PutAdminSettingsBrandingUpdateResponse) SetRejected(v []string)`

SetRejected sets Rejected field to given value.

### HasRejected

`func (o *PutAdminSettingsBrandingUpdateResponse) HasRejected() bool`

HasRejected returns a boolean if a field has been set.

### GetMessage

`func (o *PutAdminSettingsBrandingUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAdminSettingsBrandingUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAdminSettingsBrandingUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAdminSettingsBrandingUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


