# AdminIdentitiesLegacySamlReportResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdpCount** | Pointer to **int32** |  | [optional] 
**Ambiguous** | Pointer to **bool** |  | [optional] 
**Users** | Pointer to [**[]AdminIdentitiesLegacySamlReportResponseDataUsersItem**](AdminIdentitiesLegacySamlReportResponseDataUsersItem.md) |  | [optional] 
**Idps** | Pointer to **[]map[string]interface{}** |  | [optional] 

## Methods

### NewAdminIdentitiesLegacySamlReportResponseData

`func NewAdminIdentitiesLegacySamlReportResponseData() *AdminIdentitiesLegacySamlReportResponseData`

NewAdminIdentitiesLegacySamlReportResponseData instantiates a new AdminIdentitiesLegacySamlReportResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminIdentitiesLegacySamlReportResponseDataWithDefaults

`func NewAdminIdentitiesLegacySamlReportResponseDataWithDefaults() *AdminIdentitiesLegacySamlReportResponseData`

NewAdminIdentitiesLegacySamlReportResponseDataWithDefaults instantiates a new AdminIdentitiesLegacySamlReportResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIdpCount

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetIdpCount() int32`

GetIdpCount returns the IdpCount field if non-nil, zero value otherwise.

### GetIdpCountOk

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetIdpCountOk() (*int32, bool)`

GetIdpCountOk returns a tuple with the IdpCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdpCount

`func (o *AdminIdentitiesLegacySamlReportResponseData) SetIdpCount(v int32)`

SetIdpCount sets IdpCount field to given value.

### HasIdpCount

`func (o *AdminIdentitiesLegacySamlReportResponseData) HasIdpCount() bool`

HasIdpCount returns a boolean if a field has been set.

### GetAmbiguous

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetAmbiguous() bool`

GetAmbiguous returns the Ambiguous field if non-nil, zero value otherwise.

### GetAmbiguousOk

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetAmbiguousOk() (*bool, bool)`

GetAmbiguousOk returns a tuple with the Ambiguous field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmbiguous

`func (o *AdminIdentitiesLegacySamlReportResponseData) SetAmbiguous(v bool)`

SetAmbiguous sets Ambiguous field to given value.

### HasAmbiguous

`func (o *AdminIdentitiesLegacySamlReportResponseData) HasAmbiguous() bool`

HasAmbiguous returns a boolean if a field has been set.

### GetUsers

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetUsers() []AdminIdentitiesLegacySamlReportResponseDataUsersItem`

GetUsers returns the Users field if non-nil, zero value otherwise.

### GetUsersOk

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetUsersOk() (*[]AdminIdentitiesLegacySamlReportResponseDataUsersItem, bool)`

GetUsersOk returns a tuple with the Users field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsers

`func (o *AdminIdentitiesLegacySamlReportResponseData) SetUsers(v []AdminIdentitiesLegacySamlReportResponseDataUsersItem)`

SetUsers sets Users field to given value.

### HasUsers

`func (o *AdminIdentitiesLegacySamlReportResponseData) HasUsers() bool`

HasUsers returns a boolean if a field has been set.

### GetIdps

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetIdps() []map[string]interface{}`

GetIdps returns the Idps field if non-nil, zero value otherwise.

### GetIdpsOk

`func (o *AdminIdentitiesLegacySamlReportResponseData) GetIdpsOk() (*[]map[string]interface{}, bool)`

GetIdpsOk returns a tuple with the Idps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdps

`func (o *AdminIdentitiesLegacySamlReportResponseData) SetIdps(v []map[string]interface{})`

SetIdps sets Idps field to given value.

### HasIdps

`func (o *AdminIdentitiesLegacySamlReportResponseData) HasIdps() bool`

HasIdps returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


