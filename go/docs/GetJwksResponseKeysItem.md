# GetJwksResponseKeysItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kty** | **string** |  | 
**Kid** | **string** |  | 
**Use** | Pointer to **string** |  | [optional] 
**Alg** | Pointer to **string** |  | [optional] 
**N** | Pointer to **string** | RSA modulus, base64url (RSA keys). | [optional] 
**E** | Pointer to **string** | RSA exponent, base64url (RSA keys). | [optional] 
**Crv** | Pointer to **string** | Curve name (EC keys). | [optional] 
**X** | Pointer to **string** | EC x coordinate, base64url (EC keys). | [optional] 
**Y** | Pointer to **string** | EC y coordinate, base64url (EC keys). | [optional] 

## Methods

### NewGetJwksResponseKeysItem

`func NewGetJwksResponseKeysItem(kty string, kid string, ) *GetJwksResponseKeysItem`

NewGetJwksResponseKeysItem instantiates a new GetJwksResponseKeysItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetJwksResponseKeysItemWithDefaults

`func NewGetJwksResponseKeysItemWithDefaults() *GetJwksResponseKeysItem`

NewGetJwksResponseKeysItemWithDefaults instantiates a new GetJwksResponseKeysItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKty

`func (o *GetJwksResponseKeysItem) GetKty() string`

GetKty returns the Kty field if non-nil, zero value otherwise.

### GetKtyOk

`func (o *GetJwksResponseKeysItem) GetKtyOk() (*string, bool)`

GetKtyOk returns a tuple with the Kty field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKty

`func (o *GetJwksResponseKeysItem) SetKty(v string)`

SetKty sets Kty field to given value.


### GetKid

`func (o *GetJwksResponseKeysItem) GetKid() string`

GetKid returns the Kid field if non-nil, zero value otherwise.

### GetKidOk

`func (o *GetJwksResponseKeysItem) GetKidOk() (*string, bool)`

GetKidOk returns a tuple with the Kid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKid

`func (o *GetJwksResponseKeysItem) SetKid(v string)`

SetKid sets Kid field to given value.


### GetUse

`func (o *GetJwksResponseKeysItem) GetUse() string`

GetUse returns the Use field if non-nil, zero value otherwise.

### GetUseOk

`func (o *GetJwksResponseKeysItem) GetUseOk() (*string, bool)`

GetUseOk returns a tuple with the Use field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUse

`func (o *GetJwksResponseKeysItem) SetUse(v string)`

SetUse sets Use field to given value.

### HasUse

`func (o *GetJwksResponseKeysItem) HasUse() bool`

HasUse returns a boolean if a field has been set.

### GetAlg

`func (o *GetJwksResponseKeysItem) GetAlg() string`

GetAlg returns the Alg field if non-nil, zero value otherwise.

### GetAlgOk

`func (o *GetJwksResponseKeysItem) GetAlgOk() (*string, bool)`

GetAlgOk returns a tuple with the Alg field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlg

`func (o *GetJwksResponseKeysItem) SetAlg(v string)`

SetAlg sets Alg field to given value.

### HasAlg

`func (o *GetJwksResponseKeysItem) HasAlg() bool`

HasAlg returns a boolean if a field has been set.

### GetN

`func (o *GetJwksResponseKeysItem) GetN() string`

GetN returns the N field if non-nil, zero value otherwise.

### GetNOk

`func (o *GetJwksResponseKeysItem) GetNOk() (*string, bool)`

GetNOk returns a tuple with the N field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetN

`func (o *GetJwksResponseKeysItem) SetN(v string)`

SetN sets N field to given value.

### HasN

`func (o *GetJwksResponseKeysItem) HasN() bool`

HasN returns a boolean if a field has been set.

### GetE

`func (o *GetJwksResponseKeysItem) GetE() string`

GetE returns the E field if non-nil, zero value otherwise.

### GetEOk

`func (o *GetJwksResponseKeysItem) GetEOk() (*string, bool)`

GetEOk returns a tuple with the E field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetE

`func (o *GetJwksResponseKeysItem) SetE(v string)`

SetE sets E field to given value.

### HasE

`func (o *GetJwksResponseKeysItem) HasE() bool`

HasE returns a boolean if a field has been set.

### GetCrv

`func (o *GetJwksResponseKeysItem) GetCrv() string`

GetCrv returns the Crv field if non-nil, zero value otherwise.

### GetCrvOk

`func (o *GetJwksResponseKeysItem) GetCrvOk() (*string, bool)`

GetCrvOk returns a tuple with the Crv field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCrv

`func (o *GetJwksResponseKeysItem) SetCrv(v string)`

SetCrv sets Crv field to given value.

### HasCrv

`func (o *GetJwksResponseKeysItem) HasCrv() bool`

HasCrv returns a boolean if a field has been set.

### GetX

`func (o *GetJwksResponseKeysItem) GetX() string`

GetX returns the X field if non-nil, zero value otherwise.

### GetXOk

`func (o *GetJwksResponseKeysItem) GetXOk() (*string, bool)`

GetXOk returns a tuple with the X field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetX

`func (o *GetJwksResponseKeysItem) SetX(v string)`

SetX sets X field to given value.

### HasX

`func (o *GetJwksResponseKeysItem) HasX() bool`

HasX returns a boolean if a field has been set.

### GetY

`func (o *GetJwksResponseKeysItem) GetY() string`

GetY returns the Y field if non-nil, zero value otherwise.

### GetYOk

`func (o *GetJwksResponseKeysItem) GetYOk() (*string, bool)`

GetYOk returns a tuple with the Y field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetY

`func (o *GetJwksResponseKeysItem) SetY(v string)`

SetY sets Y field to given value.

### HasY

`func (o *GetJwksResponseKeysItem) HasY() bool`

HasY returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


