# ListTrustedDevicesResponseDataItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Label** | Pointer to **NullableString** |  | [optional] 
**IpAddress** | Pointer to **NullableString** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**LastUsedAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewListTrustedDevicesResponseDataItem

`func NewListTrustedDevicesResponseDataItem() *ListTrustedDevicesResponseDataItem`

NewListTrustedDevicesResponseDataItem instantiates a new ListTrustedDevicesResponseDataItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListTrustedDevicesResponseDataItemWithDefaults

`func NewListTrustedDevicesResponseDataItemWithDefaults() *ListTrustedDevicesResponseDataItem`

NewListTrustedDevicesResponseDataItemWithDefaults instantiates a new ListTrustedDevicesResponseDataItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ListTrustedDevicesResponseDataItem) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ListTrustedDevicesResponseDataItem) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ListTrustedDevicesResponseDataItem) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ListTrustedDevicesResponseDataItem) HasId() bool`

HasId returns a boolean if a field has been set.

### GetLabel

`func (o *ListTrustedDevicesResponseDataItem) GetLabel() string`

GetLabel returns the Label field if non-nil, zero value otherwise.

### GetLabelOk

`func (o *ListTrustedDevicesResponseDataItem) GetLabelOk() (*string, bool)`

GetLabelOk returns a tuple with the Label field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLabel

`func (o *ListTrustedDevicesResponseDataItem) SetLabel(v string)`

SetLabel sets Label field to given value.

### HasLabel

`func (o *ListTrustedDevicesResponseDataItem) HasLabel() bool`

HasLabel returns a boolean if a field has been set.

### SetLabelNil

`func (o *ListTrustedDevicesResponseDataItem) SetLabelNil(b bool)`

 SetLabelNil sets the value for Label to be an explicit nil

### UnsetLabel
`func (o *ListTrustedDevicesResponseDataItem) UnsetLabel()`

UnsetLabel ensures that no value is present for Label, not even an explicit nil
### GetIpAddress

`func (o *ListTrustedDevicesResponseDataItem) GetIpAddress() string`

GetIpAddress returns the IpAddress field if non-nil, zero value otherwise.

### GetIpAddressOk

`func (o *ListTrustedDevicesResponseDataItem) GetIpAddressOk() (*string, bool)`

GetIpAddressOk returns a tuple with the IpAddress field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIpAddress

`func (o *ListTrustedDevicesResponseDataItem) SetIpAddress(v string)`

SetIpAddress sets IpAddress field to given value.

### HasIpAddress

`func (o *ListTrustedDevicesResponseDataItem) HasIpAddress() bool`

HasIpAddress returns a boolean if a field has been set.

### SetIpAddressNil

`func (o *ListTrustedDevicesResponseDataItem) SetIpAddressNil(b bool)`

 SetIpAddressNil sets the value for IpAddress to be an explicit nil

### UnsetIpAddress
`func (o *ListTrustedDevicesResponseDataItem) UnsetIpAddress()`

UnsetIpAddress ensures that no value is present for IpAddress, not even an explicit nil
### GetCreatedAt

`func (o *ListTrustedDevicesResponseDataItem) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ListTrustedDevicesResponseDataItem) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ListTrustedDevicesResponseDataItem) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ListTrustedDevicesResponseDataItem) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetExpiresAt

`func (o *ListTrustedDevicesResponseDataItem) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *ListTrustedDevicesResponseDataItem) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *ListTrustedDevicesResponseDataItem) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *ListTrustedDevicesResponseDataItem) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetLastUsedAt

`func (o *ListTrustedDevicesResponseDataItem) GetLastUsedAt() time.Time`

GetLastUsedAt returns the LastUsedAt field if non-nil, zero value otherwise.

### GetLastUsedAtOk

`func (o *ListTrustedDevicesResponseDataItem) GetLastUsedAtOk() (*time.Time, bool)`

GetLastUsedAtOk returns a tuple with the LastUsedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUsedAt

`func (o *ListTrustedDevicesResponseDataItem) SetLastUsedAt(v time.Time)`

SetLastUsedAt sets LastUsedAt field to given value.

### HasLastUsedAt

`func (o *ListTrustedDevicesResponseDataItem) HasLastUsedAt() bool`

HasLastUsedAt returns a boolean if a field has been set.

### SetLastUsedAtNil

`func (o *ListTrustedDevicesResponseDataItem) SetLastUsedAtNil(b bool)`

 SetLastUsedAtNil sets the value for LastUsedAt to be an explicit nil

### UnsetLastUsedAt
`func (o *ListTrustedDevicesResponseDataItem) UnsetLastUsedAt()`

UnsetLastUsedAt ensures that no value is present for LastUsedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


