# GetMeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SubjectType** | Pointer to **string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] 
**Email** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**MfaEnabled** | Pointer to **NullableBool** |  | [optional] 
**Roles** | Pointer to **[]string** |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**Tenant** | Pointer to [**GetMeResponseTenant**](GetMeResponseTenant.md) |  | [optional] 

## Methods

### NewGetMeResponse

`func NewGetMeResponse() *GetMeResponse`

NewGetMeResponse instantiates a new GetMeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMeResponseWithDefaults

`func NewGetMeResponseWithDefaults() *GetMeResponse`

NewGetMeResponseWithDefaults instantiates a new GetMeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSubjectType

`func (o *GetMeResponse) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *GetMeResponse) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *GetMeResponse) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *GetMeResponse) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetId

`func (o *GetMeResponse) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetMeResponse) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetMeResponse) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *GetMeResponse) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEmail

`func (o *GetMeResponse) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *GetMeResponse) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *GetMeResponse) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *GetMeResponse) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### SetEmailNil

`func (o *GetMeResponse) SetEmailNil(b bool)`

 SetEmailNil sets the value for Email to be an explicit nil

### UnsetEmail
`func (o *GetMeResponse) UnsetEmail()`

UnsetEmail ensures that no value is present for Email, not even an explicit nil
### GetName

`func (o *GetMeResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetMeResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetMeResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GetMeResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *GetMeResponse) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *GetMeResponse) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetMfaEnabled

`func (o *GetMeResponse) GetMfaEnabled() bool`

GetMfaEnabled returns the MfaEnabled field if non-nil, zero value otherwise.

### GetMfaEnabledOk

`func (o *GetMeResponse) GetMfaEnabledOk() (*bool, bool)`

GetMfaEnabledOk returns a tuple with the MfaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaEnabled

`func (o *GetMeResponse) SetMfaEnabled(v bool)`

SetMfaEnabled sets MfaEnabled field to given value.

### HasMfaEnabled

`func (o *GetMeResponse) HasMfaEnabled() bool`

HasMfaEnabled returns a boolean if a field has been set.

### SetMfaEnabledNil

`func (o *GetMeResponse) SetMfaEnabledNil(b bool)`

 SetMfaEnabledNil sets the value for MfaEnabled to be an explicit nil

### UnsetMfaEnabled
`func (o *GetMeResponse) UnsetMfaEnabled()`

UnsetMfaEnabled ensures that no value is present for MfaEnabled, not even an explicit nil
### GetRoles

`func (o *GetMeResponse) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *GetMeResponse) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *GetMeResponse) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *GetMeResponse) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### SetRolesNil

`func (o *GetMeResponse) SetRolesNil(b bool)`

 SetRolesNil sets the value for Roles to be an explicit nil

### UnsetRoles
`func (o *GetMeResponse) UnsetRoles()`

UnsetRoles ensures that no value is present for Roles, not even an explicit nil
### GetCapabilities

`func (o *GetMeResponse) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *GetMeResponse) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *GetMeResponse) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *GetMeResponse) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### SetCapabilitiesNil

`func (o *GetMeResponse) SetCapabilitiesNil(b bool)`

 SetCapabilitiesNil sets the value for Capabilities to be an explicit nil

### UnsetCapabilities
`func (o *GetMeResponse) UnsetCapabilities()`

UnsetCapabilities ensures that no value is present for Capabilities, not even an explicit nil
### GetTenant

`func (o *GetMeResponse) GetTenant() GetMeResponseTenant`

GetTenant returns the Tenant field if non-nil, zero value otherwise.

### GetTenantOk

`func (o *GetMeResponse) GetTenantOk() (*GetMeResponseTenant, bool)`

GetTenantOk returns a tuple with the Tenant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenant

`func (o *GetMeResponse) SetTenant(v GetMeResponseTenant)`

SetTenant sets Tenant field to given value.

### HasTenant

`func (o *GetMeResponse) HasTenant() bool`

HasTenant returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


