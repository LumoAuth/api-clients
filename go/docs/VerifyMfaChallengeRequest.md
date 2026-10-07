# VerifyMfaChallengeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | Pointer to **string** |  | [optional] 
**Credential** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewVerifyMfaChallengeRequest

`func NewVerifyMfaChallengeRequest() *VerifyMfaChallengeRequest`

NewVerifyMfaChallengeRequest instantiates a new VerifyMfaChallengeRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyMfaChallengeRequestWithDefaults

`func NewVerifyMfaChallengeRequestWithDefaults() *VerifyMfaChallengeRequest`

NewVerifyMfaChallengeRequestWithDefaults instantiates a new VerifyMfaChallengeRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCode

`func (o *VerifyMfaChallengeRequest) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *VerifyMfaChallengeRequest) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *VerifyMfaChallengeRequest) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *VerifyMfaChallengeRequest) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetCredential

`func (o *VerifyMfaChallengeRequest) GetCredential() map[string]interface{}`

GetCredential returns the Credential field if non-nil, zero value otherwise.

### GetCredentialOk

`func (o *VerifyMfaChallengeRequest) GetCredentialOk() (*map[string]interface{}, bool)`

GetCredentialOk returns a tuple with the Credential field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredential

`func (o *VerifyMfaChallengeRequest) SetCredential(v map[string]interface{})`

SetCredential sets Credential field to given value.

### HasCredential

`func (o *VerifyMfaChallengeRequest) HasCredential() bool`

HasCredential returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


