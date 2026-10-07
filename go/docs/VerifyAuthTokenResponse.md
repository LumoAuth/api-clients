# VerifyAuthTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | Pointer to **bool** |  | [optional] 
**Agent** | Pointer to **string** |  | [optional] 
**AgentDelegate** | Pointer to **string** |  | [optional] 
**Resource** | Pointer to **string** |  | [optional] 
**Sub** | Pointer to **string** |  | [optional] 
**Scope** | Pointer to **string** |  | [optional] 
**CnfJkt** | Pointer to **string** |  | [optional] 
**Act** | Pointer to **map[string]interface{}** |  | [optional] 
**PopRequired** | Pointer to **bool** |  | [optional] 
**Error** | Pointer to **string** |  | [optional] 

## Methods

### NewVerifyAuthTokenResponse

`func NewVerifyAuthTokenResponse() *VerifyAuthTokenResponse`

NewVerifyAuthTokenResponse instantiates a new VerifyAuthTokenResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyAuthTokenResponseWithDefaults

`func NewVerifyAuthTokenResponseWithDefaults() *VerifyAuthTokenResponse`

NewVerifyAuthTokenResponseWithDefaults instantiates a new VerifyAuthTokenResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetActive

`func (o *VerifyAuthTokenResponse) GetActive() bool`

GetActive returns the Active field if non-nil, zero value otherwise.

### GetActiveOk

`func (o *VerifyAuthTokenResponse) GetActiveOk() (*bool, bool)`

GetActiveOk returns a tuple with the Active field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActive

`func (o *VerifyAuthTokenResponse) SetActive(v bool)`

SetActive sets Active field to given value.

### HasActive

`func (o *VerifyAuthTokenResponse) HasActive() bool`

HasActive returns a boolean if a field has been set.

### GetAgent

`func (o *VerifyAuthTokenResponse) GetAgent() string`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *VerifyAuthTokenResponse) GetAgentOk() (*string, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *VerifyAuthTokenResponse) SetAgent(v string)`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *VerifyAuthTokenResponse) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetAgentDelegate

`func (o *VerifyAuthTokenResponse) GetAgentDelegate() string`

GetAgentDelegate returns the AgentDelegate field if non-nil, zero value otherwise.

### GetAgentDelegateOk

`func (o *VerifyAuthTokenResponse) GetAgentDelegateOk() (*string, bool)`

GetAgentDelegateOk returns a tuple with the AgentDelegate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentDelegate

`func (o *VerifyAuthTokenResponse) SetAgentDelegate(v string)`

SetAgentDelegate sets AgentDelegate field to given value.

### HasAgentDelegate

`func (o *VerifyAuthTokenResponse) HasAgentDelegate() bool`

HasAgentDelegate returns a boolean if a field has been set.

### GetResource

`func (o *VerifyAuthTokenResponse) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *VerifyAuthTokenResponse) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *VerifyAuthTokenResponse) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *VerifyAuthTokenResponse) HasResource() bool`

HasResource returns a boolean if a field has been set.

### GetSub

`func (o *VerifyAuthTokenResponse) GetSub() string`

GetSub returns the Sub field if non-nil, zero value otherwise.

### GetSubOk

`func (o *VerifyAuthTokenResponse) GetSubOk() (*string, bool)`

GetSubOk returns a tuple with the Sub field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSub

`func (o *VerifyAuthTokenResponse) SetSub(v string)`

SetSub sets Sub field to given value.

### HasSub

`func (o *VerifyAuthTokenResponse) HasSub() bool`

HasSub returns a boolean if a field has been set.

### GetScope

`func (o *VerifyAuthTokenResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *VerifyAuthTokenResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *VerifyAuthTokenResponse) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *VerifyAuthTokenResponse) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetCnfJkt

`func (o *VerifyAuthTokenResponse) GetCnfJkt() string`

GetCnfJkt returns the CnfJkt field if non-nil, zero value otherwise.

### GetCnfJktOk

`func (o *VerifyAuthTokenResponse) GetCnfJktOk() (*string, bool)`

GetCnfJktOk returns a tuple with the CnfJkt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCnfJkt

`func (o *VerifyAuthTokenResponse) SetCnfJkt(v string)`

SetCnfJkt sets CnfJkt field to given value.

### HasCnfJkt

`func (o *VerifyAuthTokenResponse) HasCnfJkt() bool`

HasCnfJkt returns a boolean if a field has been set.

### GetAct

`func (o *VerifyAuthTokenResponse) GetAct() map[string]interface{}`

GetAct returns the Act field if non-nil, zero value otherwise.

### GetActOk

`func (o *VerifyAuthTokenResponse) GetActOk() (*map[string]interface{}, bool)`

GetActOk returns a tuple with the Act field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAct

`func (o *VerifyAuthTokenResponse) SetAct(v map[string]interface{})`

SetAct sets Act field to given value.

### HasAct

`func (o *VerifyAuthTokenResponse) HasAct() bool`

HasAct returns a boolean if a field has been set.

### GetPopRequired

`func (o *VerifyAuthTokenResponse) GetPopRequired() bool`

GetPopRequired returns the PopRequired field if non-nil, zero value otherwise.

### GetPopRequiredOk

`func (o *VerifyAuthTokenResponse) GetPopRequiredOk() (*bool, bool)`

GetPopRequiredOk returns a tuple with the PopRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPopRequired

`func (o *VerifyAuthTokenResponse) SetPopRequired(v bool)`

SetPopRequired sets PopRequired field to given value.

### HasPopRequired

`func (o *VerifyAuthTokenResponse) HasPopRequired() bool`

HasPopRequired returns a boolean if a field has been set.

### GetError

`func (o *VerifyAuthTokenResponse) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *VerifyAuthTokenResponse) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *VerifyAuthTokenResponse) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *VerifyAuthTokenResponse) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


