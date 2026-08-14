# VerifyResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceToken** | Pointer to **string** | The resource token to validate. | [optional] 
**Agent** | Pointer to **string** | Agent identifier the token must be bound to. | [optional] 
**AgentJkt** | Pointer to **string** | JWK thumbprint of the agent key. | [optional] 

## Methods

### NewVerifyResourceTokenRequest

`func NewVerifyResourceTokenRequest() *VerifyResourceTokenRequest`

NewVerifyResourceTokenRequest instantiates a new VerifyResourceTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyResourceTokenRequestWithDefaults

`func NewVerifyResourceTokenRequestWithDefaults() *VerifyResourceTokenRequest`

NewVerifyResourceTokenRequestWithDefaults instantiates a new VerifyResourceTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

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

### HasResourceToken

`func (o *VerifyResourceTokenRequest) HasResourceToken() bool`

HasResourceToken returns a boolean if a field has been set.

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

### HasAgent

`func (o *VerifyResourceTokenRequest) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

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

### HasAgentJkt

`func (o *VerifyResourceTokenRequest) HasAgentJkt() bool`

HasAgentJkt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


