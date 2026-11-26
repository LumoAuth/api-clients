# PoppyVerifyResultSession

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Sid** | Pointer to **string** |  | [optional] 
**New** | Pointer to **bool** | true when this request started the Session. | [optional] 
**StartedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewPoppyVerifyResultSession

`func NewPoppyVerifyResultSession() *PoppyVerifyResultSession`

NewPoppyVerifyResultSession instantiates a new PoppyVerifyResultSession object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyVerifyResultSessionWithDefaults

`func NewPoppyVerifyResultSessionWithDefaults() *PoppyVerifyResultSession`

NewPoppyVerifyResultSessionWithDefaults instantiates a new PoppyVerifyResultSession object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PoppyVerifyResultSession) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PoppyVerifyResultSession) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PoppyVerifyResultSession) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *PoppyVerifyResultSession) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSid

`func (o *PoppyVerifyResultSession) GetSid() string`

GetSid returns the Sid field if non-nil, zero value otherwise.

### GetSidOk

`func (o *PoppyVerifyResultSession) GetSidOk() (*string, bool)`

GetSidOk returns a tuple with the Sid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSid

`func (o *PoppyVerifyResultSession) SetSid(v string)`

SetSid sets Sid field to given value.

### HasSid

`func (o *PoppyVerifyResultSession) HasSid() bool`

HasSid returns a boolean if a field has been set.

### GetNew

`func (o *PoppyVerifyResultSession) GetNew() bool`

GetNew returns the New field if non-nil, zero value otherwise.

### GetNewOk

`func (o *PoppyVerifyResultSession) GetNewOk() (*bool, bool)`

GetNewOk returns a tuple with the New field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNew

`func (o *PoppyVerifyResultSession) SetNew(v bool)`

SetNew sets New field to given value.

### HasNew

`func (o *PoppyVerifyResultSession) HasNew() bool`

HasNew returns a boolean if a field has been set.

### GetStartedAt

`func (o *PoppyVerifyResultSession) GetStartedAt() time.Time`

GetStartedAt returns the StartedAt field if non-nil, zero value otherwise.

### GetStartedAtOk

`func (o *PoppyVerifyResultSession) GetStartedAtOk() (*time.Time, bool)`

GetStartedAtOk returns a tuple with the StartedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartedAt

`func (o *PoppyVerifyResultSession) SetStartedAt(v time.Time)`

SetStartedAt sets StartedAt field to given value.

### HasStartedAt

`func (o *PoppyVerifyResultSession) HasStartedAt() bool`

HasStartedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


