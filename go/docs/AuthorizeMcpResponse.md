# AuthorizeMcpResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | Pointer to **bool** |  | [optional] 
**AgentId** | Pointer to **string** |  | [optional] 
**Resource** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewAuthorizeMcpResponse

`func NewAuthorizeMcpResponse() *AuthorizeMcpResponse`

NewAuthorizeMcpResponse instantiates a new AuthorizeMcpResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthorizeMcpResponseWithDefaults

`func NewAuthorizeMcpResponseWithDefaults() *AuthorizeMcpResponse`

NewAuthorizeMcpResponseWithDefaults instantiates a new AuthorizeMcpResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowed

`func (o *AuthorizeMcpResponse) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *AuthorizeMcpResponse) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *AuthorizeMcpResponse) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *AuthorizeMcpResponse) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetAgentId

`func (o *AuthorizeMcpResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *AuthorizeMcpResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *AuthorizeMcpResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *AuthorizeMcpResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetResource

`func (o *AuthorizeMcpResponse) GetResource() map[string]interface{}`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *AuthorizeMcpResponse) GetResourceOk() (*map[string]interface{}, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *AuthorizeMcpResponse) SetResource(v map[string]interface{})`

SetResource sets Resource field to given value.

### HasResource

`func (o *AuthorizeMcpResponse) HasResource() bool`

HasResource returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


