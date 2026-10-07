# GetConnectionTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **string** |  | 
**TokenType** | **string** |  | 
**ExpiresAt** | **NullableTime** | RFC 3339; null when the provider token does not expire. | 
**Scopes** | **[]string** |  | 

## Methods

### NewGetConnectionTokenResponse

`func NewGetConnectionTokenResponse(accessToken string, tokenType string, expiresAt NullableTime, scopes []string, ) *GetConnectionTokenResponse`

NewGetConnectionTokenResponse instantiates a new GetConnectionTokenResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetConnectionTokenResponseWithDefaults

`func NewGetConnectionTokenResponseWithDefaults() *GetConnectionTokenResponse`

NewGetConnectionTokenResponseWithDefaults instantiates a new GetConnectionTokenResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccessToken

`func (o *GetConnectionTokenResponse) GetAccessToken() string`

GetAccessToken returns the AccessToken field if non-nil, zero value otherwise.

### GetAccessTokenOk

`func (o *GetConnectionTokenResponse) GetAccessTokenOk() (*string, bool)`

GetAccessTokenOk returns a tuple with the AccessToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessToken

`func (o *GetConnectionTokenResponse) SetAccessToken(v string)`

SetAccessToken sets AccessToken field to given value.


### GetTokenType

`func (o *GetConnectionTokenResponse) GetTokenType() string`

GetTokenType returns the TokenType field if non-nil, zero value otherwise.

### GetTokenTypeOk

`func (o *GetConnectionTokenResponse) GetTokenTypeOk() (*string, bool)`

GetTokenTypeOk returns a tuple with the TokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenType

`func (o *GetConnectionTokenResponse) SetTokenType(v string)`

SetTokenType sets TokenType field to given value.


### GetExpiresAt

`func (o *GetConnectionTokenResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *GetConnectionTokenResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *GetConnectionTokenResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.


### SetExpiresAtNil

`func (o *GetConnectionTokenResponse) SetExpiresAtNil(b bool)`

 SetExpiresAtNil sets the value for ExpiresAt to be an explicit nil

### UnsetExpiresAt
`func (o *GetConnectionTokenResponse) UnsetExpiresAt()`

UnsetExpiresAt ensures that no value is present for ExpiresAt, not even an explicit nil
### GetScopes

`func (o *GetConnectionTokenResponse) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *GetConnectionTokenResponse) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *GetConnectionTokenResponse) SetScopes(v []string)`

SetScopes sets Scopes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


