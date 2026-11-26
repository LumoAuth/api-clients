# AdminPoppyFeedbackListResponseDataItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Task** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**ClientId** | Pointer to **string** |  | [optional] 
**SignedIn** | Pointer to **bool** |  | [optional] 
**SessionId** | Pointer to **NullableInt32** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewAdminPoppyFeedbackListResponseDataItem

`func NewAdminPoppyFeedbackListResponseDataItem() *AdminPoppyFeedbackListResponseDataItem`

NewAdminPoppyFeedbackListResponseDataItem instantiates a new AdminPoppyFeedbackListResponseDataItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyFeedbackListResponseDataItemWithDefaults

`func NewAdminPoppyFeedbackListResponseDataItemWithDefaults() *AdminPoppyFeedbackListResponseDataItem`

NewAdminPoppyFeedbackListResponseDataItemWithDefaults instantiates a new AdminPoppyFeedbackListResponseDataItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AdminPoppyFeedbackListResponseDataItem) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AdminPoppyFeedbackListResponseDataItem) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *AdminPoppyFeedbackListResponseDataItem) HasId() bool`

HasId returns a boolean if a field has been set.

### GetTask

`func (o *AdminPoppyFeedbackListResponseDataItem) GetTask() string`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetTaskOk() (*string, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *AdminPoppyFeedbackListResponseDataItem) SetTask(v string)`

SetTask sets Task field to given value.

### HasTask

`func (o *AdminPoppyFeedbackListResponseDataItem) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetDescription

`func (o *AdminPoppyFeedbackListResponseDataItem) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdminPoppyFeedbackListResponseDataItem) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdminPoppyFeedbackListResponseDataItem) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetClientId

`func (o *AdminPoppyFeedbackListResponseDataItem) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *AdminPoppyFeedbackListResponseDataItem) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *AdminPoppyFeedbackListResponseDataItem) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetSignedIn

`func (o *AdminPoppyFeedbackListResponseDataItem) GetSignedIn() bool`

GetSignedIn returns the SignedIn field if non-nil, zero value otherwise.

### GetSignedInOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetSignedInOk() (*bool, bool)`

GetSignedInOk returns a tuple with the SignedIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignedIn

`func (o *AdminPoppyFeedbackListResponseDataItem) SetSignedIn(v bool)`

SetSignedIn sets SignedIn field to given value.

### HasSignedIn

`func (o *AdminPoppyFeedbackListResponseDataItem) HasSignedIn() bool`

HasSignedIn returns a boolean if a field has been set.

### GetSessionId

`func (o *AdminPoppyFeedbackListResponseDataItem) GetSessionId() int32`

GetSessionId returns the SessionId field if non-nil, zero value otherwise.

### GetSessionIdOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetSessionIdOk() (*int32, bool)`

GetSessionIdOk returns a tuple with the SessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionId

`func (o *AdminPoppyFeedbackListResponseDataItem) SetSessionId(v int32)`

SetSessionId sets SessionId field to given value.

### HasSessionId

`func (o *AdminPoppyFeedbackListResponseDataItem) HasSessionId() bool`

HasSessionId returns a boolean if a field has been set.

### SetSessionIdNil

`func (o *AdminPoppyFeedbackListResponseDataItem) SetSessionIdNil(b bool)`

 SetSessionIdNil sets the value for SessionId to be an explicit nil

### UnsetSessionId
`func (o *AdminPoppyFeedbackListResponseDataItem) UnsetSessionId()`

UnsetSessionId ensures that no value is present for SessionId, not even an explicit nil
### GetCreatedAt

`func (o *AdminPoppyFeedbackListResponseDataItem) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AdminPoppyFeedbackListResponseDataItem) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AdminPoppyFeedbackListResponseDataItem) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AdminPoppyFeedbackListResponseDataItem) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


