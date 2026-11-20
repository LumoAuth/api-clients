# StartAgentEnrollmentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Host** | **string** |  | 
**HostLabel** | Pointer to **string** |  | [optional] 
**Jwks** | [**StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  | 
**Capabilities** | [**[]StartAgentEnrollmentRequestCapabilitiesItem**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  | 
**Delegation** | Pointer to **bool** | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional] 
**Inventory** | Pointer to [**StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  | [optional] 

## Methods

### NewStartAgentEnrollmentRequest

`func NewStartAgentEnrollmentRequest(name string, host string, jwks StartAgentEnrollmentRequestJwks, capabilities []StartAgentEnrollmentRequestCapabilitiesItem, ) *StartAgentEnrollmentRequest`

NewStartAgentEnrollmentRequest instantiates a new StartAgentEnrollmentRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStartAgentEnrollmentRequestWithDefaults

`func NewStartAgentEnrollmentRequestWithDefaults() *StartAgentEnrollmentRequest`

NewStartAgentEnrollmentRequestWithDefaults instantiates a new StartAgentEnrollmentRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *StartAgentEnrollmentRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *StartAgentEnrollmentRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *StartAgentEnrollmentRequest) SetName(v string)`

SetName sets Name field to given value.


### GetHost

`func (o *StartAgentEnrollmentRequest) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *StartAgentEnrollmentRequest) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *StartAgentEnrollmentRequest) SetHost(v string)`

SetHost sets Host field to given value.


### GetHostLabel

`func (o *StartAgentEnrollmentRequest) GetHostLabel() string`

GetHostLabel returns the HostLabel field if non-nil, zero value otherwise.

### GetHostLabelOk

`func (o *StartAgentEnrollmentRequest) GetHostLabelOk() (*string, bool)`

GetHostLabelOk returns a tuple with the HostLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostLabel

`func (o *StartAgentEnrollmentRequest) SetHostLabel(v string)`

SetHostLabel sets HostLabel field to given value.

### HasHostLabel

`func (o *StartAgentEnrollmentRequest) HasHostLabel() bool`

HasHostLabel returns a boolean if a field has been set.

### GetJwks

`func (o *StartAgentEnrollmentRequest) GetJwks() StartAgentEnrollmentRequestJwks`

GetJwks returns the Jwks field if non-nil, zero value otherwise.

### GetJwksOk

`func (o *StartAgentEnrollmentRequest) GetJwksOk() (*StartAgentEnrollmentRequestJwks, bool)`

GetJwksOk returns a tuple with the Jwks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJwks

`func (o *StartAgentEnrollmentRequest) SetJwks(v StartAgentEnrollmentRequestJwks)`

SetJwks sets Jwks field to given value.


### GetCapabilities

`func (o *StartAgentEnrollmentRequest) GetCapabilities() []StartAgentEnrollmentRequestCapabilitiesItem`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *StartAgentEnrollmentRequest) GetCapabilitiesOk() (*[]StartAgentEnrollmentRequestCapabilitiesItem, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *StartAgentEnrollmentRequest) SetCapabilities(v []StartAgentEnrollmentRequestCapabilitiesItem)`

SetCapabilities sets Capabilities field to given value.


### GetDelegation

`func (o *StartAgentEnrollmentRequest) GetDelegation() bool`

GetDelegation returns the Delegation field if non-nil, zero value otherwise.

### GetDelegationOk

`func (o *StartAgentEnrollmentRequest) GetDelegationOk() (*bool, bool)`

GetDelegationOk returns a tuple with the Delegation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelegation

`func (o *StartAgentEnrollmentRequest) SetDelegation(v bool)`

SetDelegation sets Delegation field to given value.

### HasDelegation

`func (o *StartAgentEnrollmentRequest) HasDelegation() bool`

HasDelegation returns a boolean if a field has been set.

### GetInventory

`func (o *StartAgentEnrollmentRequest) GetInventory() StartAgentEnrollmentRequestInventory`

GetInventory returns the Inventory field if non-nil, zero value otherwise.

### GetInventoryOk

`func (o *StartAgentEnrollmentRequest) GetInventoryOk() (*StartAgentEnrollmentRequestInventory, bool)`

GetInventoryOk returns a tuple with the Inventory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInventory

`func (o *StartAgentEnrollmentRequest) SetInventory(v StartAgentEnrollmentRequestInventory)`

SetInventory sets Inventory field to given value.

### HasInventory

`func (o *StartAgentEnrollmentRequest) HasInventory() bool`

HasInventory returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


