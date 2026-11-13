# RequestMagicLinkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** | The address to mail the sign-in link to. | 
**ClientId** | **string** | Client ID of an active application of the organization. | 
**ReturnTo** | Pointer to **string** | Page of the application that the person goes to after signing in. An absolute https URL (http only on localhost) whose origin is one of the application&#39;s allowed origins or the origin of one of its redirect URIs. Without it the person goes to the organization&#39;s default page. | [optional] 
**CaptchaToken** | Pointer to **string** | Token from the CAPTCHA widget. Required when the organization protects sign-in link requests with a CAPTCHA. | [optional] 

## Methods

### NewRequestMagicLinkRequest

`func NewRequestMagicLinkRequest(email string, clientId string, ) *RequestMagicLinkRequest`

NewRequestMagicLinkRequest instantiates a new RequestMagicLinkRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestMagicLinkRequestWithDefaults

`func NewRequestMagicLinkRequestWithDefaults() *RequestMagicLinkRequest`

NewRequestMagicLinkRequestWithDefaults instantiates a new RequestMagicLinkRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *RequestMagicLinkRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *RequestMagicLinkRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *RequestMagicLinkRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetClientId

`func (o *RequestMagicLinkRequest) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *RequestMagicLinkRequest) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *RequestMagicLinkRequest) SetClientId(v string)`

SetClientId sets ClientId field to given value.


### GetReturnTo

`func (o *RequestMagicLinkRequest) GetReturnTo() string`

GetReturnTo returns the ReturnTo field if non-nil, zero value otherwise.

### GetReturnToOk

`func (o *RequestMagicLinkRequest) GetReturnToOk() (*string, bool)`

GetReturnToOk returns a tuple with the ReturnTo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnTo

`func (o *RequestMagicLinkRequest) SetReturnTo(v string)`

SetReturnTo sets ReturnTo field to given value.

### HasReturnTo

`func (o *RequestMagicLinkRequest) HasReturnTo() bool`

HasReturnTo returns a boolean if a field has been set.

### GetCaptchaToken

`func (o *RequestMagicLinkRequest) GetCaptchaToken() string`

GetCaptchaToken returns the CaptchaToken field if non-nil, zero value otherwise.

### GetCaptchaTokenOk

`func (o *RequestMagicLinkRequest) GetCaptchaTokenOk() (*string, bool)`

GetCaptchaTokenOk returns a tuple with the CaptchaToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaptchaToken

`func (o *RequestMagicLinkRequest) SetCaptchaToken(v string)`

SetCaptchaToken sets CaptchaToken field to given value.

### HasCaptchaToken

`func (o *RequestMagicLinkRequest) HasCaptchaToken() bool`

HasCaptchaToken returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


