# MfaChallenge

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Purpose** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**Authenticator** | Pointer to [**NullableMfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional] 
**Alternatives** | Pointer to [**[]MfaChallengeAlternativesInner**](MfaChallengeAlternativesInner.md) |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**AttemptsRemaining** | Pointer to **int32** |  | [optional] 
**Delivery** | Pointer to **string** |  | [optional] 
**NumberMatch** | Pointer to **int32** | Two-digit number to show the user when delivery is push_sent | [optional] 
**PublicKey** | Pointer to **map[string]interface{}** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional] 

## Methods

### NewMfaChallenge

`func NewMfaChallenge() *MfaChallenge`

NewMfaChallenge instantiates a new MfaChallenge object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMfaChallengeWithDefaults

`func NewMfaChallengeWithDefaults() *MfaChallenge`

NewMfaChallengeWithDefaults instantiates a new MfaChallenge object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *MfaChallenge) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MfaChallenge) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MfaChallenge) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *MfaChallenge) HasId() bool`

HasId returns a boolean if a field has been set.

### GetPurpose

`func (o *MfaChallenge) GetPurpose() string`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *MfaChallenge) GetPurposeOk() (*string, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *MfaChallenge) SetPurpose(v string)`

SetPurpose sets Purpose field to given value.

### HasPurpose

`func (o *MfaChallenge) HasPurpose() bool`

HasPurpose returns a boolean if a field has been set.

### GetStatus

`func (o *MfaChallenge) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *MfaChallenge) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *MfaChallenge) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *MfaChallenge) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetAuthenticator

`func (o *MfaChallenge) GetAuthenticator() MfaChallengeAuthenticator`

GetAuthenticator returns the Authenticator field if non-nil, zero value otherwise.

### GetAuthenticatorOk

`func (o *MfaChallenge) GetAuthenticatorOk() (*MfaChallengeAuthenticator, bool)`

GetAuthenticatorOk returns a tuple with the Authenticator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthenticator

`func (o *MfaChallenge) SetAuthenticator(v MfaChallengeAuthenticator)`

SetAuthenticator sets Authenticator field to given value.

### HasAuthenticator

`func (o *MfaChallenge) HasAuthenticator() bool`

HasAuthenticator returns a boolean if a field has been set.

### SetAuthenticatorNil

`func (o *MfaChallenge) SetAuthenticatorNil(b bool)`

 SetAuthenticatorNil sets the value for Authenticator to be an explicit nil

### UnsetAuthenticator
`func (o *MfaChallenge) UnsetAuthenticator()`

UnsetAuthenticator ensures that no value is present for Authenticator, not even an explicit nil
### GetAlternatives

`func (o *MfaChallenge) GetAlternatives() []MfaChallengeAlternativesInner`

GetAlternatives returns the Alternatives field if non-nil, zero value otherwise.

### GetAlternativesOk

`func (o *MfaChallenge) GetAlternativesOk() (*[]MfaChallengeAlternativesInner, bool)`

GetAlternativesOk returns a tuple with the Alternatives field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlternatives

`func (o *MfaChallenge) SetAlternatives(v []MfaChallengeAlternativesInner)`

SetAlternatives sets Alternatives field to given value.

### HasAlternatives

`func (o *MfaChallenge) HasAlternatives() bool`

HasAlternatives returns a boolean if a field has been set.

### GetExpiresAt

`func (o *MfaChallenge) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *MfaChallenge) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *MfaChallenge) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *MfaChallenge) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetAttemptsRemaining

`func (o *MfaChallenge) GetAttemptsRemaining() int32`

GetAttemptsRemaining returns the AttemptsRemaining field if non-nil, zero value otherwise.

### GetAttemptsRemainingOk

`func (o *MfaChallenge) GetAttemptsRemainingOk() (*int32, bool)`

GetAttemptsRemainingOk returns a tuple with the AttemptsRemaining field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttemptsRemaining

`func (o *MfaChallenge) SetAttemptsRemaining(v int32)`

SetAttemptsRemaining sets AttemptsRemaining field to given value.

### HasAttemptsRemaining

`func (o *MfaChallenge) HasAttemptsRemaining() bool`

HasAttemptsRemaining returns a boolean if a field has been set.

### GetDelivery

`func (o *MfaChallenge) GetDelivery() string`

GetDelivery returns the Delivery field if non-nil, zero value otherwise.

### GetDeliveryOk

`func (o *MfaChallenge) GetDeliveryOk() (*string, bool)`

GetDeliveryOk returns a tuple with the Delivery field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelivery

`func (o *MfaChallenge) SetDelivery(v string)`

SetDelivery sets Delivery field to given value.

### HasDelivery

`func (o *MfaChallenge) HasDelivery() bool`

HasDelivery returns a boolean if a field has been set.

### GetNumberMatch

`func (o *MfaChallenge) GetNumberMatch() int32`

GetNumberMatch returns the NumberMatch field if non-nil, zero value otherwise.

### GetNumberMatchOk

`func (o *MfaChallenge) GetNumberMatchOk() (*int32, bool)`

GetNumberMatchOk returns a tuple with the NumberMatch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberMatch

`func (o *MfaChallenge) SetNumberMatch(v int32)`

SetNumberMatch sets NumberMatch field to given value.

### HasNumberMatch

`func (o *MfaChallenge) HasNumberMatch() bool`

HasNumberMatch returns a boolean if a field has been set.

### GetPublicKey

`func (o *MfaChallenge) GetPublicKey() map[string]interface{}`

GetPublicKey returns the PublicKey field if non-nil, zero value otherwise.

### GetPublicKeyOk

`func (o *MfaChallenge) GetPublicKeyOk() (*map[string]interface{}, bool)`

GetPublicKeyOk returns a tuple with the PublicKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicKey

`func (o *MfaChallenge) SetPublicKey(v map[string]interface{})`

SetPublicKey sets PublicKey field to given value.

### HasPublicKey

`func (o *MfaChallenge) HasPublicKey() bool`

HasPublicKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


