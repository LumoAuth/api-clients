# CreateMfaChallengeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Purpose** | Pointer to **string** |  | [optional] [default to "step_up"]
**AuthenticatorId** | Pointer to **string** |  | [optional] 
**MinTier** | Pointer to **int32** | Require a factor at least this strong (1 &#x3D; passkey only) | [optional] 
**ActionDescription** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateMfaChallengeRequest

`func NewCreateMfaChallengeRequest() *CreateMfaChallengeRequest`

NewCreateMfaChallengeRequest instantiates a new CreateMfaChallengeRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateMfaChallengeRequestWithDefaults

`func NewCreateMfaChallengeRequestWithDefaults() *CreateMfaChallengeRequest`

NewCreateMfaChallengeRequestWithDefaults instantiates a new CreateMfaChallengeRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPurpose

`func (o *CreateMfaChallengeRequest) GetPurpose() string`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *CreateMfaChallengeRequest) GetPurposeOk() (*string, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *CreateMfaChallengeRequest) SetPurpose(v string)`

SetPurpose sets Purpose field to given value.

### HasPurpose

`func (o *CreateMfaChallengeRequest) HasPurpose() bool`

HasPurpose returns a boolean if a field has been set.

### GetAuthenticatorId

`func (o *CreateMfaChallengeRequest) GetAuthenticatorId() string`

GetAuthenticatorId returns the AuthenticatorId field if non-nil, zero value otherwise.

### GetAuthenticatorIdOk

`func (o *CreateMfaChallengeRequest) GetAuthenticatorIdOk() (*string, bool)`

GetAuthenticatorIdOk returns a tuple with the AuthenticatorId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthenticatorId

`func (o *CreateMfaChallengeRequest) SetAuthenticatorId(v string)`

SetAuthenticatorId sets AuthenticatorId field to given value.

### HasAuthenticatorId

`func (o *CreateMfaChallengeRequest) HasAuthenticatorId() bool`

HasAuthenticatorId returns a boolean if a field has been set.

### GetMinTier

`func (o *CreateMfaChallengeRequest) GetMinTier() int32`

GetMinTier returns the MinTier field if non-nil, zero value otherwise.

### GetMinTierOk

`func (o *CreateMfaChallengeRequest) GetMinTierOk() (*int32, bool)`

GetMinTierOk returns a tuple with the MinTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinTier

`func (o *CreateMfaChallengeRequest) SetMinTier(v int32)`

SetMinTier sets MinTier field to given value.

### HasMinTier

`func (o *CreateMfaChallengeRequest) HasMinTier() bool`

HasMinTier returns a boolean if a field has been set.

### GetActionDescription

`func (o *CreateMfaChallengeRequest) GetActionDescription() string`

GetActionDescription returns the ActionDescription field if non-nil, zero value otherwise.

### GetActionDescriptionOk

`func (o *CreateMfaChallengeRequest) GetActionDescriptionOk() (*string, bool)`

GetActionDescriptionOk returns a tuple with the ActionDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActionDescription

`func (o *CreateMfaChallengeRequest) SetActionDescription(v string)`

SetActionDescription sets ActionDescription field to given value.

### HasActionDescription

`func (o *CreateMfaChallengeRequest) HasActionDescription() bool`

HasActionDescription returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


