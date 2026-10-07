# RegisterAgentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | Pointer to **bool** |  | [optional] 
**AgentId** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**WorkloadIdentity** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewRegisterAgentResponse

`func NewRegisterAgentResponse() *RegisterAgentResponse`

NewRegisterAgentResponse instantiates a new RegisterAgentResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRegisterAgentResponseWithDefaults

`func NewRegisterAgentResponseWithDefaults() *RegisterAgentResponse`

NewRegisterAgentResponseWithDefaults instantiates a new RegisterAgentResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *RegisterAgentResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *RegisterAgentResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *RegisterAgentResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *RegisterAgentResponse) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetAgentId

`func (o *RegisterAgentResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *RegisterAgentResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *RegisterAgentResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *RegisterAgentResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetName

`func (o *RegisterAgentResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RegisterAgentResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RegisterAgentResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RegisterAgentResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### GetWorkloadIdentity

`func (o *RegisterAgentResponse) GetWorkloadIdentity() string`

GetWorkloadIdentity returns the WorkloadIdentity field if non-nil, zero value otherwise.

### GetWorkloadIdentityOk

`func (o *RegisterAgentResponse) GetWorkloadIdentityOk() (*string, bool)`

GetWorkloadIdentityOk returns a tuple with the WorkloadIdentity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkloadIdentity

`func (o *RegisterAgentResponse) SetWorkloadIdentity(v string)`

SetWorkloadIdentity sets WorkloadIdentity field to given value.

### HasWorkloadIdentity

`func (o *RegisterAgentResponse) HasWorkloadIdentity() bool`

HasWorkloadIdentity returns a boolean if a field has been set.

### SetWorkloadIdentityNil

`func (o *RegisterAgentResponse) SetWorkloadIdentityNil(b bool)`

 SetWorkloadIdentityNil sets the value for WorkloadIdentity to be an explicit nil

### UnsetWorkloadIdentity
`func (o *RegisterAgentResponse) UnsetWorkloadIdentity()`

UnsetWorkloadIdentity ensures that no value is present for WorkloadIdentity, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


