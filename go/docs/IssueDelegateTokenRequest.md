# IssueDelegateTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DelegateSub** | Pointer to **string** | Subject identifier of the delegate the agent token is issued to. | [optional] 
**DelegatePublicKey** | Pointer to **map[string]interface{}** | The delegate public key (JWK) bound into the agent token cnf. | [optional] 
**Audience** | Pointer to **interface{}** | Optional audience (string or array of strings). | [optional] 

## Methods

### NewIssueDelegateTokenRequest

`func NewIssueDelegateTokenRequest() *IssueDelegateTokenRequest`

NewIssueDelegateTokenRequest instantiates a new IssueDelegateTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssueDelegateTokenRequestWithDefaults

`func NewIssueDelegateTokenRequestWithDefaults() *IssueDelegateTokenRequest`

NewIssueDelegateTokenRequestWithDefaults instantiates a new IssueDelegateTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDelegateSub

`func (o *IssueDelegateTokenRequest) GetDelegateSub() string`

GetDelegateSub returns the DelegateSub field if non-nil, zero value otherwise.

### GetDelegateSubOk

`func (o *IssueDelegateTokenRequest) GetDelegateSubOk() (*string, bool)`

GetDelegateSubOk returns a tuple with the DelegateSub field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelegateSub

`func (o *IssueDelegateTokenRequest) SetDelegateSub(v string)`

SetDelegateSub sets DelegateSub field to given value.

### HasDelegateSub

`func (o *IssueDelegateTokenRequest) HasDelegateSub() bool`

HasDelegateSub returns a boolean if a field has been set.

### GetDelegatePublicKey

`func (o *IssueDelegateTokenRequest) GetDelegatePublicKey() map[string]interface{}`

GetDelegatePublicKey returns the DelegatePublicKey field if non-nil, zero value otherwise.

### GetDelegatePublicKeyOk

`func (o *IssueDelegateTokenRequest) GetDelegatePublicKeyOk() (*map[string]interface{}, bool)`

GetDelegatePublicKeyOk returns a tuple with the DelegatePublicKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelegatePublicKey

`func (o *IssueDelegateTokenRequest) SetDelegatePublicKey(v map[string]interface{})`

SetDelegatePublicKey sets DelegatePublicKey field to given value.

### HasDelegatePublicKey

`func (o *IssueDelegateTokenRequest) HasDelegatePublicKey() bool`

HasDelegatePublicKey returns a boolean if a field has been set.

### GetAudience

`func (o *IssueDelegateTokenRequest) GetAudience() interface{}`

GetAudience returns the Audience field if non-nil, zero value otherwise.

### GetAudienceOk

`func (o *IssueDelegateTokenRequest) GetAudienceOk() (*interface{}, bool)`

GetAudienceOk returns a tuple with the Audience field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudience

`func (o *IssueDelegateTokenRequest) SetAudience(v interface{})`

SetAudience sets Audience field to given value.

### HasAudience

`func (o *IssueDelegateTokenRequest) HasAudience() bool`

HasAudience returns a boolean if a field has been set.

### SetAudienceNil

`func (o *IssueDelegateTokenRequest) SetAudienceNil(b bool)`

 SetAudienceNil sets the value for Audience to be an explicit nil

### UnsetAudience
`func (o *IssueDelegateTokenRequest) UnsetAudience()`

UnsetAudience ensures that no value is present for Audience, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


