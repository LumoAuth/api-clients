# AdminWebhooksCreateResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Url** | **string** |  | 
**Events** | **[]string** |  | 
**Type** | **string** |  | 
**IsActive** | **bool** |  | 
**FailureCount** | **int32** |  | 
**CreatedAt** | **time.Time** |  | 
**LastTriggeredAt** | Pointer to **NullableTime** |  | [optional] 
**Configuration** | Pointer to **map[string]interface{}** | Detailed responses only | [optional] 
**Secret** | Pointer to **string** | HMAC signing secret, returned only at creation | [optional] 
**Note** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminWebhooksCreateResponseData

`func NewAdminWebhooksCreateResponseData(id int32, url string, events []string, type_ string, isActive bool, failureCount int32, createdAt time.Time, ) *AdminWebhooksCreateResponseData`

NewAdminWebhooksCreateResponseData instantiates a new AdminWebhooksCreateResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksCreateResponseDataWithDefaults

`func NewAdminWebhooksCreateResponseDataWithDefaults() *AdminWebhooksCreateResponseData`

NewAdminWebhooksCreateResponseDataWithDefaults instantiates a new AdminWebhooksCreateResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AdminWebhooksCreateResponseData) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AdminWebhooksCreateResponseData) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AdminWebhooksCreateResponseData) SetId(v int32)`

SetId sets Id field to given value.


### GetUrl

`func (o *AdminWebhooksCreateResponseData) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *AdminWebhooksCreateResponseData) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *AdminWebhooksCreateResponseData) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetEvents

`func (o *AdminWebhooksCreateResponseData) GetEvents() []string`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *AdminWebhooksCreateResponseData) GetEventsOk() (*[]string, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *AdminWebhooksCreateResponseData) SetEvents(v []string)`

SetEvents sets Events field to given value.


### GetType

`func (o *AdminWebhooksCreateResponseData) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AdminWebhooksCreateResponseData) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AdminWebhooksCreateResponseData) SetType(v string)`

SetType sets Type field to given value.


### GetIsActive

`func (o *AdminWebhooksCreateResponseData) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *AdminWebhooksCreateResponseData) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *AdminWebhooksCreateResponseData) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetFailureCount

`func (o *AdminWebhooksCreateResponseData) GetFailureCount() int32`

GetFailureCount returns the FailureCount field if non-nil, zero value otherwise.

### GetFailureCountOk

`func (o *AdminWebhooksCreateResponseData) GetFailureCountOk() (*int32, bool)`

GetFailureCountOk returns a tuple with the FailureCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureCount

`func (o *AdminWebhooksCreateResponseData) SetFailureCount(v int32)`

SetFailureCount sets FailureCount field to given value.


### GetCreatedAt

`func (o *AdminWebhooksCreateResponseData) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AdminWebhooksCreateResponseData) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AdminWebhooksCreateResponseData) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetLastTriggeredAt

`func (o *AdminWebhooksCreateResponseData) GetLastTriggeredAt() time.Time`

GetLastTriggeredAt returns the LastTriggeredAt field if non-nil, zero value otherwise.

### GetLastTriggeredAtOk

`func (o *AdminWebhooksCreateResponseData) GetLastTriggeredAtOk() (*time.Time, bool)`

GetLastTriggeredAtOk returns a tuple with the LastTriggeredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastTriggeredAt

`func (o *AdminWebhooksCreateResponseData) SetLastTriggeredAt(v time.Time)`

SetLastTriggeredAt sets LastTriggeredAt field to given value.

### HasLastTriggeredAt

`func (o *AdminWebhooksCreateResponseData) HasLastTriggeredAt() bool`

HasLastTriggeredAt returns a boolean if a field has been set.

### SetLastTriggeredAtNil

`func (o *AdminWebhooksCreateResponseData) SetLastTriggeredAtNil(b bool)`

 SetLastTriggeredAtNil sets the value for LastTriggeredAt to be an explicit nil

### UnsetLastTriggeredAt
`func (o *AdminWebhooksCreateResponseData) UnsetLastTriggeredAt()`

UnsetLastTriggeredAt ensures that no value is present for LastTriggeredAt, not even an explicit nil
### GetConfiguration

`func (o *AdminWebhooksCreateResponseData) GetConfiguration() map[string]interface{}`

GetConfiguration returns the Configuration field if non-nil, zero value otherwise.

### GetConfigurationOk

`func (o *AdminWebhooksCreateResponseData) GetConfigurationOk() (*map[string]interface{}, bool)`

GetConfigurationOk returns a tuple with the Configuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfiguration

`func (o *AdminWebhooksCreateResponseData) SetConfiguration(v map[string]interface{})`

SetConfiguration sets Configuration field to given value.

### HasConfiguration

`func (o *AdminWebhooksCreateResponseData) HasConfiguration() bool`

HasConfiguration returns a boolean if a field has been set.

### SetConfigurationNil

`func (o *AdminWebhooksCreateResponseData) SetConfigurationNil(b bool)`

 SetConfigurationNil sets the value for Configuration to be an explicit nil

### UnsetConfiguration
`func (o *AdminWebhooksCreateResponseData) UnsetConfiguration()`

UnsetConfiguration ensures that no value is present for Configuration, not even an explicit nil
### GetSecret

`func (o *AdminWebhooksCreateResponseData) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *AdminWebhooksCreateResponseData) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *AdminWebhooksCreateResponseData) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *AdminWebhooksCreateResponseData) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetNote

`func (o *AdminWebhooksCreateResponseData) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *AdminWebhooksCreateResponseData) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *AdminWebhooksCreateResponseData) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *AdminWebhooksCreateResponseData) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


