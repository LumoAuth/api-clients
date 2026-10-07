# EnrollAuthenticator201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**OtpauthUri** | Pointer to **string** |  | [optional] 
**Secret** | Pointer to **string** |  | [optional] 
**SecretGrouped** | Pointer to **string** |  | [optional] 
**QrDataUri** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**MaskedPhone** | Pointer to **string** |  | [optional] 
**ResendAfter** | Pointer to **int32** | Seconds until a new code may be requested | [optional] 
**MaskedEmail** | Pointer to **string** |  | [optional] 
**DeepLink** | Pointer to **string** |  | [optional] 
**ActivationCode** | Pointer to **string** |  | [optional] 
**PublicKey** | Pointer to **map[string]interface{}** | WebAuthn PublicKeyCredentialCreationOptions | [optional] 

## Methods

### NewEnrollAuthenticator201Response

`func NewEnrollAuthenticator201Response() *EnrollAuthenticator201Response`

NewEnrollAuthenticator201Response instantiates a new EnrollAuthenticator201Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEnrollAuthenticator201ResponseWithDefaults

`func NewEnrollAuthenticator201ResponseWithDefaults() *EnrollAuthenticator201Response`

NewEnrollAuthenticator201ResponseWithDefaults instantiates a new EnrollAuthenticator201Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *EnrollAuthenticator201Response) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *EnrollAuthenticator201Response) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *EnrollAuthenticator201Response) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *EnrollAuthenticator201Response) HasId() bool`

HasId returns a boolean if a field has been set.

### GetState

`func (o *EnrollAuthenticator201Response) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *EnrollAuthenticator201Response) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *EnrollAuthenticator201Response) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *EnrollAuthenticator201Response) HasState() bool`

HasState returns a boolean if a field has been set.

### GetOtpauthUri

`func (o *EnrollAuthenticator201Response) GetOtpauthUri() string`

GetOtpauthUri returns the OtpauthUri field if non-nil, zero value otherwise.

### GetOtpauthUriOk

`func (o *EnrollAuthenticator201Response) GetOtpauthUriOk() (*string, bool)`

GetOtpauthUriOk returns a tuple with the OtpauthUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtpauthUri

`func (o *EnrollAuthenticator201Response) SetOtpauthUri(v string)`

SetOtpauthUri sets OtpauthUri field to given value.

### HasOtpauthUri

`func (o *EnrollAuthenticator201Response) HasOtpauthUri() bool`

HasOtpauthUri returns a boolean if a field has been set.

### GetSecret

`func (o *EnrollAuthenticator201Response) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *EnrollAuthenticator201Response) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *EnrollAuthenticator201Response) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *EnrollAuthenticator201Response) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetSecretGrouped

`func (o *EnrollAuthenticator201Response) GetSecretGrouped() string`

GetSecretGrouped returns the SecretGrouped field if non-nil, zero value otherwise.

### GetSecretGroupedOk

`func (o *EnrollAuthenticator201Response) GetSecretGroupedOk() (*string, bool)`

GetSecretGroupedOk returns a tuple with the SecretGrouped field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecretGrouped

`func (o *EnrollAuthenticator201Response) SetSecretGrouped(v string)`

SetSecretGrouped sets SecretGrouped field to given value.

### HasSecretGrouped

`func (o *EnrollAuthenticator201Response) HasSecretGrouped() bool`

HasSecretGrouped returns a boolean if a field has been set.

### GetQrDataUri

`func (o *EnrollAuthenticator201Response) GetQrDataUri() string`

GetQrDataUri returns the QrDataUri field if non-nil, zero value otherwise.

### GetQrDataUriOk

`func (o *EnrollAuthenticator201Response) GetQrDataUriOk() (*string, bool)`

GetQrDataUriOk returns a tuple with the QrDataUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQrDataUri

`func (o *EnrollAuthenticator201Response) SetQrDataUri(v string)`

SetQrDataUri sets QrDataUri field to given value.

### HasQrDataUri

`func (o *EnrollAuthenticator201Response) HasQrDataUri() bool`

HasQrDataUri returns a boolean if a field has been set.

### GetExpiresAt

