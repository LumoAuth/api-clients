# PutAdminWebhooksUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | Pointer to **string** | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional] 
**Events** | Pointer to **[]string** |  | [optional] 
**IsActive** | Pointer to **bool** | Also accepted as active or enabled. | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Configuration** | Pointer to **map[string]interface{}** |  | [optional] 
**RotateSecret** | Pointer to **bool** | Issue a new signing secret (returned once). | [optional] 

## Methods

### NewPutAdminWebhooksUpdateRequest

`func NewPutAdminWebhooksUpdateRequest() *PutAdminWebhooksUpdateRequest`

NewPutAdminWebhooksUpdateRequest instantiates a new PutAdminWebhooksUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminWebhooksUpdateRequestWithDefaults

`func NewPutAdminWebhooksUpdateRequestWithDefaults() *PutAdminWebhooksUpdateRequest`

NewPutAdminWebhooksUpdateRequestWithDefaults instantiates a new PutAdminWebhooksUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *PutAdminWebhooksUpdateRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *PutAdminWebhooksUpdateRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *PutAdminWebhooksUpdateRequest) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *PutAdminWebhooksUpdateRequest) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetEvents

`func (o *PutAdminWebhooksUpdateRequest) GetEvents() []string`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *PutAdminWebhooksUpdateRequest) GetEventsOk() (*[]string, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *PutAdminWebhooksUpdateRequest) SetEvents(v []string)`

SetEvents sets Events field to given value.

### HasEvents

`func (o *PutAdminWebhooksUpdateRequest) HasEvents() bool`

HasEvents returns a boolean if a field has been set.

### GetIsActive

`func (o *PutAdminWebhooksUpdateRequest) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *PutAdminWebhooksUpdateRequest) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *PutAdminWebhooksUpdateRequest) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *PutAdminWebhooksUpdateRequest) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetType

`func (o *PutAdminWebhooksUpdateRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PutAdminWebhooksUpdateRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PutAdminWebhooksUpdateRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PutAdminWebhooksUpdateRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetConfiguration

`func (o *PutAdminWebhooksUpdateRequest) GetConfiguration() map[string]interface{}`

GetConfiguration returns the Configuration field if non-nil, zero value otherwise.

### GetConfigurationOk

`func (o *PutAdminWebhooksUpdateRequest) GetConfigurationOk() (*map[string]interface{}, bool)`

GetConfigurationOk returns a tuple with the Configuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfiguration

`func (o *PutAdminWebhooksUpdateRequest) SetConfiguration(v map[string]interface{})`

SetConfiguration sets Configuration field to given value.

### HasConfiguration

`func (o *PutAdminWebhooksUpdateRequest) HasConfiguration() bool`

HasConfiguration returns a boolean if a field has been set.

### GetRotateSecret

`func (o *PutAdminWebhooksUpdateRequest) GetRotateSecret() bool`

GetRotateSecret returns the RotateSecret field if non-nil, zero value otherwise.

### GetRotateSecretOk

`func (o *PutAdminWebhooksUpdateRequest) GetRotateSecretOk() (*bool, bool)`

GetRotateSecretOk returns a tuple with the RotateSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRotateSecret

`func (o *PutAdminWebhooksUpdateRequest) SetRotateSecret(v bool)`

SetRotateSecret sets RotateSecret field to given value.

### HasRotateSecret

`func (o *PutAdminWebhooksUpdateRequest) HasRotateSecret() bool`

HasRotateSecret returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


