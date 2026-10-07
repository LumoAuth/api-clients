# ListUserAuthenticatorsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]MfaAuthenticator**](MfaAuthenticator.md) |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**Default** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewListUserAuthenticatorsResponse

`func NewListUserAuthenticatorsResponse() *ListUserAuthenticatorsResponse`

NewListUserAuthenticatorsResponse instantiates a new ListUserAuthenticatorsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListUserAuthenticatorsResponseWithDefaults

`func NewListUserAuthenticatorsResponseWithDefaults() *ListUserAuthenticatorsResponse`

NewListUserAuthenticatorsResponseWithDefaults instantiates a new ListUserAuthenticatorsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *ListUserAuthenticatorsResponse) GetData() []MfaAuthenticator`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *ListUserAuthenticatorsResponse) GetDataOk() (*[]MfaAuthenticator, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *ListUserAuthenticatorsResponse) SetData(v []MfaAuthenticator)`

SetData sets Data field to given value.

### HasData

`func (o *ListUserAuthenticatorsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetStatus

`func (o *ListUserAuthenticatorsResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ListUserAuthenticatorsResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ListUserAuthenticatorsResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ListUserAuthenticatorsResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetDefault

`func (o *ListUserAuthenticatorsResponse) GetDefault() string`

GetDefault returns the Default field if non-nil, zero value otherwise.

### GetDefaultOk

`func (o *ListUserAuthenticatorsResponse) GetDefaultOk() (*string, bool)`

GetDefaultOk returns a tuple with the Default field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefault

`func (o *ListUserAuthenticatorsResponse) SetDefault(v string)`

SetDefault sets Default field to given value.

### HasDefault

`func (o *ListUserAuthenticatorsResponse) HasDefault() bool`

HasDefault returns a boolean if a field has been set.

### SetDefaultNil

`func (o *ListUserAuthenticatorsResponse) SetDefaultNil(b bool)`

 SetDefaultNil sets the value for Default to be an explicit nil

### UnsetDefault
`func (o *ListUserAuthenticatorsResponse) UnsetDefault()`

UnsetDefault ensures that no value is present for Default, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


