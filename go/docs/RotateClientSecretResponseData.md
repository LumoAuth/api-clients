# RotateClientSecretResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | Pointer to **string** | The identifier used in the request path | [optional] 
**Secret** | Pointer to **string** | New plaintext client secret — returned only once | [optional] 
**Note** | Pointer to **string** |  | [optional] 

## Methods

### NewRotateClientSecretResponseData

`func NewRotateClientSecretResponseData() *RotateClientSecretResponseData`

NewRotateClientSecretResponseData instantiates a new RotateClientSecretResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRotateClientSecretResponseDataWithDefaults

`func NewRotateClientSecretResponseDataWithDefaults() *RotateClientSecretResponseData`

NewRotateClientSecretResponseDataWithDefaults instantiates a new RotateClientSecretResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClientId

`func (o *RotateClientSecretResponseData) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *RotateClientSecretResponseData) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *RotateClientSecretResponseData) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *RotateClientSecretResponseData) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetSecret

`func (o *RotateClientSecretResponseData) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *RotateClientSecretResponseData) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *RotateClientSecretResponseData) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *RotateClientSecretResponseData) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetNote

`func (o *RotateClientSecretResponseData) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *RotateClientSecretResponseData) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *RotateClientSecretResponseData) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *RotateClientSecretResponseData) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


