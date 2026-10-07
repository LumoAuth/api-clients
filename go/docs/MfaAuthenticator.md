# MfaAuthenticator

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**IsDefault** | Pointer to **bool** |  | [optional] 
**Tier** | Pointer to **int32** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] 
**TierLabel** | Pointer to **string** |  | [optional] 
**Amr** | Pointer to **[]string** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**ActivatedAt** | Pointer to **NullableTime** |  | [optional] 
**LastUsedAt** | Pointer to **NullableTime** |  | [optional] 
**LastUsedContext** | Pointer to [**NullableMfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] 
**Metadata** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewMfaAuthenticator

`func NewMfaAuthenticator() *MfaAuthenticator`

NewMfaAuthenticator instantiates a new MfaAuthenticator object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMfaAuthenticatorWithDefaults

`func NewMfaAuthenticatorWithDefaults() *MfaAuthenticator`

NewMfaAuthenticatorWithDefaults instantiates a new MfaAuthenticator object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *MfaAuthenticator) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MfaAuthenticator) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MfaAuthenticator) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *MfaAuthenticator) HasId() bool`

HasId returns a boolean if a field has been set.

### GetType

`func (o *MfaAuthenticator) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *MfaAuthenticator) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *MfaAuthenticator) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *MfaAuthenticator) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDisplayName

`func (o *MfaAuthenticator) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *MfaAuthenticator) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *MfaAuthenticator) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *MfaAuthenticator) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetState

`func (o *MfaAuthenticator) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *MfaAuthenticator) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *MfaAuthenticator) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *MfaAuthenticator) HasState() bool`

HasState returns a boolean if a field has been set.

### GetIsDefault

`func (o *MfaAuthenticator) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *MfaAuthenticator) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *MfaAuthenticator) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *MfaAuthenticator) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.

### GetTier

`func (o *MfaAuthenticator) GetTier() int32`

GetTier returns the Tier field if non-nil, zero value otherwise.

### GetTierOk

`func (o *MfaAuthenticator) GetTierOk() (*int32, bool)`

GetTierOk returns a tuple with the Tier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTier

`func (o *MfaAuthenticator) SetTier(v int32)`

SetTier sets Tier field to given value.

### HasTier

`func (o *MfaAuthenticator) HasTier() bool`

HasTier returns a boolean if a field has been set.

### GetTierLabel

`func (o *MfaAuthenticator) GetTierLabel() string`

GetTierLabel returns the TierLabel field if non-nil, zero value otherwise.

### GetTierLabelOk

`func (o *MfaAuthenticator) GetTierLabelOk() (*string, bool)`

GetTierLabelOk returns a tuple with the TierLabel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTierLabel

`func (o *MfaAuthenticator) SetTierLabel(v string)`

SetTierLabel sets TierLabel field to given value.

### HasTierLabel

`func (o *MfaAuthenticator) HasTierLabel() bool`

HasTierLabel returns a boolean if a field has been set.

### GetAmr

`func (o *MfaAuthenticator) GetAmr() []string`

GetAmr returns the Amr field if non-nil, zero value otherwise.

### GetAmrOk

`func (o *MfaAuthenticator) GetAmrOk() (*[]string, bool)`

GetAmrOk returns a tuple with the Amr field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmr

`func (o *MfaAuthenticator) SetAmr(v []string)`

SetAmr sets Amr field to given value.

### HasAmr

`func (o *MfaAuthenticator) HasAmr() bool`

HasAmr returns a boolean if a field has been set.

### GetCreatedAt

`func (o *MfaAuthenticator) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *MfaAuthenticator) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *MfaAuthenticator) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *MfaAuthenticator) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetActivatedAt

`func (o *MfaAuthenticator) GetActivatedAt() time.Time`

GetActivatedAt returns the ActivatedAt field if non-nil, zero value otherwise.

### GetActivatedAtOk

`func (o *MfaAuthenticator) GetActivatedAtOk() (*time.Time, bool)`

GetActivatedAtOk returns a tuple with the ActivatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivatedAt

`func (o *MfaAuthenticator) SetActivatedAt(v time.Time)`

SetActivatedAt sets ActivatedAt field to given value.

### HasActivatedAt

`func (o *MfaAuthenticator) HasActivatedAt() bool`

HasActivatedAt returns a boolean if a field has been set.

### SetActivatedAtNil

`func (o *MfaAuthenticator) SetActivatedAtNil(b bool)`

 SetActivatedAtNil sets the value for ActivatedAt to be an explicit nil

### UnsetActivatedAt
`func (o *MfaAuthenticator) UnsetActivatedAt()`

UnsetActivatedAt ensures that no value is present for ActivatedAt, not even an explicit nil
### GetLastUsedAt

`func (o *MfaAuthenticator) GetLastUsedAt() time.Time`

GetLastUsedAt returns the LastUsedAt field if non-nil, zero value otherwise.

### GetLastUsedAtOk

`func (o *MfaAuthenticator) GetLastUsedAtOk() (*time.Time, bool)`

GetLastUsedAtOk returns a tuple with the LastUsedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUsedAt

`func (o *MfaAuthenticator) SetLastUsedAt(v time.Time)`

SetLastUsedAt sets LastUsedAt field to given value.

### HasLastUsedAt

`func (o *MfaAuthenticator) HasLastUsedAt() bool`

HasLastUsedAt returns a boolean if a field has been set.

### SetLastUsedAtNil

`func (o *MfaAuthenticator) SetLastUsedAtNil(b bool)`

 SetLastUsedAtNil sets the value for LastUsedAt to be an explicit nil

### UnsetLastUsedAt
`func (o *MfaAuthenticator) UnsetLastUsedAt()`

UnsetLastUsedAt ensures that no value is present for LastUsedAt, not even an explicit nil
### GetLastUsedContext

`func (o *MfaAuthenticator) GetLastUsedContext() MfaAuthenticatorLastUsedContext`

GetLastUsedContext returns the LastUsedContext field if non-nil, zero value otherwise.

### GetLastUsedContextOk

`func (o *MfaAuthenticator) GetLastUsedContextOk() (*MfaAuthenticatorLastUsedContext, bool)`

GetLastUsedContextOk returns a tuple with the LastUsedContext field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUsedContext

`func (o *MfaAuthenticator) SetLastUsedContext(v MfaAuthenticatorLastUsedContext)`

SetLastUsedContext sets LastUsedContext field to given value.

### HasLastUsedContext

`func (o *MfaAuthenticator) HasLastUsedContext() bool`

HasLastUsedContext returns a boolean if a field has been set.

### SetLastUsedContextNil

`func (o *MfaAuthenticator) SetLastUsedContextNil(b bool)`

 SetLastUsedContextNil sets the value for LastUsedContext to be an explicit nil

### UnsetLastUsedContext
`func (o *MfaAuthenticator) UnsetLastUsedContext()`

UnsetLastUsedContext ensures that no value is present for LastUsedContext, not even an explicit nil
### GetMetadata

`func (o *MfaAuthenticator) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *MfaAuthenticator) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *MfaAuthenticator) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *MfaAuthenticator) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


