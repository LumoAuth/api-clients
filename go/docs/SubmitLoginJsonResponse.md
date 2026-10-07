# SubmitLoginJsonResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** |  | 
**ChallengeUrl** | Pointer to **string** | Path of the MFA challenge page; only when status&#x3D;mfa_required. | [optional] 

## Methods

### NewSubmitLoginJsonResponse

`func NewSubmitLoginJsonResponse(status string, ) *SubmitLoginJsonResponse`

NewSubmitLoginJsonResponse instantiates a new SubmitLoginJsonResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSubmitLoginJsonResponseWithDefaults

`func NewSubmitLoginJsonResponseWithDefaults() *SubmitLoginJsonResponse`

NewSubmitLoginJsonResponseWithDefaults instantiates a new SubmitLoginJsonResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *SubmitLoginJsonResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *SubmitLoginJsonResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *SubmitLoginJsonResponse) SetStatus(v string)`

SetStatus sets Status field to given value.


### GetChallengeUrl

`func (o *SubmitLoginJsonResponse) GetChallengeUrl() string`

GetChallengeUrl returns the ChallengeUrl field if non-nil, zero value otherwise.

### GetChallengeUrlOk

`func (o *SubmitLoginJsonResponse) GetChallengeUrlOk() (*string, bool)`

GetChallengeUrlOk returns a tuple with the ChallengeUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChallengeUrl

`func (o *SubmitLoginJsonResponse) SetChallengeUrl(v string)`

SetChallengeUrl sets ChallengeUrl field to given value.

### HasChallengeUrl

`func (o *SubmitLoginJsonResponse) HasChallengeUrl() bool`

HasChallengeUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


