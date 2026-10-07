# AttestResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **string** |  | 
**TokenType** | **string** |  | 
**ExpiresIn** | **int32** |  | 
**Scope** | **string** | Space-separated agent capabilities. | 
**Identity** | [**AttestResponseIdentity**](AttestResponseIdentity.md) |  | 

## Methods

### NewAttestResponse

`func NewAttestResponse(accessToken string, tokenType string, expiresIn int32, scope string, identity AttestResponseIdentity, ) *AttestResponse`

NewAttestResponse instantiates a new AttestResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAttestResponseWithDefaults

`func NewAttestResponseWithDefaults() *AttestResponse`

NewAttestResponseWithDefaults instantiates a new AttestResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *AttestResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *AttestResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *AttestResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.


### GetTokenType

`func (o *AttestResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *AttestResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *AttestResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.


### GetExpiresIn

`func (o *AttestResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *AttestResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *AttestResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.


### GetScope

`func (o *AttestResponse) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *AttestResponse) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *AttestResponse) SetScope(v string)`

SetScope sets Scope field to given value.


### GetIdentity

`func (o *AttestResponse) GetIdentity() AttestResponseIdentity`

GetIdentity returns the Identity field if non-nil, zero value otherwise.

### GetIdentityOk

`func (o *AttestResponse) GetIdentityOk() (*AttestResponseIdentity, bool)`

GetIdentityOk returns a tuple with the Identity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentity

`func (o *AttestResponse) SetIdentity(v AttestResponseIdentity)`

SetIdentity sets Identity field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


