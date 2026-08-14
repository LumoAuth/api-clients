# GetCurrentAgentResponseIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Tenant** | Pointer to **string** |  | [optional] 
**AgentId** | Pointer to **string** | Present when the principal is an agent. | [optional] 
**Status** | Pointer to **string** | Present when the principal is an agent. | [optional] 

## Methods

### NewGetCurrentAgentResponseIdentity

`func NewGetCurrentAgentResponseIdentity() *GetCurrentAgentResponseIdentity`

NewGetCurrentAgentResponseIdentity instantiates a new GetCurrentAgentResponseIdentity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetCurrentAgentResponseIdentityWithDefaults

`func NewGetCurrentAgentResponseIdentityWithDefaults() *GetCurrentAgentResponseIdentity`

NewGetCurrentAgentResponseIdentityWithDefaults instantiates a new GetCurrentAgentResponseIdentity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetCurrentAgentResponseIdentity) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetCurrentAgentResponseIdentity) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetCurrentAgentResponseIdentity) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *GetCurrentAgentResponseIdentity) HasId() bool`

HasId returns a boolean if a field has been set.

### GetType

`func (o *GetCurrentAgentResponseIdentity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *GetCurrentAgentResponseIdentity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *GetCurrentAgentResponseIdentity) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *GetCurrentAgentResponseIdentity) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTenant

`func (o *GetCurrentAgentResponseIdentity) GetTenant() string`

GetTenant returns the Tenant field if non-nil, zero value otherwise.

### GetTenantOk

`func (o *GetCurrentAgentResponseIdentity) GetTenantOk() (*string, bool)`

GetTenantOk returns a tuple with the Tenant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenant

`func (o *GetCurrentAgentResponseIdentity) SetTenant(v string)`

SetTenant sets Tenant field to given value.

### HasTenant

`func (o *GetCurrentAgentResponseIdentity) HasTenant() bool`

HasTenant returns a boolean if a field has been set.

### GetAgentId

`func (o *GetCurrentAgentResponseIdentity) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *GetCurrentAgentResponseIdentity) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *GetCurrentAgentResponseIdentity) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *GetCurrentAgentResponseIdentity) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetStatus

`func (o *GetCurrentAgentResponseIdentity) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetCurrentAgentResponseIdentity) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetCurrentAgentResponseIdentity) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *GetCurrentAgentResponseIdentity) HasStatus() bool`

HasStatus returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


