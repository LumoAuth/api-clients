# PollAgentEnrollmentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentId** | **string** |  | 
**ClientId** | **string** | The agent id, as the client_id of its token requests. | 
**Issuer** | **string** | The value a client assertion&#39;s aud must equal. | 
**TokenEndpoint** | **string** |  | 
**KeyId** | Pointer to **NullableString** | kid of the registered key (the first one). | [optional] 
**Capabilities** | **[]string** | The capabilities the person granted. | 
**CanActOnBehalfOfUsers** | **bool** |  | 
**OwnerUserId** | Pointer to **NullableString** | The approving person, the agent&#39;s owner. | [optional] 
**AgentUrl** | **string** | The agent&#39;s page in the portal. | 

## Methods

### NewPollAgentEnrollmentResponse

`func NewPollAgentEnrollmentResponse(agentId string, clientId string, issuer string, tokenEndpoint string, capabilities []string, canActOnBehalfOfUsers bool, agentUrl string, ) *PollAgentEnrollmentResponse`

NewPollAgentEnrollmentResponse instantiates a new PollAgentEnrollmentResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPollAgentEnrollmentResponseWithDefaults

`func NewPollAgentEnrollmentResponseWithDefaults() *PollAgentEnrollmentResponse`

NewPollAgentEnrollmentResponseWithDefaults instantiates a new PollAgentEnrollmentResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgentId

`func (o *PollAgentEnrollmentResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *PollAgentEnrollmentResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *PollAgentEnrollmentResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.


### GetClientId

`func (o *PollAgentEnrollmentResponse) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *PollAgentEnrollmentResponse) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *PollAgentEnrollmentResponse) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetIssuer

`func (o *PollAgentEnrollmentResponse) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *PollAgentEnrollmentResponse) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *PollAgentEnrollmentResponse) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.


### GetTokenEndpoint

`func (o *PollAgentEnrollmentResponse) GetTokenEndpoint() string`

GetTokenEndpoint returns the TokenEndpoint field if non-nil, zero value otherwise.

### GetTokenEndpointOk

`func (o *PollAgentEnrollmentResponse) GetTokenEndpointOk() (*string, bool)`

GetTokenEndpointOk returns a tuple with the TokenEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenEndpoint

`func (o *PollAgentEnrollmentResponse) SetTokenEndpoint(v string)`

SetTokenEndpoint sets TokenEndpoint field to given value.


### GetKeyId

`func (o *PollAgentEnrollmentResponse) GetKeyId() string`

GetKeyId returns the KeyId field if non-nil, zero value otherwise.

### GetKeyIdOk

`func (o *PollAgentEnrollmentResponse) GetKeyIdOk() (*string, bool)`

GetKeyIdOk returns a tuple with the KeyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeyId

`func (o *PollAgentEnrollmentResponse) SetKeyId(v string)`

SetKeyId sets KeyId field to given value.

### HasKeyId

`func (o *PollAgentEnrollmentResponse) HasKeyId() bool`

HasKeyId returns a boolean if a field has been set.

### SetKeyIdNil

`func (o *PollAgentEnrollmentResponse) SetKeyIdNil(b bool)`

 SetKeyIdNil sets the value for KeyId to be an explicit nil

### UnsetKeyId
`func (o *PollAgentEnrollmentResponse) UnsetKeyId()`

UnsetKeyId ensures that no value is present for KeyId, not even an explicit nil
### GetCapabilities

`func (o *PollAgentEnrollmentResponse) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *PollAgentEnrollmentResponse) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *PollAgentEnrollmentResponse) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.


### GetCanActOnBehalfOfUsers

`func (o *PollAgentEnrollmentResponse) GetCanActOnBehalfOfUsers() bool`

GetCanActOnBehalfOfUsers returns the CanActOnBehalfOfUsers field if non-nil, zero value otherwise.

### GetCanActOnBehalfOfUsersOk

`func (o *PollAgentEnrollmentResponse) GetCanActOnBehalfOfUsersOk() (*bool, bool)`

GetCanActOnBehalfOfUsersOk returns a tuple with the CanActOnBehalfOfUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanActOnBehalfOfUsers

`func (o *PollAgentEnrollmentResponse) SetCanActOnBehalfOfUsers(v bool)`

SetCanActOnBehalfOfUsers sets CanActOnBehalfOfUsers field to given value.


### GetOwnerUserId

`func (o *PollAgentEnrollmentResponse) GetOwnerUserId() string`

GetOwnerUserId returns the OwnerUserId field if non-nil, zero value otherwise.

### GetOwnerUserIdOk

`func (o *PollAgentEnrollmentResponse) GetOwnerUserIdOk() (*string, bool)`

GetOwnerUserIdOk returns a tuple with the OwnerUserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerUserId

`func (o *PollAgentEnrollmentResponse) SetOwnerUserId(v string)`

SetOwnerUserId sets OwnerUserId field to given value.

### HasOwnerUserId

`func (o *PollAgentEnrollmentResponse) HasOwnerUserId() bool`

HasOwnerUserId returns a boolean if a field has been set.

### SetOwnerUserIdNil

`func (o *PollAgentEnrollmentResponse) SetOwnerUserIdNil(b bool)`

 SetOwnerUserIdNil sets the value for OwnerUserId to be an explicit nil

### UnsetOwnerUserId
`func (o *PollAgentEnrollmentResponse) UnsetOwnerUserId()`

UnsetOwnerUserId ensures that no value is present for OwnerUserId, not even an explicit nil
### GetAgentUrl

`func (o *PollAgentEnrollmentResponse) GetAgentUrl() string`

GetAgentUrl returns the AgentUrl field if non-nil, zero value otherwise.

### GetAgentUrlOk

`func (o *PollAgentEnrollmentResponse) GetAgentUrlOk() (*string, bool)`

GetAgentUrlOk returns a tuple with the AgentUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentUrl

`func (o *PollAgentEnrollmentResponse) SetAgentUrl(v string)`

SetAgentUrl sets AgentUrl field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


