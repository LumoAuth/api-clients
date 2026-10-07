# IssueTemporaryAccessCodeResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Code** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**SingleUse** | Pointer to **bool** |  | [optional] 

## Methods

### NewIssueTemporaryAccessCodeResponseData

`func NewIssueTemporaryAccessCodeResponseData() *IssueTemporaryAccessCodeResponseData`

NewIssueTemporaryAccessCodeResponseData instantiates a new IssueTemporaryAccessCodeResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssueTemporaryAccessCodeResponseDataWithDefaults

`func NewIssueTemporaryAccessCodeResponseDataWithDefaults() *IssueTemporaryAccessCodeResponseData`

NewIssueTemporaryAccessCodeResponseDataWithDefaults instantiates a new IssueTemporaryAccessCodeResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *IssueTemporaryAccessCodeResponseData) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *IssueTemporaryAccessCodeResponseData) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *IssueTemporaryAccessCodeResponseData) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *IssueTemporaryAccessCodeResponseData) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCode

`func (o *IssueTemporaryAccessCodeResponseData) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *IssueTemporaryAccessCodeResponseData) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *IssueTemporaryAccessCodeResponseData) SetCode(v string)`

SetCode sets Code field to given value.

### HasCode

`func (o *IssueTemporaryAccessCodeResponseData) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetExpiresAt

`func (o *IssueTemporaryAccessCodeResponseData) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *IssueTemporaryAccessCodeResponseData) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *IssueTemporaryAccessCodeResponseData) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *IssueTemporaryAccessCodeResponseData) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetSingleUse

`func (o *IssueTemporaryAccessCodeResponseData) GetSingleUse() bool`

GetSingleUse returns the SingleUse field if non-nil, zero value otherwise.

### GetSingleUseOk

`func (o *IssueTemporaryAccessCodeResponseData) GetSingleUseOk() (*bool, bool)`

GetSingleUseOk returns a tuple with the SingleUse field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSingleUse

`func (o *IssueTemporaryAccessCodeResponseData) SetSingleUse(v bool)`

SetSingleUse sets SingleUse field to given value.

### HasSingleUse

`func (o *IssueTemporaryAccessCodeResponseData) HasSingleUse() bool`

HasSingleUse returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


