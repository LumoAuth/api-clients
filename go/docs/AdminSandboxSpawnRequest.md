# AdminSandboxSpawnRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**TtlHours** | Pointer to **int32** |  | [optional] 

## Methods

### NewAdminSandboxSpawnRequest

`func NewAdminSandboxSpawnRequest() *AdminSandboxSpawnRequest`

NewAdminSandboxSpawnRequest instantiates a new AdminSandboxSpawnRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSandboxSpawnRequestWithDefaults

`func NewAdminSandboxSpawnRequestWithDefaults() *AdminSandboxSpawnRequest`

NewAdminSandboxSpawnRequestWithDefaults instantiates a new AdminSandboxSpawnRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AdminSandboxSpawnRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminSandboxSpawnRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminSandboxSpawnRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AdminSandboxSpawnRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetTtlHours

`func (o *AdminSandboxSpawnRequest) GetTtlHours() int32`

GetTtlHours returns the TtlHours field if non-nil, zero value otherwise.

### GetTtlHoursOk

`func (o *AdminSandboxSpawnRequest) GetTtlHoursOk() (*int32, bool)`

GetTtlHoursOk returns a tuple with the TtlHours field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtlHours

`func (o *AdminSandboxSpawnRequest) SetTtlHours(v int32)`

SetTtlHours sets TtlHours field to given value.

### HasTtlHours

`func (o *AdminSandboxSpawnRequest) HasTtlHours() bool`

HasTtlHours returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