`func (o *EnrollAuthenticator201Response) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *EnrollAuthenticator201Response) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *EnrollAuthenticator201Response) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *EnrollAuthenticator201Response) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetMaskedPhone

`func (o *EnrollAuthenticator201Response) GetMaskedPhone() string`

GetMaskedPhone returns the MaskedPhone field if non-nil, zero value otherwise.

### GetMaskedPhoneOk

`func (o *EnrollAuthenticator201Response) GetMaskedPhoneOk() (*string, bool)`

GetMaskedPhoneOk returns a tuple with the MaskedPhone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaskedPhone

`func (o *EnrollAuthenticator201Response) SetMaskedPhone(v string)`

SetMaskedPhone sets MaskedPhone field to given value.

### HasMaskedPhone

`func (o *EnrollAuthenticator201Response) HasMaskedPhone() bool`

HasMaskedPhone returns a boolean if a field has been set.

### GetResendAfter

`func (o *EnrollAuthenticator201Response) GetResendAfter() int32`

GetResendAfter returns the ResendAfter field if non-nil, zero value otherwise.

### GetResendAfterOk

`func (o *EnrollAuthenticator201Response) GetResendAfterOk() (*int32, bool)`

GetResendAfterOk returns a tuple with the ResendAfter field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResendAfter

`func (o *EnrollAuthenticator201Response) SetResendAfter(v int32)`

SetResendAfter sets ResendAfter field to given value.

### HasResendAfter

`func (o *EnrollAuthenticator201Response) HasResendAfter() bool`

HasResendAfter returns a boolean if a field has been set.

### GetMaskedEmail

`func (o *EnrollAuthenticator201Response) GetMaskedEmail() string`

GetMaskedEmail returns the MaskedEmail field if non-nil, zero value otherwise.

### GetMaskedEmailOk

`func (o *EnrollAuthenticator201Response) GetMaskedEmailOk() (*string, bool)`

GetMaskedEmailOk returns a tuple with the MaskedEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaskedEmail

`func (o *EnrollAuthenticator201Response) SetMaskedEmail(v string)`

SetMaskedEmail sets MaskedEmail field to given value.

### HasMaskedEmail

`func (o *EnrollAuthenticator201Response) HasMaskedEmail() bool`

HasMaskedEmail returns a boolean if a field has been set.

### GetDeepLink

`func (o *EnrollAuthenticator201Response) GetDeepLink() string`

GetDeepLink returns the DeepLink field if non-nil, zero value otherwise.

### GetDeepLinkOk

`func (o *EnrollAuthenticator201Response) GetDeepLinkOk() (*string, bool)`

GetDeepLinkOk returns a tuple with the DeepLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeepLink

`func (o *EnrollAuthenticator201Response) SetDeepLink(v string)`

SetDeepLink sets DeepLink field to given value.

### HasDeepLink

`func (o *EnrollAuthenticator201Response) HasDeepLink() bool`

HasDeepLink returns a boolean if a field has been set.

### GetActivationCode

`func (o *EnrollAuthenticator201Response) GetActivationCode() string`

GetActivationCode returns the ActivationCode field if non-nil, zero value otherwise.

### GetActivationCodeOk

`func (o *EnrollAuthenticator201Response) GetActivationCodeOk() (*string, bool)`

GetActivationCodeOk returns a tuple with the ActivationCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivationCode

`func (o *EnrollAuthenticator201Response) SetActivationCode(v string)`

SetActivationCode sets ActivationCode field to given value.

### HasActivationCode

`func (o *EnrollAuthenticator201Response) HasActivationCode() bool`

HasActivationCode returns a boolean if a field has been set.

### GetPublicKey

`func (o *EnrollAuthenticator201Response) GetPublicKey() map[string]interface{}`

GetPublicKey returns the PublicKey field if non-nil, zero value otherwise.

### GetPublicKeyOk

`func (o *EnrollAuthenticator201Response) GetPublicKeyOk() (*map[string]interface{}, bool)`

GetPublicKeyOk returns a tuple with the PublicKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicKey

`func (o *EnrollAuthenticator201Response) SetPublicKey(v map[string]interface{})`

SetPublicKey sets PublicKey field to given value.

### HasPublicKey

`func (o *EnrollAuthenticator201Response) HasPublicKey() bool`

HasPublicKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


