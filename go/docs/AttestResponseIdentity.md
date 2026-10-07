# AttestResponseIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | Pointer to **string** |  | [optional] 
**Subject** | Pointer to **string** |  | [optional] 
**Issuer** | Pointer to **string** |  | [optional] 
**AudienceGeneric** | Pointer to **bool** | True when the registered audience is not specific to this deployment (operators should move to the agent-specific audience). | [optional] 

## Methods

### NewAttestResponseIdentity

`func NewAttestResponseIdentity() *AttestResponseIdentity`

NewAttestResponseIdentity instantiates a new AttestResponseIdentity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAttestResponseIdentityWithDefaults

`func NewAttestResponseIdentityWithDefaults() *AttestResponseIdentity`

NewAttestResponseIdentityWithDefaults instantiates a new AttestResponseIdentity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProvider

`func (o *AttestResponseIdentity) GetProvider() string`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AttestResponseIdentity) GetProviderOk() (*string, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AttestResponseIdentity) SetProvider(v string)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *AttestResponseIdentity) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetSubject

`func (o *AttestResponseIdentity) GetSubject() string`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *AttestResponseIdentity) GetSubjectOk() (*string, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *AttestResponseIdentity) SetSubject(v string)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *AttestResponseIdentity) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetIssuer

`func (o *AttestResponseIdentity) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *AttestResponseIdentity) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *AttestResponseIdentity) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *AttestResponseIdentity) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetAudienceGeneric

`func (o *AttestResponseIdentity) GetAudienceGeneric() bool`

GetAudienceGeneric returns the AudienceGeneric field if non-nil, zero value otherwise.

### GetAudienceGenericOk

`func (o *AttestResponseIdentity) GetAudienceGenericOk() (*bool, bool)`

GetAudienceGenericOk returns a tuple with the AudienceGeneric field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudienceGeneric

`func (o *AttestResponseIdentity) SetAudienceGeneric(v bool)`

SetAudienceGeneric sets AudienceGeneric field to given value.

### HasAudienceGeneric

`func (o *AttestResponseIdentity) HasAudienceGeneric() bool`

HasAudienceGeneric returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


