# AdminWebhooksCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Public https URL. | 
**Events** | **[]string** | Event names from the catalogue. | 
**IsActive** | Pointer to **bool** | Also accepted as active or enabled. | [optional] [default to true]
**Type** | Pointer to **string** | custom (default), slack, discord or teams. | [optional] 
**Configuration** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewAdminWebhooksCreateRequest

`func NewAdminWebhooksCreateRequest(url string, events []string, ) *AdminWebhooksCreateRequest`

NewAdminWebhooksCreateRequest instantiates a new AdminWebhooksCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminWebhooksCreateRequestWithDefaults

`func NewAdminWebhooksCreateRequestWithDefaults() *AdminWebhooksCreateRequest`

NewAdminWebhooksCreateRequestWithDefaults instantiates a new AdminWebhooksCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUrl

`func (o *AdminWebhooksCreateRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *AdminWebhooksCreateRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *AdminWebhooksCreateRequest) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetEvents

`func (o *AdminWebhooksCreateRequest) GetEvents() []string`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *AdminWebhooksCreateRequest) GetEventsOk() (*[]string, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *AdminWebhooksCreateRequest) SetEvents(v []string)`

SetEvents sets Events field to given value.


### GetIsActive

`func (o *AdminWebhooksCreateRequest) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *AdminWebhooksCreateRequest) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *AdminWebhooksCreateRequest) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *AdminWebhooksCreateRequest) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetType

`func (o *AdminWebhooksCreateRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AdminWebhooksCreateRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AdminWebhooksCreateRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *AdminWebhooksCreateRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetConfiguration

`func (o *AdminWebhooksCreateRequest) GetConfiguration() map[string]interface{}`

GetConfiguration returns the Configuration field if non-nil, zero value otherwise.

### GetConfigurationOk

`func (o *AdminWebhooksCreateRequest) GetConfigurationOk() (*map[string]interface{}, bool)`

GetConfigurationOk returns a tuple with the Configuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfiguration

`func (o *AdminWebhooksCreateRequest) SetConfiguration(v map[string]interface{})`

SetConfiguration sets Configuration field to given value.

### HasConfiguration

`func (o *AdminWebhooksCreateRequest) HasConfiguration() bool`

HasConfiguration returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


