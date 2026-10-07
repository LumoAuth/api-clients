# GetAgentCardResponseSignaturesItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Protected** | **string** | base64url JWS protected header. | 
**Signature** | **string** | base64url JWS signature. | 

## Methods

### NewGetAgentCardResponseSignaturesItem

`func NewGetAgentCardResponseSignaturesItem(protected string, signature string, ) *GetAgentCardResponseSignaturesItem`

NewGetAgentCardResponseSignaturesItem instantiates a new GetAgentCardResponseSignaturesItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetAgentCardResponseSignaturesItemWithDefaults

`func NewGetAgentCardResponseSignaturesItemWithDefaults() *GetAgentCardResponseSignaturesItem`

NewGetAgentCardResponseSignaturesItemWithDefaults instantiates a new GetAgentCardResponseSignaturesItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtected

`func (o *GetAgentCardResponseSignaturesItem) GetProtected() string`

GetProtected returns the Protected field if non-nil, zero value otherwise.

### GetProtectedOk

`func (o *GetAgentCardResponseSignaturesItem) GetProtectedOk() (*string, bool)`

GetProtectedOk returns a tuple with the Protected field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtected

`func (o *GetAgentCardResponseSignaturesItem) SetProtected(v string)`

SetProtected sets Protected field to given value.


### GetSignature

`func (o *GetAgentCardResponseSignaturesItem) GetSignature() string`

GetSignature returns the Signature field if non-nil, zero value otherwise.

### GetSignatureOk

`func (o *GetAgentCardResponseSignaturesItem) GetSignatureOk() (*string, bool)`

GetSignatureOk returns a tuple with the Signature field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignature

`func (o *GetAgentCardResponseSignaturesItem) SetSignature(v string)`

SetSignature sets Signature field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


