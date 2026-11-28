# SetClientScopesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scopes** | **[]string** | The full list of scopes that the client may request. | 

## Methods

### NewSetClientScopesRequest

`func NewSetClientScopesRequest(scopes []string, ) *SetClientScopesRequest`

NewSetClientScopesRequest instantiates a new SetClientScopesRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSetClientScopesRequestWithDefaults

`func NewSetClientScopesRequestWithDefaults() *SetClientScopesRequest`

NewSetClientScopesRequestWithDefaults instantiates a new SetClientScopesRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetScopes

`func (o *SetClientScopesRequest) GetScopes() []string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *SetClientScopesRequest) GetScopesOk() (*[]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *SetClientScopesRequest) SetScopes(v []string)`

SetScopes sets Scopes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


