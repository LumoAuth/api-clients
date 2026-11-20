# AdminAgentsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Required. Human-readable agent name. | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**BudgetPolicy** | Pointer to **map[string]interface{}** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] 
**IdentityType** | Pointer to **string** | How the agent authenticates. Default api_key. | [optional] 
**Jwks** | Pointer to **map[string]interface{}** | For private_key_jwt: the public keys of the agent, inline (a JWK Set). Private key members are refused. Send jwks or jwksUri, not both. | [optional] 
**JwksUri** | Pointer to **string** | For private_key_jwt: https URL of the public key set of the agent. | [optional] 
**CanActOnBehalfOfUsers** | Pointer to **bool** | Whether the agent may act for users of the organization: approval prompts on their phones, Token Vault connections, the on-behalf-of token exchange and JIT requests for a user. Needs the delegation feature of the plan. Default false. | [optional] 

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
### GetIdentityType

`func (o *AdminAgentsCreateRequest) GetIdentityType() string`

GetIdentityType returns the IdentityType field if non-nil, zero value otherwise.

### GetIdentityTypeOk

`func (o *AdminAgentsCreateRequest) GetIdentityTypeOk() (*string, bool)`

GetIdentityTypeOk returns a tuple with the IdentityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentityType

`func (o *AdminAgentsCreateRequest) SetIdentityType(v string)`

SetIdentityType sets IdentityType field to given value.

### HasIdentityType

`func (o *AdminAgentsCreateRequest) HasIdentityType() bool`

HasIdentityType returns a boolean if a field has been set.

### GetJwks

`func (o *AdminAgentsCreateRequest) GetJwks() map[string]interface{}`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *AdminAgentsCreateRequest) GetJwksOk() (*map[string]interface{}, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *AdminAgentsCreateRequest) SetJwks(v map[string]interface{})`

SetJwks sets Jwks field to given value.

### HasJwks

`func (o *AdminAgentsCreateRequest) HasJwks() bool`

HasJwks returns a boolean if a field has been set.

### GetJwksUri

`func (o *AdminAgentsCreateRequest) GetJwksUri() string`

GetJwksUri returns the JwksUri field if non-nil, zero value otherwise.

### GetJwksUriOk

`func (o *AdminAgentsCreateRequest) GetJwksUriOk() (*string, bool)`

GetJwksUriOk returns a tuple with the JwksUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwksUri

`func (o *AdminAgentsCreateRequest) SetJwksUri(v string)`

SetJwksUri sets JwksUri field to given value.

### HasJwksUri

`func (o *AdminAgentsCreateRequest) HasJwksUri() bool`

HasJwksUri returns a boolean if a field has been set.

### GetCanActOnBehalfOfUsers

`func (o *AdminAgentsCreateRequest) GetCanActOnBehalfOfUsers() bool`

GetCanActOnBehalfOfUsers returns the CanActOnBehalfOfUsers field if non-nil, zero value otherwise.

### GetCanActOnBehalfOfUsersOk

`func (o *AdminAgentsCreateRequest) GetCanActOnBehalfOfUsersOk() (*bool, bool)`

GetCanActOnBehalfOfUsersOk returns a tuple with the CanActOnBehalfOfUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanActOnBehalfOfUsers

`func (o *AdminAgentsCreateRequest) SetCanActOnBehalfOfUsers(v bool)`

SetCanActOnBehalfOfUsers sets CanActOnBehalfOfUsers field to given value.

### HasCanActOnBehalfOfUsers

`func (o *AdminAgentsCreateRequest) HasCanActOnBehalfOfUsers() bool`

HasCanActOnBehalfOfUsers returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


