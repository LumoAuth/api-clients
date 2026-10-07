# GetRequestTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | Pointer to **string** |  | [optional] 
**TokenType** | Pointer to **string** |  | [optional] 
**ExpiresIn** | Pointer to **int32** |  | [optional] 

## Methods

### NewGetRequestTokenResponse

`func NewGetRequestTokenResponse() *GetRequestTokenResponse`

NewGetRequestTokenResponse instantiates a new GetRequestTokenResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRequestTokenResponseWithDefaults

`func NewGetRequestTokenResponseWithDefaults() *GetRequestTokenResponse`

NewGetRequestTokenResponseWithDefaults instantiates a new GetRequestTokenResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *GetRequestTokenResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *GetRequestTokenResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *GetRequestTokenResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.

### HasAccessToken

`func (o *GetRequestTokenResponse) HasAccessToken() bool`

HasAccessToken returns a boolean if a field has been set.

### GetTokenType

`func (o *GetRequestTokenResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *GetRequestTokenResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *GetRequestTokenResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.

### HasTokenType

`func (o *GetRequestTokenResponse) HasTokenType() bool`

HasTokenType returns a boolean if a field has been set.

### GetExpiresIn

`func (o *GetRequestTokenResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *GetRequestTokenResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *GetRequestTokenResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.

### HasExpiresIn

`func (o *GetRequestTokenResponse) HasExpiresIn() bool`

HasExpiresIn returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


