# IssueAgentTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestType** | Pointer to **string** | One of auth, code, exchange, refresh. | [optional] 
**ResourceToken** | Pointer to **string** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional] 
**RedirectUri** | Pointer to **string** | User-consent redirect (request_type&#x3D;auth/code). | [optional] 
**Code** | Pointer to **string** | Authorization code to exchange (request_type&#x3D;code). | [optional] 
**AuthToken** | Pointer to **string** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional] 
**RefreshToken** | Pointer to **string** | Refresh token to redeem (request_type&#x3D;refresh). | [optional] 

## Methods

### NewIssueAgentTokenRequest

`func NewIssueAgentTokenRequest() *IssueAgentTokenRequest`

NewIssueAgentTokenRequest instantiates a new IssueAgentTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssueAgentTokenRequestWithDefaults

`func NewIssueAgentTokenRequestWithDefaults() *IssueAgentTokenRequest`

NewIssueAgentTokenRequestWithDefaults instantiates a new IssueAgentTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestType

`func (o *IssueAgentTokenRequest) GetRequestType() string`

GetRequestType returns the RequestType field if non-nil, zero value otherwise.

### GetRequestTypeOk

`func (o *IssueAgentTokenRequest) GetRequestTypeOk() (*string, bool)`

GetRequestTypeOk returns a tuple with the RequestType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestType

`func (o *IssueAgentTokenRequest) SetRequestType(v string)`

SetRequestType sets RequestType field to given value.

### HasRequestType

`func (o *IssueAgentTokenRequest) HasRequestType() bool`

HasRequestType returns a boolean if a field has been set.

### GetResourceToken

`func (o *IssueAgentTokenRequest) GetResourceToken() string`

GetResourceToken returns the ResourceToken field if non-nil, zero value otherwise.

### GetResourceTokenOk

`func (o *IssueAgentTokenRequest) GetResourceTokenOk() (*string, bool)`

GetResourceTokenOk returns a tuple with the ResourceToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceToken

`func (o *IssueAgentTokenRequest) SetResourceToken(v string)`

SetResourceToken sets ResourceToken field to given value.

### HasResourceToken

`func (o *IssueAgentTokenRequest) HasResourceToken() bool`

HasResourceToken returns a boolean if a field has been set.

### GetRedirectUri

`func (o *IssueAgentTokenRequest) GetRedirectUri() string`

GetRedirectUri returns the RedirectUri field if non-nil, zero value otherwise.

### GetRedirectUriOk

`func (o *IssueAgentTokenRequest) GetRedirectUriOk() (*string, bool)`

GetRedirectUriOk returns a tuple with the RedirectUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRedirectUri

`func (o *IssueAgentTokenRequest) SetRedirectUri(v string)`

SetRedirectUri sets RedirectUri field to given value.

### HasRedirectUri

`func (o *IssueAgentTokenRequest) HasRedirectUri() bool`

HasRedirectUri returns a boolean if a field has been set.

### GetCode

`func (o *IssueAgentTokenRequest) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *IssueAgentTokenRequest) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *IssueAgentTokenRequest) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *IssueAgentTokenRequest) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetAuthToken

`func (o *IssueAgentTokenRequest) GetAuthToken() string`

GetAuthToken returns the AuthToken field if non-nil, zero value otherwise.

### GetAuthTokenOk

`func (o *IssueAgentTokenRequest) GetAuthTokenOk() (*string, bool)`

GetAuthTokenOk returns a tuple with the AuthToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthToken

`func (o *IssueAgentTokenRequest) SetAuthToken(v string)`

SetAuthToken sets AuthToken field to given value.

### HasAuthToken

`func (o *IssueAgentTokenRequest) HasAuthToken() bool`

HasAuthToken returns a boolean if a field has been set.

### GetRefreshToken

`func (o *IssueAgentTokenRequest) GetRefreshToken() string`

GetRefreshToken returns the RefreshToken field if non-nil, zero value otherwise.

### GetRefreshTokenOk

`func (o *IssueAgentTokenRequest) GetRefreshTokenOk() (*string, bool)`

GetRefreshTokenOk returns a tuple with the RefreshToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRefreshToken

`func (o *IssueAgentTokenRequest) SetRefreshToken(v string)`

SetRefreshToken sets RefreshToken field to given value.

### HasRefreshToken

`func (o *IssueAgentTokenRequest) HasRefreshToken() bool`

HasRefreshToken returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


