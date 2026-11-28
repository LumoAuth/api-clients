# AttestRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttestationToken** | **string** | The workload OIDC token (JWT). | 
**Scope** | Pointer to [**AttestRequestScope**](AttestRequestScope.md) |  | [optional] 

## Methods

### NewAttestRequest

`func NewAttestRequest(attestationToken string, ) *AttestRequest`

NewAttestRequest instantiates a new AttestRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAttestRequestWithDefaults

`func NewAttestRequestWithDefaults() *AttestRequest`

NewAttestRequestWithDefaults instantiates a new AttestRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAttestationToken

`func (o *AttestRequest) GetAttestationToken() string`

GetAttestationToken returns the AttestationToken field if non-nil, zero value otherwise.

### GetAttestationTokenOk

`func (o *AttestRequest) GetAttestationTokenOk() (*string, bool)`

GetAttestationTokenOk returns a tuple with the AttestationToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestationToken

`func (o *AttestRequest) SetAttestationToken(v string)`

SetAttestationToken sets AttestationToken field to given value.


### GetScope

`func (o *AttestRequest) GetScope() AttestRequestScope`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *AttestRequest) GetScopeOk() (*AttestRequestScope, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *AttestRequest) SetScope(v AttestRequestScope)`

SetScope sets Scope field to given value.

### HasScope

`func (o *AttestRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


