# PushEnrollmentStarted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**QrDataUri** | Pointer to **string** |  | [optional] 
**DeepLink** | Pointer to **string** | https://&lt;server&gt;/push-auth/enroll?d&#x3D;… — an Android App Link / iOS Universal Link that opens the authenticator app on a phone (falls back to a help page without it). | [optional] 
**DeepLinkAndroid** | Pointer to **NullableString** | Same link as an intent:// URL pinned to the Android app package, for pages served from this host (Chrome keeps same-site App Links in the browser). Null when the deployment has not configured the package. | [optional] 
**ActivationCode** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewPushEnrollmentStarted

`func NewPushEnrollmentStarted() *PushEnrollmentStarted`

NewPushEnrollmentStarted instantiates a new PushEnrollmentStarted object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPushEnrollmentStartedWithDefaults

`func NewPushEnrollmentStartedWithDefaults() *PushEnrollmentStarted`

NewPushEnrollmentStartedWithDefaults instantiates a new PushEnrollmentStarted object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PushEnrollmentStarted) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PushEnrollmentStarted) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PushEnrollmentStarted) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PushEnrollmentStarted) HasId() bool`

HasId returns a boolean if a field has been set.

### GetState

`func (o *PushEnrollmentStarted) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PushEnrollmentStarted) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PushEnrollmentStarted) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PushEnrollmentStarted) HasState() bool`

HasState returns a boolean if a field has been set.

### GetQrDataUri

`func (o *PushEnrollmentStarted) GetQrDataUri() string`

GetQrDataUri returns the QrDataUri field if non-nil, zero value otherwise.

### GetQrDataUriOk

`func (o *PushEnrollmentStarted) GetQrDataUriOk() (*string, bool)`

GetQrDataUriOk returns a tuple with the QrDataUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQrDataUri

`func (o *PushEnrollmentStarted) SetQrDataUri(v string)`

SetQrDataUri sets QrDataUri field to given value.

### HasQrDataUri

`func (o *PushEnrollmentStarted) HasQrDataUri() bool`

HasQrDataUri returns a boolean if a field has been set.

### GetDeepLink

`func (o *PushEnrollmentStarted) GetDeepLink() string`

GetDeepLink returns the DeepLink field if non-nil, zero value otherwise.

### GetDeepLinkOk

`func (o *PushEnrollmentStarted) GetDeepLinkOk() (*string, bool)`

GetDeepLinkOk returns a tuple with the DeepLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeepLink

`func (o *PushEnrollmentStarted) SetDeepLink(v string)`

SetDeepLink sets DeepLink field to given value.

### HasDeepLink

`func (o *PushEnrollmentStarted) HasDeepLink() bool`

HasDeepLink returns a boolean if a field has been set.

### GetDeepLinkAndroid

`func (o *PushEnrollmentStarted) GetDeepLinkAndroid() string`

GetDeepLinkAndroid returns the DeepLinkAndroid field if non-nil, zero value otherwise.

### GetDeepLinkAndroidOk

`func (o *PushEnrollmentStarted) GetDeepLinkAndroidOk() (*string, bool)`

GetDeepLinkAndroidOk returns a tuple with the DeepLinkAndroid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeepLinkAndroid

`func (o *PushEnrollmentStarted) SetDeepLinkAndroid(v string)`

SetDeepLinkAndroid sets DeepLinkAndroid field to given value.

### HasDeepLinkAndroid

`func (o *PushEnrollmentStarted) HasDeepLinkAndroid() bool`

HasDeepLinkAndroid returns a boolean if a field has been set.

### SetDeepLinkAndroidNil

`func (o *PushEnrollmentStarted) SetDeepLinkAndroidNil(b bool)`

 SetDeepLinkAndroidNil sets the value for DeepLinkAndroid to be an explicit nil

### UnsetDeepLinkAndroid
`func (o *PushEnrollmentStarted) UnsetDeepLinkAndroid()`

UnsetDeepLinkAndroid ensures that no value is present for DeepLinkAndroid, not even an explicit nil
### GetActivationCode

`func (o *PushEnrollmentStarted) GetActivationCode() string`

GetActivationCode returns the ActivationCode field if non-nil, zero value otherwise.

### GetActivationCodeOk

`func (o *PushEnrollmentStarted) GetActivationCodeOk() (*string, bool)`

GetActivationCodeOk returns a tuple with the ActivationCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivationCode

`func (o *PushEnrollmentStarted) SetActivationCode(v string)`

SetActivationCode sets ActivationCode field to given value.

### HasActivationCode

`func (o *PushEnrollmentStarted) HasActivationCode() bool`

HasActivationCode returns a boolean if a field has been set.

### GetExpiresAt

`func (o *PushEnrollmentStarted) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *PushEnrollmentStarted) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *PushEnrollmentStarted) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *PushEnrollmentStarted) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


