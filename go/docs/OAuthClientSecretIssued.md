# OAuthClientSecretIssued

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Secret** | Pointer to **string** | Plaintext client secret — returned only once, never retrievable again | [optional] 
**Note** | Pointer to **string** |  | [optional] 

## Methods

### NewOAuthClientSecretIssued

`func NewOAuthClientSecretIssued() *OAuthClientSecretIssued`

NewOAuthClientSecretIssued instantiates a new OAuthClientSecretIssued object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthClientSecretIssuedWithDefaults

`func NewOAuthClientSecretIssuedWithDefaults() *OAuthClientSecretIssued`

NewOAuthClientSecretIssuedWithDefaults instantiates a new OAuthClientSecretIssued object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSecret

`func (o *OAuthClientSecretIssued) GetSecret() string`

GetSecret returns the Secret field if non-nil, zero value otherwise.

### GetSecretOk

`func (o *OAuthClientSecretIssued) GetSecretOk() (*string, bool)`

GetSecretOk returns a tuple with the Secret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecret

`func (o *OAuthClientSecretIssued) SetSecret(v string)`

SetSecret sets Secret field to given value.

### HasSecret

`func (o *OAuthClientSecretIssued) HasSecret() bool`

HasSecret returns a boolean if a field has been set.

### GetNote

`func (o *OAuthClientSecretIssued) GetNote() string`

GetNote returns the Note field if non-nil, zero value otherwise.

### GetNoteOk

`func (o *OAuthClientSecretIssued) GetNoteOk() (*string, bool)`

GetNoteOk returns a tuple with the Note field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNote

`func (o *OAuthClientSecretIssued) SetNote(v string)`

SetNote sets Note field to given value.

### HasNote

`func (o *OAuthClientSecretIssued) HasNote() bool`

HasNote returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


