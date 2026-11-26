# PoppyVerifyResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **bool** |  | 
**ClientId** | Pointer to **string** | The personal agent (the URL of its metadata document). | [optional] 
**ClientName** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. | [optional] 
**AgentId** | Pointer to **NullableString** |  | [optional] 
**Session** | Pointer to [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional] 
**SignedIn** | Pointer to **bool** |  | [optional] 
**Account** | Pointer to [**NullablePoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional] 
**Version** | Pointer to **string** |  | [optional] 
**Extensions** | Pointer to **map[string]string** | The extensions that the request declares, name to version. | [optional] 
**Error** | Pointer to **string** |  | [optional] 
**ErrorDescription** | Pointer to **string** |  | [optional] 
**Scope** | Pointer to **string** | The scopes that a refusal asks for. | [optional] 
**Response** | Pointer to [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional] 

## Methods

### NewPoppyVerifyResult

`func NewPoppyVerifyResult(active bool, ) *PoppyVerifyResult`

NewPoppyVerifyResult instantiates a new PoppyVerifyResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyVerifyResultWithDefaults

`func NewPoppyVerifyResultWithDefaults() *PoppyVerifyResult`

NewPoppyVerifyResultWithDefaults instantiates a new PoppyVerifyResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetActive

`func (o *PoppyVerifyResult) GetActive() bool`

GetActive returns the Active field if non-nil, zero value otherwise.

### GetActiveOk

`func (o *PoppyVerifyResult) GetActiveOk() (*bool, bool)`

GetActiveOk returns a tuple with the Active field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActive

`func (o *PoppyVerifyResult) SetActive(v bool)`

SetActive sets Active field to given value.


### GetClientId

`func (o *PoppyVerifyResult) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *PoppyVerifyResult) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *PoppyVerifyResult) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *PoppyVerifyResult) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetClientName

`func (o *PoppyVerifyResult) GetClientName() string`

GetClientName returns the ClientName field if non-nil, zero value otherwise.

### GetClientNameOk

`func (o *PoppyVerifyResult) GetClientNameOk() (*string, bool)`

GetClientNameOk returns a tuple with the ClientName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientName

`func (o *PoppyVerifyResult) SetClientName(v string)`

SetClientName sets ClientName field to given value.

### HasClientName

`func (o *PoppyVerifyResult) HasClientName() bool`

HasClientName returns a boolean if a field has been set.

### GetUserId

`func (o *PoppyVerifyResult) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *PoppyVerifyResult) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *PoppyVerifyResult) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *PoppyVerifyResult) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetAgentId

