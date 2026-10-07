# PasskeyEnrollmentStarted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**PublicKey** | Pointer to **map[string]interface{}** | WebAuthn PublicKeyCredentialCreationOptions | [optional] 

## Methods

### NewPasskeyEnrollmentStarted

`func NewPasskeyEnrollmentStarted() *PasskeyEnrollmentStarted`

NewPasskeyEnrollmentStarted instantiates a new PasskeyEnrollmentStarted object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPasskeyEnrollmentStartedWithDefaults

`func NewPasskeyEnrollmentStartedWithDefaults() *PasskeyEnrollmentStarted`

NewPasskeyEnrollmentStartedWithDefaults instantiates a new PasskeyEnrollmentStarted object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PasskeyEnrollmentStarted) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PasskeyEnrollmentStarted) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PasskeyEnrollmentStarted) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PasskeyEnrollmentStarted) HasId() bool`

HasId returns a boolean if a field has been set.

### GetState

`func (o *PasskeyEnrollmentStarted) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PasskeyEnrollmentStarted) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PasskeyEnrollmentStarted) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PasskeyEnrollmentStarted) HasState() bool`

HasState returns a boolean if a field has been set.

### GetPublicKey

`func (o *PasskeyEnrollmentStarted) GetPublicKey() map[string]interface{}`

GetPublicKey returns the PublicKey field if non-nil, zero value otherwise.

### GetPublicKeyOk

`func (o *PasskeyEnrollmentStarted) GetPublicKeyOk() (*map[string]interface{}, bool)`

GetPublicKeyOk returns a tuple with the PublicKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublicKey

`func (o *PasskeyEnrollmentStarted) SetPublicKey(v map[string]interface{})`

SetPublicKey sets PublicKey field to given value.

### HasPublicKey

`func (o *PasskeyEnrollmentStarted) HasPublicKey() bool`

HasPublicKey returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


