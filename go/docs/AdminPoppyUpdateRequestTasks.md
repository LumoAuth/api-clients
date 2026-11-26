# AdminPoppyUpdateRequestTasks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mode** | Pointer to **string** |  | [optional] 
**Endpoint** | Pointer to **NullableString** |  | [optional] 
**ExcludedTasks** | Pointer to **[]map[string]interface{}** |  | [optional] 
**Feedback** | Pointer to **string** |  | [optional] 
**FeedbackEndpoint** | Pointer to **NullableString** |  | [optional] 
**SkillIndex** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewAdminPoppyUpdateRequestTasks

`func NewAdminPoppyUpdateRequestTasks() *AdminPoppyUpdateRequestTasks`

NewAdminPoppyUpdateRequestTasks instantiates a new AdminPoppyUpdateRequestTasks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyUpdateRequestTasksWithDefaults

`func NewAdminPoppyUpdateRequestTasksWithDefaults() *AdminPoppyUpdateRequestTasks`

NewAdminPoppyUpdateRequestTasksWithDefaults instantiates a new AdminPoppyUpdateRequestTasks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMode

`func (o *AdminPoppyUpdateRequestTasks) GetMode() string`

GetMode returns the Mode field if non-nil, zero value otherwise.

### GetModeOk

`func (o *AdminPoppyUpdateRequestTasks) GetModeOk() (*string, bool)`

GetModeOk returns a tuple with the Mode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMode

`func (o *AdminPoppyUpdateRequestTasks) SetMode(v string)`

SetMode sets Mode field to given value.

### HasMode

`func (o *AdminPoppyUpdateRequestTasks) HasMode() bool`

HasMode returns a boolean if a field has been set.

### GetEndpoint

`func (o *AdminPoppyUpdateRequestTasks) GetEndpoint() string`

GetEndpoint returns the Endpoint field if non-nil, zero value otherwise.

### GetEndpointOk

`func (o *AdminPoppyUpdateRequestTasks) GetEndpointOk() (*string, bool)`

GetEndpointOk returns a tuple with the Endpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpoint

`func (o *AdminPoppyUpdateRequestTasks) SetEndpoint(v string)`

SetEndpoint sets Endpoint field to given value.

### HasEndpoint

`func (o *AdminPoppyUpdateRequestTasks) HasEndpoint() bool`

HasEndpoint returns a boolean if a field has been set.

### SetEndpointNil

`func (o *AdminPoppyUpdateRequestTasks) SetEndpointNil(b bool)`

 SetEndpointNil sets the value for Endpoint to be an explicit nil

### UnsetEndpoint
`func (o *AdminPoppyUpdateRequestTasks) UnsetEndpoint()`

UnsetEndpoint ensures that no value is present for Endpoint, not even an explicit nil
### GetExcludedTasks

`func (o *AdminPoppyUpdateRequestTasks) GetExcludedTasks() []map[string]interface{}`

GetExcludedTasks returns the ExcludedTasks field if non-nil, zero value otherwise.

### GetExcludedTasksOk

`func (o *AdminPoppyUpdateRequestTasks) GetExcludedTasksOk() (*[]map[string]interface{}, bool)`

GetExcludedTasksOk returns a tuple with the ExcludedTasks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExcludedTasks

`func (o *AdminPoppyUpdateRequestTasks) SetExcludedTasks(v []map[string]interface{})`

SetExcludedTasks sets ExcludedTasks field to given value.

### HasExcludedTasks

`func (o *AdminPoppyUpdateRequestTasks) HasExcludedTasks() bool`

HasExcludedTasks returns a boolean if a field has been set.

### GetFeedback

`func (o *AdminPoppyUpdateRequestTasks) GetFeedback() string`

GetFeedback returns the Feedback field if non-nil, zero value otherwise.

### GetFeedbackOk

`func (o *AdminPoppyUpdateRequestTasks) GetFeedbackOk() (*string, bool)`

GetFeedbackOk returns a tuple with the Feedback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeedback

`func (o *AdminPoppyUpdateRequestTasks) SetFeedback(v string)`

SetFeedback sets Feedback field to given value.

### HasFeedback

`func (o *AdminPoppyUpdateRequestTasks) HasFeedback() bool`

HasFeedback returns a boolean if a field has been set.

### GetFeedbackEndpoint

`func (o *AdminPoppyUpdateRequestTasks) GetFeedbackEndpoint() string`

GetFeedbackEndpoint returns the FeedbackEndpoint field if non-nil, zero value otherwise.

### GetFeedbackEndpointOk

`func (o *AdminPoppyUpdateRequestTasks) GetFeedbackEndpointOk() (*string, bool)`

GetFeedbackEndpointOk returns a tuple with the FeedbackEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeedbackEndpoint

`func (o *AdminPoppyUpdateRequestTasks) SetFeedbackEndpoint(v string)`

SetFeedbackEndpoint sets FeedbackEndpoint field to given value.

### HasFeedbackEndpoint

`func (o *AdminPoppyUpdateRequestTasks) HasFeedbackEndpoint() bool`

HasFeedbackEndpoint returns a boolean if a field has been set.

### SetFeedbackEndpointNil

`func (o *AdminPoppyUpdateRequestTasks) SetFeedbackEndpointNil(b bool)`

 SetFeedbackEndpointNil sets the value for FeedbackEndpoint to be an explicit nil

### UnsetFeedbackEndpoint
`func (o *AdminPoppyUpdateRequestTasks) UnsetFeedbackEndpoint()`

UnsetFeedbackEndpoint ensures that no value is present for FeedbackEndpoint, not even an explicit nil
### GetSkillIndex

`func (o *AdminPoppyUpdateRequestTasks) GetSkillIndex() map[string]interface{}`

GetSkillIndex returns the SkillIndex field if non-nil, zero value otherwise.

### GetSkillIndexOk

`func (o *AdminPoppyUpdateRequestTasks) GetSkillIndexOk() (*map[string]interface{}, bool)`

GetSkillIndexOk returns a tuple with the SkillIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkillIndex

`func (o *AdminPoppyUpdateRequestTasks) SetSkillIndex(v map[string]interface{})`

SetSkillIndex sets SkillIndex field to given value.

### HasSkillIndex

`func (o *AdminPoppyUpdateRequestTasks) HasSkillIndex() bool`

HasSkillIndex returns a boolean if a field has been set.

### SetSkillIndexNil

`func (o *AdminPoppyUpdateRequestTasks) SetSkillIndexNil(b bool)`

 SetSkillIndexNil sets the value for SkillIndex to be an explicit nil

### UnsetSkillIndex
`func (o *AdminPoppyUpdateRequestTasks) UnsetSkillIndex()`

UnsetSkillIndex ensures that no value is present for SkillIndex, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


