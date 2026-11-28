# PutAdminSettingsSecurityUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DpopRequireNonce** | Pointer to **bool** | Require a server nonce in DPoP proofs. | [optional] 

## Methods

### NewPutAdminSettingsSecurityUpdateRequest

`func NewPutAdminSettingsSecurityUpdateRequest() *PutAdminSettingsSecurityUpdateRequest`

NewPutAdminSettingsSecurityUpdateRequest instantiates a new PutAdminSettingsSecurityUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsSecurityUpdateRequestWithDefaults

`func NewPutAdminSettingsSecurityUpdateRequestWithDefaults() *PutAdminSettingsSecurityUpdateRequest`

NewPutAdminSettingsSecurityUpdateRequestWithDefaults instantiates a new PutAdminSettingsSecurityUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDpopRequireNonce

`func (o *PutAdminSettingsSecurityUpdateRequest) GetDpopRequireNonce() bool`

GetDpopRequireNonce returns the DpopRequireNonce field if non-nil, zero value otherwise.

### GetDpopRequireNonceOk

`func (o *PutAdminSettingsSecurityUpdateRequest) GetDpopRequireNonceOk() (*bool, bool)`

GetDpopRequireNonceOk returns a tuple with the DpopRequireNonce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDpopRequireNonce

`func (o *PutAdminSettingsSecurityUpdateRequest) SetDpopRequireNonce(v bool)`

SetDpopRequireNonce sets DpopRequireNonce field to given value.

### HasDpopRequireNonce

`func (o *PutAdminSettingsSecurityUpdateRequest) HasDpopRequireNonce() bool`

HasDpopRequireNonce returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


