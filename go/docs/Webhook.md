# Webhook

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

## Methods

### NewWebhook

`func NewWebhook(id int32, url string, events []string, type_ string, isActive bool, failureCount int32, createdAt time.Time, ) *Webhook`

NewWebhook instantiates a new Webhook object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebhookWithDefaults

`func NewWebhookWithDefaults() *Webhook`

NewWebhookWithDefaults instantiates a new Webhook object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Webhook) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Webhook) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Webhook) SetId(v int32)`

SetId sets Id field to given value.


### GetUrl

`func (o *Webhook) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *Webhook) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *Webhook) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetEvents

`func (o *Webhook) GetEvents() []string`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *Webhook) GetEventsOk() (*[]string, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *Webhook) SetEvents(v []string)`

SetEvents sets Events field to given value.


### GetType

`func (o *Webhook) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Webhook) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Webhook) SetType(v string)`

SetType sets Type field to given value.


### GetIsActive

`func (o *Webhook) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *Webhook) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *Webhook) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetFailureCount

`func (o *Webhook) GetFailureCount() int32`

GetFailureCount returns the FailureCount field if non-nil, zero value otherwise.

### GetFailureCountOk

`func (o *Webhook) GetFailureCountOk() (*int32, bool)`

GetFailureCountOk returns a tuple with the FailureCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureCount

`func (o *Webhook) SetFailureCount(v int32)`

SetFailureCount sets FailureCount field to given value.


### GetCreatedAt

`func (o *Webhook) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Webhook) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Webhook) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetLastTriggeredAt

`func (o *Webhook) GetLastTriggeredAt() time.Time`

GetLastTriggeredAt returns the LastTriggeredAt field if non-nil, zero value otherwise.

### GetLastTriggeredAtOk

`func (o *Webhook) GetLastTriggeredAtOk() (*time.Time, bool)`

GetLastTriggeredAtOk returns a tuple with the LastTriggeredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastTriggeredAt

`func (o *Webhook) SetLastTriggeredAt(v time.Time)`

SetLastTriggeredAt sets LastTriggeredAt field to given value.

### HasLastTriggeredAt

`func (o *Webhook) HasLastTriggeredAt() bool`

HasLastTriggeredAt returns a boolean if a field has been set.

### SetLastTriggeredAtNil

`func (o *Webhook) SetLastTriggeredAtNil(b bool)`

 SetLastTriggeredAtNil sets the value for LastTriggeredAt to be an explicit nil

### UnsetLastTriggeredAt
`func (o *Webhook) UnsetLastTriggeredAt()`

UnsetLastTriggeredAt ensures that no value is present for LastTriggeredAt, not even an explicit nil
### GetConfiguration

`func (o *Webhook) GetConfiguration() map[string]interface{}`

GetConfiguration returns the Configuration field if non-nil, zero value otherwise.

### GetConfigurationOk

`func (o *Webhook) GetConfigurationOk() (*map[string]interface{}, bool)`

GetConfigurationOk returns a tuple with the Configuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfiguration

`func (o *Webhook) SetConfiguration(v map[string]interface{})`

SetConfiguration sets Configuration field to given value.

### HasConfiguration

`func (o *Webhook) HasConfiguration() bool`

HasConfiguration returns a boolean if a field has been set.

### SetConfigurationNil

`func (o *Webhook) SetConfigurationNil(b bool)`

 SetConfigurationNil sets the value for Configuration to be an explicit nil

### UnsetConfiguration
`func (o *Webhook) UnsetConfiguration()`

UnsetConfiguration ensures that no value is present for Configuration, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


