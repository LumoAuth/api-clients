# PutAdminAgentsUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**BudgetPolicy** | Pointer to **map[string]interface{}** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. An update replaces the whole policy; {} or null removes the budget, and a request without the field leaves it as it is. | [optional] 

## Methods

### NewPutAdminAgentsUpdateRequest

`func NewPutAdminAgentsUpdateRequest() *PutAdminAgentsUpdateRequest`

NewPutAdminAgentsUpdateRequest instantiates a new PutAdminAgentsUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminAgentsUpdateRequestWithDefaults

`func NewPutAdminAgentsUpdateRequestWithDefaults() *PutAdminAgentsUpdateRequest`

NewPutAdminAgentsUpdateRequestWithDefaults instantiates a new PutAdminAgentsUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PutAdminAgentsUpdateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PutAdminAgentsUpdateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PutAdminAgentsUpdateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PutAdminAgentsUpdateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *PutAdminAgentsUpdateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *PutAdminAgentsUpdateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *PutAdminAgentsUpdateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *PutAdminAgentsUpdateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetCapabilities

`func (o *PutAdminAgentsUpdateRequest) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *PutAdminAgentsUpdateRequest) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *PutAdminAgentsUpdateRequest) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *PutAdminAgentsUpdateRequest) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### GetBudgetPolicy

`func (o *PutAdminAgentsUpdateRequest) GetBudgetPolicy() map[string]interface{}`

GetBudgetPolicy returns the BudgetPolicy field if non-nil, zero value otherwise.

### GetBudgetPolicyOk

`func (o *PutAdminAgentsUpdateRequest) GetBudgetPolicyOk() (*map[string]interface{}, bool)`

GetBudgetPolicyOk returns a tuple with the BudgetPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetPolicy

`func (o *PutAdminAgentsUpdateRequest) SetBudgetPolicy(v map[string]interface{})`

SetBudgetPolicy sets BudgetPolicy field to given value.

### HasBudgetPolicy

`func (o *PutAdminAgentsUpdateRequest) HasBudgetPolicy() bool`

HasBudgetPolicy returns a boolean if a field has been set.

### SetBudgetPolicyNil

`func (o *PutAdminAgentsUpdateRequest) SetBudgetPolicyNil(b bool)`

 SetBudgetPolicyNil sets the value for BudgetPolicy to be an explicit nil

### UnsetBudgetPolicy
`func (o *PutAdminAgentsUpdateRequest) UnsetBudgetPolicy()`

UnsetBudgetPolicy ensures that no value is present for BudgetPolicy, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


