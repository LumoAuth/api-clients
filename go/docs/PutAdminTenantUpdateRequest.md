# PutAdminTenantUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Name of the organization. | [optional] 
**Settings** | Pointer to **map[string]interface{}** | General settings; keys merge with the stored ones and null clears a key. Writable keys: security, audit_log_retention_days, audit_log_auto_delete, agent_governance, b2b_org_admins_may_invite_new_accounts (boolean) and authz, whose only key is audit_allow_decisions (boolean: also write an audit entry, authzen.evaluation_allowed, for every ALLOW of the AuthZEN evaluation endpoints; denials are always audited). Any other key is refused with 400. | [optional] 

## Methods

### NewPutAdminTenantUpdateRequest

`func NewPutAdminTenantUpdateRequest() *PutAdminTenantUpdateRequest`

NewPutAdminTenantUpdateRequest instantiates a new PutAdminTenantUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminTenantUpdateRequestWithDefaults

`func NewPutAdminTenantUpdateRequestWithDefaults() *PutAdminTenantUpdateRequest`

NewPutAdminTenantUpdateRequestWithDefaults instantiates a new PutAdminTenantUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PutAdminTenantUpdateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PutAdminTenantUpdateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PutAdminTenantUpdateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PutAdminTenantUpdateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSettings

`func (o *PutAdminTenantUpdateRequest) GetSettings() map[string]interface{}`

GetSettings returns the Settings field if non-nil, zero value otherwise.

### GetSettingsOk

`func (o *PutAdminTenantUpdateRequest) GetSettingsOk() (*map[string]interface{}, bool)`

GetSettingsOk returns a tuple with the Settings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettings

`func (o *PutAdminTenantUpdateRequest) SetSettings(v map[string]interface{})`

SetSettings sets Settings field to given value.

### HasSettings

`func (o *PutAdminTenantUpdateRequest) HasSettings() bool`

HasSettings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


