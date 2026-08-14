# IssuePlatformTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GrantType** | Pointer to **string** |  | [optional] 
**SubjectToken** | Pointer to **string** | A valid AAuth agent token (agent+jwt). | [optional] 
**SubjectTokenType** | Pointer to **string** |  | [optional] 
**Scope** | Pointer to **string** | Optional space-delimited scopes; narrows (never widens) the agent capabilities. | [optional] 

## Methods

### NewIssuePlatformTokenRequest

`func NewIssuePlatformTokenRequest() *IssuePlatformTokenRequest`

NewIssuePlatformTokenRequest instantiates a new IssuePlatformTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssuePlatformTokenRequestWithDefaults

`func NewIssuePlatformTokenRequestWithDefaults() *IssuePlatformTokenRequest`

NewIssuePlatformTokenRequestWithDefaults instantiates a new IssuePlatformTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGrantType

`func (o *IssuePlatformTokenRequest) GetGrantType() string`

GetGrantType returns the GrantType field if non-nil, zero value otherwise.

### GetGrantTypeOk

`func (o *IssuePlatformTokenRequest) GetGrantTypeOk() (*string, bool)`

GetGrantTypeOk returns a tuple with the GrantType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantType

`func (o *IssuePlatformTokenRequest) SetGrantType(v string)`

SetGrantType sets GrantType field to given value.

### HasGrantType

`func (o *IssuePlatformTokenRequest) HasGrantType() bool`

HasGrantType returns a boolean if a field has been set.

### GetSubjectToken

`func (o *IssuePlatformTokenRequest) GetSubjectToken() string`

GetSubjectToken returns the SubjectToken field if non-nil, zero value otherwise.

### GetSubjectTokenOk

`func (o *IssuePlatformTokenRequest) GetSubjectTokenOk() (*string, bool)`

GetSubjectTokenOk returns a tuple with the SubjectToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectToken

`func (o *IssuePlatformTokenRequest) SetSubjectToken(v string)`

SetSubjectToken sets SubjectToken field to given value.

### HasSubjectToken

`func (o *IssuePlatformTokenRequest) HasSubjectToken() bool`

HasSubjectToken returns a boolean if a field has been set.

### GetSubjectTokenType

`func (o *IssuePlatformTokenRequest) GetSubjectTokenType() string`

GetSubjectTokenType returns the SubjectTokenType field if non-nil, zero value otherwise.

### GetSubjectTokenTypeOk

`func (o *IssuePlatformTokenRequest) GetSubjectTokenTypeOk() (*string, bool)`

GetSubjectTokenTypeOk returns a tuple with the SubjectTokenType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectTokenType

`func (o *IssuePlatformTokenRequest) SetSubjectTokenType(v string)`

SetSubjectTokenType sets SubjectTokenType field to given value.

### HasSubjectTokenType

`func (o *IssuePlatformTokenRequest) HasSubjectTokenType() bool`

HasSubjectTokenType returns a boolean if a field has been set.

### GetScope

`func (o *IssuePlatformTokenRequest) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *IssuePlatformTokenRequest) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *IssuePlatformTokenRequest) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *IssuePlatformTokenRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


