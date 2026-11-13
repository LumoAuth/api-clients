# AdminAgentsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Required. Human-readable agent name. | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**BudgetPolicy** | Pointer to **map[string]interface{}** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] 

## Methods

### NewAdminAgentsCreateRequest

`func NewAdminAgentsCreateRequest() *AdminAgentsCreateRequest`

NewAdminAgentsCreateRequest instantiates a new AdminAgentsCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsCreateRequestWithDefaults

`func NewAdminAgentsCreateRequestWithDefaults() *AdminAgentsCreateRequest`

NewAdminAgentsCreateRequestWithDefaults instantiates a new AdminAgentsCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AdminAgentsCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminAgentsCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminAgentsCreateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AdminAgentsCreateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *AdminAgentsCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdminAgentsCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdminAgentsCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdminAgentsCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetCapabilities

`func (o *AdminAgentsCreateRequest) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *AdminAgentsCreateRequest) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *AdminAgentsCreateRequest) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *AdminAgentsCreateRequest) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### GetBudgetPolicy

`func (o *AdminAgentsCreateRequest) GetBudgetPolicy() map[string]interface{}`

GetBudgetPolicy returns the BudgetPolicy field if non-nil, zero value otherwise.

### GetBudgetPolicyOk

`func (o *AdminAgentsCreateRequest) GetBudgetPolicyOk() (*map[string]interface{}, bool)`

GetBudgetPolicyOk returns a tuple with the BudgetPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudgetPolicy

`func (o *AdminAgentsCreateRequest) SetBudgetPolicy(v map[string]interface{})`

SetBudgetPolicy sets BudgetPolicy field to given value.

### HasBudgetPolicy

`func (o *AdminAgentsCreateRequest) HasBudgetPolicy() bool`

HasBudgetPolicy returns a boolean if a field has been set.

### SetBudgetPolicyNil

`func (o *AdminAgentsCreateRequest) SetBudgetPolicyNil(b bool)`

 SetBudgetPolicyNil sets the value for BudgetPolicy to be an explicit nil

### UnsetBudgetPolicy
`func (o *AdminAgentsCreateRequest) UnsetBudgetPolicy()`

UnsetBudgetPolicy ensures that no value is present for BudgetPolicy, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


