# SendPoppyFeedbackRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Task** | **string** |  | 
**Description** | **string** | What the Personal Agent tried to do and why it could not, without identifiers or personal data. | 

## Methods

### NewSendPoppyFeedbackRequest

`func NewSendPoppyFeedbackRequest(task string, description string, ) *SendPoppyFeedbackRequest`

NewSendPoppyFeedbackRequest instantiates a new SendPoppyFeedbackRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendPoppyFeedbackRequestWithDefaults

`func NewSendPoppyFeedbackRequestWithDefaults() *SendPoppyFeedbackRequest`

NewSendPoppyFeedbackRequestWithDefaults instantiates a new SendPoppyFeedbackRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTask

`func (o *SendPoppyFeedbackRequest) GetTask() string`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *SendPoppyFeedbackRequest) GetTaskOk() (*string, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *SendPoppyFeedbackRequest) SetTask(v string)`

SetTask sets Task field to given value.


### GetDescription

`func (o *SendPoppyFeedbackRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *SendPoppyFeedbackRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *SendPoppyFeedbackRequest) SetDescription(v string)`

SetDescription sets Description field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


