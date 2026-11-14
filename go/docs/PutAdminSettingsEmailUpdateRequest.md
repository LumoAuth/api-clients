# PutAdminSettingsEmailUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromEmail** | Pointer to **string** | From address. It must be a sender that is verified at the mail provider. | [optional] 
**FromName** | Pointer to **NullableString** | From name: one line. null or an empty string clears it. | [optional] 
**ReplyToEmail** | Pointer to **NullableString** | Reply-To address. null or an empty string clears it. | [optional] 

## Methods

### NewPutAdminSettingsEmailUpdateRequest

`func NewPutAdminSettingsEmailUpdateRequest() *PutAdminSettingsEmailUpdateRequest`

NewPutAdminSettingsEmailUpdateRequest instantiates a new PutAdminSettingsEmailUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsEmailUpdateRequestWithDefaults

`func NewPutAdminSettingsEmailUpdateRequestWithDefaults() *PutAdminSettingsEmailUpdateRequest`

NewPutAdminSettingsEmailUpdateRequestWithDefaults instantiates a new PutAdminSettingsEmailUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFromEmail

`func (o *PutAdminSettingsEmailUpdateRequest) GetFromEmail() string`

GetFromEmail returns the FromEmail field if non-nil, zero value otherwise.

### GetFromEmailOk

`func (o *PutAdminSettingsEmailUpdateRequest) GetFromEmailOk() (*string, bool)`

GetFromEmailOk returns a tuple with the FromEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromEmail

`func (o *PutAdminSettingsEmailUpdateRequest) SetFromEmail(v string)`

SetFromEmail sets FromEmail field to given value.

### HasFromEmail

`func (o *PutAdminSettingsEmailUpdateRequest) HasFromEmail() bool`

HasFromEmail returns a boolean if a field has been set.

### GetFromName

`func (o *PutAdminSettingsEmailUpdateRequest) GetFromName() string`

GetFromName returns the FromName field if non-nil, zero value otherwise.

### GetFromNameOk

`func (o *PutAdminSettingsEmailUpdateRequest) GetFromNameOk() (*string, bool)`

GetFromNameOk returns a tuple with the FromName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromName

`func (o *PutAdminSettingsEmailUpdateRequest) SetFromName(v string)`

SetFromName sets FromName field to given value.

### HasFromName

`func (o *PutAdminSettingsEmailUpdateRequest) HasFromName() bool`

HasFromName returns a boolean if a field has been set.

### SetFromNameNil

`func (o *PutAdminSettingsEmailUpdateRequest) SetFromNameNil(b bool)`

 SetFromNameNil sets the value for FromName to be an explicit nil

### UnsetFromName
`func (o *PutAdminSettingsEmailUpdateRequest) UnsetFromName()`

UnsetFromName ensures that no value is present for FromName, not even an explicit nil
### GetReplyToEmail

`func (o *PutAdminSettingsEmailUpdateRequest) GetReplyToEmail() string`

GetReplyToEmail returns the ReplyToEmail field if non-nil, zero value otherwise.

### GetReplyToEmailOk

`func (o *PutAdminSettingsEmailUpdateRequest) GetReplyToEmailOk() (*string, bool)`

GetReplyToEmailOk returns a tuple with the ReplyToEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplyToEmail

`func (o *PutAdminSettingsEmailUpdateRequest) SetReplyToEmail(v string)`

SetReplyToEmail sets ReplyToEmail field to given value.

### HasReplyToEmail

`func (o *PutAdminSettingsEmailUpdateRequest) HasReplyToEmail() bool`

HasReplyToEmail returns a boolean if a field has been set.

### SetReplyToEmailNil

`func (o *PutAdminSettingsEmailUpdateRequest) SetReplyToEmailNil(b bool)`

 SetReplyToEmailNil sets the value for ReplyToEmail to be an explicit nil

### UnsetReplyToEmail
`func (o *PutAdminSettingsEmailUpdateRequest) UnsetReplyToEmail()`

UnsetReplyToEmail ensures that no value is present for ReplyToEmail, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


