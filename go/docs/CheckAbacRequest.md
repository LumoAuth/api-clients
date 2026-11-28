# CheckAbacRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceType** | **string** |  | 
**Action** | **string** |  | 
**ResourceId** | Pointer to **string** |  | [optional] 
**Environment** | Pointer to **map[string]interface{}** | Values of defined environment attributes. | [optional] 

## Methods

### NewCheckAbacRequest

`func NewCheckAbacRequest(resourceType string, action string, ) *CheckAbacRequest`

NewCheckAbacRequest instantiates a new CheckAbacRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAbacRequestWithDefaults

`func NewCheckAbacRequestWithDefaults() *CheckAbacRequest`

NewCheckAbacRequestWithDefaults instantiates a new CheckAbacRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResourceType

`func (o *CheckAbacRequest) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *CheckAbacRequest) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *CheckAbacRequest) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.


### GetAction

`func (o *CheckAbacRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *CheckAbacRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *CheckAbacRequest) SetAction(v string)`

SetAction sets Action field to given value.


### GetResourceId

`func (o *CheckAbacRequest) GetResourceId() string`

GetResourceId returns the ResourceId field if non-nil, zero value otherwise.

### GetResourceIdOk

`func (o *CheckAbacRequest) GetResourceIdOk() (*string, bool)`

GetResourceIdOk returns a tuple with the ResourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceId

`func (o *CheckAbacRequest) SetResourceId(v string)`

SetResourceId sets ResourceId field to given value.

### HasResourceId

`func (o *CheckAbacRequest) HasResourceId() bool`

HasResourceId returns a boolean if a field has been set.

### GetEnvironment

`func (o *CheckAbacRequest) GetEnvironment() map[string]interface{}`

GetEnvironment returns the Environment field if non-nil, zero value otherwise.

### GetEnvironmentOk

`func (o *CheckAbacRequest) GetEnvironmentOk() (*map[string]interface{}, bool)`

GetEnvironmentOk returns a tuple with the Environment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnvironment

`func (o *CheckAbacRequest) SetEnvironment(v map[string]interface{})`

SetEnvironment sets Environment field to given value.

### HasEnvironment

`func (o *CheckAbacRequest) HasEnvironment() bool`

HasEnvironment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


