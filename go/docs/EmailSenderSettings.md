# EmailSenderSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sender** | Pointer to **string** | Who sends the mail now: &#x60;provider&#x60; while the organization&#39;s own mail provider is switched on, else &#x60;platform&#x60;. | [optional] [readonly] 
**Provider** | Pointer to **NullableString** | The mail provider that is set up (ses, sendgrid, mailgun, resend, postmark, smtp), or null. | [optional] [readonly] 
**Enabled** | Pointer to **bool** | Whether the mail provider is switched on. | [optional] [readonly] 
**FromEmail** | Pointer to **NullableString** | From address of mail that the provider sends. It must be a sender that is verified at the provider. | [optional] 
**FromName** | Pointer to **NullableString** | From name of mail that the provider sends. | [optional] 
**ReplyToEmail** | Pointer to **NullableString** | Reply-To address of mail that the provider sends. | [optional] 

## Methods

### NewEmailSenderSettings

`func NewEmailSenderSettings() *EmailSenderSettings`

NewEmailSenderSettings instantiates a new EmailSenderSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEmailSenderSettingsWithDefaults

`func NewEmailSenderSettingsWithDefaults() *EmailSenderSettings`

NewEmailSenderSettingsWithDefaults instantiates a new EmailSenderSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSender

`func (o *EmailSenderSettings) GetSender() string`

GetSender returns the Sender field if non-nil, zero value otherwise.

### GetSenderOk

`func (o *EmailSenderSettings) GetSenderOk() (*string, bool)`

GetSenderOk returns a tuple with the Sender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSender

`func (o *EmailSenderSettings) SetSender(v string)`

SetSender sets Sender field to given value.

### HasSender

`func (o *EmailSenderSettings) HasSender() bool`

HasSender returns a boolean if a field has been set.

### GetProvider

`func (o *EmailSenderSettings) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *EmailSenderSettings) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *EmailSenderSettings) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *EmailSenderSettings) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### SetProviderNil

`func (o *EmailSenderSettings) SetProviderNil(b bool)`

 SetProviderNil sets the value for Provider to be an explicit nil

### UnsetProvider
`func (o *EmailSenderSettings) UnsetProvider()`

UnsetProvider ensures that no value is present for Provider, not even an explicit nil
### GetEnabled

`func (o *EmailSenderSettings) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *EmailSenderSettings) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *EmailSenderSettings) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *EmailSenderSettings) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetFromEmail

`func (o *EmailSenderSettings) GetFromEmail() string`

GetFromEmail returns the FromEmail field if non-nil, zero value otherwise.

### GetFromEmailOk

`func (o *EmailSenderSettings) GetFromEmailOk() (*string, bool)`

GetFromEmailOk returns a tuple with the FromEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromEmail

`func (o *EmailSenderSettings) SetFromEmail(v string)`

SetFromEmail sets FromEmail field to given value.

### HasFromEmail

`func (o *EmailSenderSettings) HasFromEmail() bool`

HasFromEmail returns a boolean if a field has been set.

### SetFromEmailNil

`func (o *EmailSenderSettings) SetFromEmailNil(b bool)`

 SetFromEmailNil sets the value for FromEmail to be an explicit nil

### UnsetFromEmail
`func (o *EmailSenderSettings) UnsetFromEmail()`

UnsetFromEmail ensures that no value is present for FromEmail, not even an explicit nil
### GetFromName

`func (o *EmailSenderSettings) GetFromName() string`

GetFromName returns the FromName field if non-nil, zero value otherwise.

### GetFromNameOk

`func (o *EmailSenderSettings) GetFromNameOk() (*string, bool)`

GetFromNameOk returns a tuple with the FromName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFromName

`func (o *EmailSenderSettings) SetFromName(v string)`

SetFromName sets FromName field to given value.

### HasFromName

`func (o *EmailSenderSettings) HasFromName() bool`

HasFromName returns a boolean if a field has been set.

### SetFromNameNil

`func (o *EmailSenderSettings) SetFromNameNil(b bool)`

 SetFromNameNil sets the value for FromName to be an explicit nil

### UnsetFromName
`func (o *EmailSenderSettings) UnsetFromName()`

UnsetFromName ensures that no value is present for FromName, not even an explicit nil
### GetReplyToEmail

`func (o *EmailSenderSettings) GetReplyToEmail() string`

GetReplyToEmail returns the ReplyToEmail field if non-nil, zero value otherwise.

### GetReplyToEmailOk

`func (o *EmailSenderSettings) GetReplyToEmailOk() (*string, bool)`

GetReplyToEmailOk returns a tuple with the ReplyToEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReplyToEmail

`func (o *EmailSenderSettings) SetReplyToEmail(v string)`

SetReplyToEmail sets ReplyToEmail field to given value.

### HasReplyToEmail

`func (o *EmailSenderSettings) HasReplyToEmail() bool`

HasReplyToEmail returns a boolean if a field has been set.

### SetReplyToEmailNil

`func (o *EmailSenderSettings) SetReplyToEmailNil(b bool)`

 SetReplyToEmailNil sets the value for ReplyToEmail to be an explicit nil

### UnsetReplyToEmail
`func (o *EmailSenderSettings) UnsetReplyToEmail()`

UnsetReplyToEmail ensures that no value is present for ReplyToEmail, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


