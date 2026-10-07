# VerifyAgentCardResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Valid** | **bool** |  | 
**Error** | Pointer to **string** | Reason, only when valid&#x3D;false. | [optional] 
**Signer** | Pointer to [**VerifyAgentCardResponseSigner**](VerifyAgentCardResponseSigner.md) |  | [optional] 
**CardSummary** | Pointer to [**VerifyAgentCardResponseCardSummary**](VerifyAgentCardResponseCardSummary.md) |  | [optional] 

## Methods

### NewVerifyAgentCardResponse

`func NewVerifyAgentCardResponse(valid bool, ) *VerifyAgentCardResponse`

NewVerifyAgentCardResponse instantiates a new VerifyAgentCardResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyAgentCardResponseWithDefaults

`func NewVerifyAgentCardResponseWithDefaults() *VerifyAgentCardResponse`

NewVerifyAgentCardResponseWithDefaults instantiates a new VerifyAgentCardResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetValid

`func (o *VerifyAgentCardResponse) GetValid() bool`

GetValid returns the Valid field if non-nil, zero value otherwise.

### GetValidOk

`func (o *VerifyAgentCardResponse) GetValidOk() (*bool, bool)`

GetValidOk returns a tuple with the Valid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValid

`func (o *VerifyAgentCardResponse) SetValid(v bool)`

SetValid sets Valid field to given value.


### GetError

`func (o *VerifyAgentCardResponse) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *VerifyAgentCardResponse) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *VerifyAgentCardResponse) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *VerifyAgentCardResponse) HasError() bool`

HasError returns a boolean if a field has been set.

### GetSigner

`func (o *VerifyAgentCardResponse) GetSigner() VerifyAgentCardResponseSigner`

GetSigner returns the Signer field if non-nil, zero value otherwise.

### GetSignerOk

`func (o *VerifyAgentCardResponse) GetSignerOk() (*VerifyAgentCardResponseSigner, bool)`

GetSignerOk returns a tuple with the Signer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSigner

`func (o *VerifyAgentCardResponse) SetSigner(v VerifyAgentCardResponseSigner)`

SetSigner sets Signer field to given value.

### HasSigner

`func (o *VerifyAgentCardResponse) HasSigner() bool`

HasSigner returns a boolean if a field has been set.

### GetCardSummary

`func (o *VerifyAgentCardResponse) GetCardSummary() VerifyAgentCardResponseCardSummary`

GetCardSummary returns the CardSummary field if non-nil, zero value otherwise.

### GetCardSummaryOk

`func (o *VerifyAgentCardResponse) GetCardSummaryOk() (*VerifyAgentCardResponseCardSummary, bool)`

GetCardSummaryOk returns a tuple with the CardSummary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCardSummary

`func (o *VerifyAgentCardResponse) SetCardSummary(v VerifyAgentCardResponseCardSummary)`

SetCardSummary sets CardSummary field to given value.

### HasCardSummary

`func (o *VerifyAgentCardResponse) HasCardSummary() bool`

HasCardSummary returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


