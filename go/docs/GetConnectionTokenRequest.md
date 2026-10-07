# GetConnectionTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | Pointer to **string** | User UUID or email for user-delegated grants. | [optional] 

## Methods

### NewGetConnectionTokenRequest

`func NewGetConnectionTokenRequest() *GetConnectionTokenRequest`

NewGetConnectionTokenRequest instantiates a new GetConnectionTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetConnectionTokenRequestWithDefaults

`func NewGetConnectionTokenRequestWithDefaults() *GetConnectionTokenRequest`

NewGetConnectionTokenRequestWithDefaults instantiates a new GetConnectionTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *GetConnectionTokenRequest) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *GetConnectionTokenRequest) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *GetConnectionTokenRequest) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *GetConnectionTokenRequest) HasUserId() bool`

HasUserId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