`func (o *PoppyVerifyResult) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *PoppyVerifyResult) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *PoppyVerifyResult) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *PoppyVerifyResult) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### SetAgentIdNil

`func (o *PoppyVerifyResult) SetAgentIdNil(b bool)`

 SetAgentIdNil sets the value for AgentId to be an explicit nil

### UnsetAgentId
`func (o *PoppyVerifyResult) UnsetAgentId()`

UnsetAgentId ensures that no value is present for AgentId, not even an explicit nil
### GetSession

`func (o *PoppyVerifyResult) GetSession() PoppyVerifyResultSession`

GetSession returns the Session field if non-nil, zero value otherwise.

### GetSessionOk

`func (o *PoppyVerifyResult) GetSessionOk() (*PoppyVerifyResultSession, bool)`

GetSessionOk returns a tuple with the Session field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSession

`func (o *PoppyVerifyResult) SetSession(v PoppyVerifyResultSession)`

SetSession sets Session field to given value.

### HasSession

`func (o *PoppyVerifyResult) HasSession() bool`

HasSession returns a boolean if a field has been set.

### GetSignedIn

`func (o *PoppyVerifyResult) GetSignedIn() bool`

GetSignedIn returns the SignedIn field if non-nil, zero value otherwise.

### GetSignedInOk

`func (o *PoppyVerifyResult) GetSignedInOk() (*bool, bool)`

GetSignedInOk returns a tuple with the SignedIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignedIn

`func (o *PoppyVerifyResult) SetSignedIn(v bool)`

SetSignedIn sets SignedIn field to given value.

### HasSignedIn

`func (o *PoppyVerifyResult) HasSignedIn() bool`

HasSignedIn returns a boolean if a field has been set.

### GetAccount

`func (o *PoppyVerifyResult) GetAccount() PoppyVerifyResultAccount`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *PoppyVerifyResult) GetAccountOk() (*PoppyVerifyResultAccount, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *PoppyVerifyResult) SetAccount(v PoppyVerifyResultAccount)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *PoppyVerifyResult) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### SetAccountNil

`func (o *PoppyVerifyResult) SetAccountNil(b bool)`

 SetAccountNil sets the value for Account to be an explicit nil

### UnsetAccount
`func (o *PoppyVerifyResult) UnsetAccount()`

UnsetAccount ensures that no value is present for Account, not even an explicit nil
### GetVersion

`func (o *PoppyVerifyResult) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *PoppyVerifyResult) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *PoppyVerifyResult) SetVersion(v string)`

SetVersion sets Version field to given value.

### HasVersion

`func (o *PoppyVerifyResult) HasVersion() bool`

HasVersion returns a boolean if a field has been set.

### GetExtensions

`func (o *PoppyVerifyResult) GetExtensions() map[string]string`

GetExtensions returns the Extensions field if non-nil, zero value otherwise.

### GetExtensionsOk

`func (o *PoppyVerifyResult) GetExtensionsOk() (*map[string]string, bool)`

GetExtensionsOk returns a tuple with the Extensions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtensions

`func (o *PoppyVerifyResult) SetExtensions(v map[string]string)`

SetExtensions sets Extensions field to given value.

### HasExtensions

`func (o *PoppyVerifyResult) HasExtensions() bool`

HasExtensions returns a boolean if a field has been set.

### GetError

`func (o *PoppyVerifyResult) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *PoppyVerifyResult) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *PoppyVerifyResult) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *PoppyVerifyResult) HasError() bool`

HasError returns a boolean if a field has been set.

### GetErrorDescription

`func (o *PoppyVerifyResult) GetErrorDescription() string`

GetErrorDescription returns the ErrorDescription field if non-nil, zero value otherwise.

### GetErrorDescriptionOk

`func (o *PoppyVerifyResult) GetErrorDescriptionOk() (*string, bool)`

GetErrorDescriptionOk returns a tuple with the ErrorDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorDescription

`func (o *PoppyVerifyResult) SetErrorDescription(v string)`

SetErrorDescription sets ErrorDescription field to given value.

### HasErrorDescription

`func (o *PoppyVerifyResult) HasErrorDescription() bool`

HasErrorDescription returns a boolean if a field has been set.

### GetScope

`func (o *PoppyVerifyResult) GetScope() string`

GetScope returns the Scope field if non-nil, zero value otherwise.

### GetScopeOk

`func (o *PoppyVerifyResult) GetScopeOk() (*string, bool)`

GetScopeOk returns a tuple with the Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScope

`func (o *PoppyVerifyResult) SetScope(v string)`

SetScope sets Scope field to given value.

### HasScope

`func (o *PoppyVerifyResult) HasScope() bool`

HasScope returns a boolean if a field has been set.

### GetResponse

`func (o *PoppyVerifyResult) GetResponse() PoppyVerifyResultResponse`

GetResponse returns the Response field if non-nil, zero value otherwise.

### GetResponseOk

`func (o *PoppyVerifyResult) GetResponseOk() (*PoppyVerifyResultResponse, bool)`

GetResponseOk returns a tuple with the Response field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResponse

`func (o *PoppyVerifyResult) SetResponse(v PoppyVerifyResultResponse)`

SetResponse sets Response field to given value.

### HasResponse

`func (o *PoppyVerifyResult) HasResponse() bool`

HasResponse returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


