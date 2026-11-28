# VerifyAuthTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthToken** | **string** | The auth token presented by the agent. | 
**Resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 

## Methods

### NewVerifyAuthTokenRequest

`func NewVerifyAuthTokenRequest(authToken string, resource string, ) *VerifyAuthTokenRequest`

NewVerifyAuthTokenRequest instantiates a new VerifyAuthTokenRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyAuthTokenRequestWithDefaults

`func NewVerifyAuthTokenRequestWithDefaults() *VerifyAuthTokenRequest`

NewVerifyAuthTokenRequestWithDefaults instantiates a new VerifyAuthTokenRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAuthToken

`func (o *VerifyAuthTokenRequest) GetAuthToken() string`

GetAuthToken returns the AuthToken field if non-nil, zero value otherwise.

### GetAuthTokenOk

`func (o *VerifyAuthTokenRequest) GetAuthTokenOk() (*string, bool)`

GetAuthTokenOk returns a tuple with the AuthToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthToken

`func (o *VerifyAuthTokenRequest) SetAuthToken(v string)`

SetAuthToken sets AuthToken field to given value.


### GetResource

`func (o *VerifyAuthTokenRequest) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *VerifyAuthTokenRequest) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *VerifyAuthTokenRequest) SetResource(v string)`

SetResource sets Resource field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


