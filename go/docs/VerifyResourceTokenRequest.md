# VerifyResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**ResourceToken** | **string** | The resource token to validate. | 
**Agent** | **string** | Agent identifier the token must be bound to. | 
**AgentJkt** | **string** | JWK thumbprint of the agent key. | 

## Methods

### NewVerifyResourceTokenRequest

`func NewVerifyResourceTokenRequest(resource string, resourceToken string, agent string, agentJkt string, ) *VerifyResourceTokenRequest`

NewVerifyResourceTokenRequest instantiates a new VerifyResourceTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyResourceTokenRequestWithDefaults

`func NewVerifyResourceTokenRequestWithDefaults() *VerifyResourceTokenRequest`

NewVerifyResourceTokenRequestWithDefaults instantiates a new VerifyResourceTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResource

`func (o *VerifyResourceTokenRequest) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *VerifyResourceTokenRequest) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *VerifyResourceTokenRequest) SetResource(v string)`

SetResource sets Resource field to given value.


### GetResourceToken

`func (o *VerifyResourceTokenRequest) GetResourceToken() string`

GetResourceToken returns the ResourceToken field if non-nil, zero value otherwise.

### GetResourceTokenOk

`func (o *VerifyResourceTokenRequest) GetResourceTokenOk() (*string, bool)`

GetResourceTokenOk returns a tuple with the ResourceToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceToken

`func (o *VerifyResourceTokenRequest) SetResourceToken(v string)`

SetResourceToken sets ResourceToken field to given value.


### GetAgent

`func (o *VerifyResourceTokenRequest) GetAgent() string`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *VerifyResourceTokenRequest) GetAgentOk() (*string, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *VerifyResourceTokenRequest) SetAgent(v string)`

SetAgent sets Agent field to given value.


### GetAgentJkt

`func (o *VerifyResourceTokenRequest) GetAgentJkt() string`

GetAgentJkt returns the AgentJkt field if non-nil, zero value otherwise.

### GetAgentJktOk

`func (o *VerifyResourceTokenRequest) GetAgentJktOk() (*string, bool)`

GetAgentJktOk returns a tuple with the AgentJkt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentJkt

`func (o *VerifyResourceTokenRequest) SetAgentJkt(v string)`

SetAgentJkt sets AgentJkt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


