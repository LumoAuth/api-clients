# EndPoppySessionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PersonalAgent** | **string** | The client_id of the Personal Agent, as the verification result gave it. | 
**Sid** | **string** | The Session ID. | 

## Methods

### NewEndPoppySessionRequest

`func NewEndPoppySessionRequest(personalAgent string, sid string, ) *EndPoppySessionRequest`

NewEndPoppySessionRequest instantiates a new EndPoppySessionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEndPoppySessionRequestWithDefaults

`func NewEndPoppySessionRequestWithDefaults() *EndPoppySessionRequest`

NewEndPoppySessionRequestWithDefaults instantiates a new EndPoppySessionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPersonalAgent

`func (o *EndPoppySessionRequest) GetPersonalAgent() string`

GetPersonalAgent returns the PersonalAgent field if non-nil, zero value otherwise.

### GetPersonalAgentOk

`func (o *EndPoppySessionRequest) GetPersonalAgentOk() (*string, bool)`

GetPersonalAgentOk returns a tuple with the PersonalAgent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPersonalAgent

`func (o *EndPoppySessionRequest) SetPersonalAgent(v string)`

SetPersonalAgent sets PersonalAgent field to given value.


### GetSid

`func (o *EndPoppySessionRequest) GetSid() string`

GetSid returns the Sid field if non-nil, zero value otherwise.

### GetSidOk

`func (o *EndPoppySessionRequest) GetSidOk() (*string, bool)`

GetSidOk returns a tuple with the Sid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSid

`func (o *EndPoppySessionRequest) SetSid(v string)`

SetSid sets Sid field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


