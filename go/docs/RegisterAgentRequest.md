# RegisterAgentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | Pointer to **map[string]interface{}** | The agent to register or update (name, description, identity, capabilities, ...). The same fields may also be sent at the top level. | [optional] 
**Email** | Pointer to **string** | Optional inline sign-in of the person who registers the agent; a session or access token is preferred. | [optional] 
**Password** | Pointer to **string** |  | [optional] 

## Methods

### NewRegisterAgentRequest

`func NewRegisterAgentRequest() *RegisterAgentRequest`

NewRegisterAgentRequest instantiates a new RegisterAgentRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRegisterAgentRequestWithDefaults

`func NewRegisterAgentRequestWithDefaults() *RegisterAgentRequest`

NewRegisterAgentRequestWithDefaults instantiates a new RegisterAgentRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgent

`func (o *RegisterAgentRequest) GetAgent() map[string]interface{}`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *RegisterAgentRequest) GetAgentOk() (*map[string]interface{}, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *RegisterAgentRequest) SetAgent(v map[string]interface{})`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *RegisterAgentRequest) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetEmail

`func (o *RegisterAgentRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *RegisterAgentRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *RegisterAgentRequest) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *RegisterAgentRequest) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetPassword

`func (o *RegisterAgentRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *RegisterAgentRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *RegisterAgentRequest) SetPassword(v string)`

SetPassword sets Password field to given value.

### HasPassword

`func (o *RegisterAgentRequest) HasPassword() bool`

HasPassword returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


