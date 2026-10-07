# AgentOutboundConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionId** | **string** |  | 
**Name** | **string** |  | 
**Provider** | **string** |  | 
**ProviderLabel** | **string** | Human-readable provider name. | 
**GrantMode** | **string** |  | 
**Scopes** | **[]string** |  | 
**UserDelegated** | **bool** |  | 
**MachineGrantStatus** | **NullableString** | Status of the machine grant (not_established when none exists); null for user-delegated connections. | 
**LinkedUsers** | **NullableInt32** | Number of users with an active grant; null for machine connections. | 

## Methods

### NewAgentOutboundConnection

`func NewAgentOutboundConnection(connectionId string, name string, provider string, providerLabel string, grantMode string, scopes []string, userDelegated bool, machineGrantStatus NullableString, linkedUsers NullableInt32, ) *AgentOutboundConnection`

NewAgentOutboundConnection instantiates a new AgentOutboundConnection object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentOutboundConnectionWithDefaults

`func NewAgentOutboundConnectionWithDefaults() *AgentOutboundConnection`

NewAgentOutboundConnectionWithDefaults instantiates a new AgentOutboundConnection object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConnectionId

`func (o *AgentOutboundConnection) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *AgentOutboundConnection) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *AgentOutboundConnection) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetName

`func (o *AgentOutboundConnection) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AgentOutboundConnection) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AgentOutboundConnection) SetName(v string)`

SetName sets Name field to given value.


### GetProvider

`func (o *AgentOutboundConnection) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AgentOutboundConnection) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AgentOutboundConnection) SetProvider(v string)`

SetProvider sets Provider field to given value.


### GetProviderLabel

`func (o *AgentOutboundConnection) GetProviderLabel() string`

GetProviderLabel returns the ProviderLabel field if non-nil, zero value otherwise.

### GetProviderLabelOk

`func (o *AgentOutboundConnection) GetProviderLabelOk() (*string, bool)`

GetProviderLabelOk returns a tuple with the ProviderLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProviderLabel

`func (o *AgentOutboundConnection) SetProviderLabel(v string)`

SetProviderLabel sets ProviderLabel field to given value.


### GetGrantMode

`func (o *AgentOutboundConnection) GetGrantMode() string`

GetGrantMode returns the GrantMode field if non-nil, zero value otherwise.

### GetGrantModeOk

`func (o *AgentOutboundConnection) GetGrantModeOk() (*string, bool)`

GetGrantModeOk returns a tuple with the GrantMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantMode

`func (o *AgentOutboundConnection) SetGrantMode(v string)`

SetGrantMode sets GrantMode field to given value.


### GetScopes

`func (o *AgentOutboundConnection) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *AgentOutboundConnection) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *AgentOutboundConnection) SetScopes(v []string)`

SetScopes sets Scopes field to given value.


### GetUserDelegated

`func (o *AgentOutboundConnection) GetUserDelegated() bool`

GetUserDelegated returns the UserDelegated field if non-nil, zero value otherwise.

### GetUserDelegatedOk

`func (o *AgentOutboundConnection) GetUserDelegatedOk() (*bool, bool)`

GetUserDelegatedOk returns a tuple with the UserDelegated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserDelegated

`func (o *AgentOutboundConnection) SetUserDelegated(v bool)`

SetUserDelegated sets UserDelegated field to given value.


### GetMachineGrantStatus

`func (o *AgentOutboundConnection) GetMachineGrantStatus() string`

GetMachineGrantStatus returns the MachineGrantStatus field if non-nil, zero value otherwise.

### GetMachineGrantStatusOk

`func (o *AgentOutboundConnection) GetMachineGrantStatusOk() (*string, bool)`

GetMachineGrantStatusOk returns a tuple with the MachineGrantStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMachineGrantStatus

`func (o *AgentOutboundConnection) SetMachineGrantStatus(v string)`

SetMachineGrantStatus sets MachineGrantStatus field to given value.


### SetMachineGrantStatusNil

`func (o *AgentOutboundConnection) SetMachineGrantStatusNil(b bool)`

 SetMachineGrantStatusNil sets the value for MachineGrantStatus to be an explicit nil

### UnsetMachineGrantStatus
`func (o *AgentOutboundConnection) UnsetMachineGrantStatus()`

UnsetMachineGrantStatus ensures that no value is present for MachineGrantStatus, not even an explicit nil
### GetLinkedUsers

`func (o *AgentOutboundConnection) GetLinkedUsers() int32`

GetLinkedUsers returns the LinkedUsers field if non-nil, zero value otherwise.

### GetLinkedUsersOk

`func (o *AgentOutboundConnection) GetLinkedUsersOk() (*int32, bool)`

GetLinkedUsersOk returns a tuple with the LinkedUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinkedUsers

`func (o *AgentOutboundConnection) SetLinkedUsers(v int32)`

SetLinkedUsers sets LinkedUsers field to given value.


### SetLinkedUsersNil

`func (o *AgentOutboundConnection) SetLinkedUsersNil(b bool)`

 SetLinkedUsersNil sets the value for LinkedUsers to be an explicit nil

### UnsetLinkedUsers
`func (o *AgentOutboundConnection) UnsetLinkedUsers()`

UnsetLinkedUsers ensures that no value is present for LinkedUsers, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


