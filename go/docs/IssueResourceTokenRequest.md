# IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agent** | Pointer to **string** | Agent identifier the resource token is bound to. | [optional] 
**AgentJkt** | Pointer to **string** | JWK thumbprint of the agent key (PoP binding). | [optional] 
**Scope** | Pointer to **string** | Optional space-delimited requested scopes. | [optional] 
**AuthRequestUrl** | Pointer to **string** | Optional auth request URL to embed in the token. | [optional] 
**AuthServer** | Pointer to **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] 

## Methods

### NewIssueResourceTokenRequest

`func NewIssueResourceTokenRequest() *IssueResourceTokenRequest`

NewIssueResourceTokenRequest instantiates a new IssueResourceTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssueResourceTokenRequestWithDefaults

`func NewIssueResourceTokenRequestWithDefaults() *IssueResourceTokenRequest`

NewIssueResourceTokenRequestWithDefaults instantiates a new IssueResourceTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgent

`func (o *IssueResourceTokenRequest) GetAgent() string`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *IssueResourceTokenRequest) GetAgentOk() (*string, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *IssueResourceTokenRequest) SetAgent(v string)`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *IssueResourceTokenRequest) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetAgentJkt

`func (o *IssueResourceTokenRequest) GetAgentJkt() string`

GetAgentJkt returns the AgentJkt field if non-nil, zero value otherwise.

### GetAgentJktOk

`func (o *IssueResourceTokenRequest) GetAgentJktOk() (*string, bool)`

GetAgentJktOk returns a tuple with the AgentJkt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentJkt

`func (o *IssueResourceTokenRequest) SetAgentJkt(v string)`

SetAgentJkt sets AgentJkt field to given value.

### HasAgentJkt

`func (o *IssueResourceTokenRequest) HasAgentJkt() bool`

HasAgentJkt returns a boolean if a field has been set.

### GetScope

`func (o *IssueResourceTokenRequest) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *IssueResourceTokenRequest) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *IssueResourceTokenRequest) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *IssueResourceTokenRequest) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetAuthRequestUrl

`func (o *IssueResourceTokenRequest) GetAuthRequestUrl() string`

GetAuthRequestUrl returns the AuthRequestUrl field if non-nil, zero value otherwise.

### GetAuthRequestUrlOk

`func (o *IssueResourceTokenRequest) GetAuthRequestUrlOk() (*string, bool)`

GetAuthRequestUrlOk returns a tuple with the AuthRequestUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthRequestUrl

`func (o *IssueResourceTokenRequest) SetAuthRequestUrl(v string)`

SetAuthRequestUrl sets AuthRequestUrl field to given value.

### HasAuthRequestUrl

`func (o *IssueResourceTokenRequest) HasAuthRequestUrl() bool`

HasAuthRequestUrl returns a boolean if a field has been set.

### GetAuthServer

`func (o *IssueResourceTokenRequest) GetAuthServer() string`

GetAuthServer returns the AuthServer field if non-nil, zero value otherwise.

### GetAuthServerOk

`func (o *IssueResourceTokenRequest) GetAuthServerOk() (*string, bool)`

GetAuthServerOk returns a tuple with the AuthServer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthServer

`func (o *IssueResourceTokenRequest) SetAuthServer(v string)`

SetAuthServer sets AuthServer field to given value.

### HasAuthServer

`func (o *IssueResourceTokenRequest) HasAuthServer() bool`

HasAuthServer returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


