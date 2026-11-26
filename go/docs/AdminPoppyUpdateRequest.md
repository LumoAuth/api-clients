# AdminPoppyUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**Issuer** | Pointer to **NullableString** | null for the platform address, or one of the active custom domains. | [optional] 
**Organization** | Pointer to [**AdminPoppyUpdateRequestOrganization**](AdminPoppyUpdateRequestOrganization.md) |  | [optional] 
**Domains** | Pointer to **[]string** |  | [optional] 
**SignIn** | Pointer to [**AdminPoppyUpdateRequestSignIn**](AdminPoppyUpdateRequestSignIn.md) |  | [optional] 
**Scopes** | Pointer to [**map[string]AdminPoppyUpdateRequestScopesValue**](AdminPoppyUpdateRequestScopesValue.md) | Scope name &#x3D;&gt; {description, changes, personal_data}. | [optional] 
**Resources** | Pointer to **[]string** |  | [optional] 
**Apis** | Pointer to [**[]AdminPoppyUpdateRequestApisItem**](AdminPoppyUpdateRequestApisItem.md) |  | [optional] 
**Agent** | Pointer to [**[]AdminPoppyUpdateRequestAgentItem**](AdminPoppyUpdateRequestAgentItem.md) |  | [optional] 
**Web** | Pointer to [**AdminPoppyUpdateRequestWeb**](AdminPoppyUpdateRequestWeb.md) |  | [optional] 
**Tasks** | Pointer to [**AdminPoppyUpdateRequestTasks**](AdminPoppyUpdateRequestTasks.md) |  | [optional] 
**Extensions** | Pointer to **map[string]interface{}** |  | [optional] 
**Sessions** | Pointer to [**AdminPoppyUpdateRequestSessions**](AdminPoppyUpdateRequestSessions.md) |  | [optional] 

## Methods

### NewAdminPoppyUpdateRequest

`func NewAdminPoppyUpdateRequest() *AdminPoppyUpdateRequest`

NewAdminPoppyUpdateRequest instantiates a new AdminPoppyUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyUpdateRequestWithDefaults

`func NewAdminPoppyUpdateRequestWithDefaults() *AdminPoppyUpdateRequest`

NewAdminPoppyUpdateRequestWithDefaults instantiates a new AdminPoppyUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *AdminPoppyUpdateRequest) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *AdminPoppyUpdateRequest) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *AdminPoppyUpdateRequest) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *AdminPoppyUpdateRequest) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetIssuer

`func (o *AdminPoppyUpdateRequest) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *AdminPoppyUpdateRequest) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *AdminPoppyUpdateRequest) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *AdminPoppyUpdateRequest) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### SetIssuerNil

`func (o *AdminPoppyUpdateRequest) SetIssuerNil(b bool)`

 SetIssuerNil sets the value for Issuer to be an explicit nil

### UnsetIssuer
`func (o *AdminPoppyUpdateRequest) UnsetIssuer()`

UnsetIssuer ensures that no value is present for Issuer, not even an explicit nil
### GetOrganization

`func (o *AdminPoppyUpdateRequest) GetOrganization() AdminPoppyUpdateRequestOrganization`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *AdminPoppyUpdateRequest) GetOrganizationOk() (*AdminPoppyUpdateRequestOrganization, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *AdminPoppyUpdateRequest) SetOrganization(v AdminPoppyUpdateRequestOrganization)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *AdminPoppyUpdateRequest) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetDomains

`func (o *AdminPoppyUpdateRequest) GetDomains() []string`

GetDomains returns the Domains field if non-nil, zero value otherwise.

### GetDomainsOk

`func (o *AdminPoppyUpdateRequest) GetDomainsOk() (*[]string, bool)`

GetDomainsOk returns a tuple with the Domains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDomains

`func (o *AdminPoppyUpdateRequest) SetDomains(v []string)`

SetDomains sets Domains field to given value.

### HasDomains

`func (o *AdminPoppyUpdateRequest) HasDomains() bool`

HasDomains returns a boolean if a field has been set.

### GetSignIn

`func (o *AdminPoppyUpdateRequest) GetSignIn() AdminPoppyUpdateRequestSignIn`

GetSignIn returns the SignIn field if non-nil, zero value otherwise.

### GetSignInOk

`func (o *AdminPoppyUpdateRequest) GetSignInOk() (*AdminPoppyUpdateRequestSignIn, bool)`

GetSignInOk returns a tuple with the SignIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignIn

`func (o *AdminPoppyUpdateRequest) SetSignIn(v AdminPoppyUpdateRequestSignIn)`

SetSignIn sets SignIn field to given value.

### HasSignIn

`func (o *AdminPoppyUpdateRequest) HasSignIn() bool`

HasSignIn returns a boolean if a field has been set.

### GetScopes

`func (o *AdminPoppyUpdateRequest) GetScopes() map[string]AdminPoppyUpdateRequestScopesValue`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *AdminPoppyUpdateRequest) GetScopesOk() (*map[string]AdminPoppyUpdateRequestScopesValue, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *AdminPoppyUpdateRequest) SetScopes(v map[string]AdminPoppyUpdateRequestScopesValue)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *AdminPoppyUpdateRequest) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetResources

`func (o *AdminPoppyUpdateRequest) GetResources() []string`

GetResources returns the Resources field if non-nil, zero value otherwise.

### GetResourcesOk

`func (o *AdminPoppyUpdateRequest) GetResourcesOk() (*[]string, bool)`

GetResourcesOk returns a tuple with the Resources field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResources

`func (o *AdminPoppyUpdateRequest) SetResources(v []string)`

SetResources sets Resources field to given value.

### HasResources

`func (o *AdminPoppyUpdateRequest) HasResources() bool`

HasResources returns a boolean if a field has been set.

### GetApis

`func (o *AdminPoppyUpdateRequest) GetApis() []AdminPoppyUpdateRequestApisItem`

GetApis returns the Apis field if non-nil, zero value otherwise.

### GetApisOk

`func (o *AdminPoppyUpdateRequest) GetApisOk() (*[]AdminPoppyUpdateRequestApisItem, bool)`

GetApisOk returns a tuple with the Apis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApis

`func (o *AdminPoppyUpdateRequest) SetApis(v []AdminPoppyUpdateRequestApisItem)`

SetApis sets Apis field to given value.

### HasApis

`func (o *AdminPoppyUpdateRequest) HasApis() bool`

HasApis returns a boolean if a field has been set.

### GetAgent

`func (o *AdminPoppyUpdateRequest) GetAgent() []AdminPoppyUpdateRequestAgentItem`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *AdminPoppyUpdateRequest) GetAgentOk() (*[]AdminPoppyUpdateRequestAgentItem, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *AdminPoppyUpdateRequest) SetAgent(v []AdminPoppyUpdateRequestAgentItem)`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *AdminPoppyUpdateRequest) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetWeb

`func (o *AdminPoppyUpdateRequest) GetWeb() AdminPoppyUpdateRequestWeb`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *AdminPoppyUpdateRequest) GetWebOk() (*AdminPoppyUpdateRequestWeb, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *AdminPoppyUpdateRequest) SetWeb(v AdminPoppyUpdateRequestWeb)`

SetWeb sets Web field to given value.

### HasWeb

`func (o *AdminPoppyUpdateRequest) HasWeb() bool`

HasWeb returns a boolean if a field has been set.

### GetTasks

`func (o *AdminPoppyUpdateRequest) GetTasks() AdminPoppyUpdateRequestTasks`

GetTasks returns the Tasks field if non-nil, zero value otherwise.

### GetTasksOk

`func (o *AdminPoppyUpdateRequest) GetTasksOk() (*AdminPoppyUpdateRequestTasks, bool)`

GetTasksOk returns a tuple with the Tasks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTasks

`func (o *AdminPoppyUpdateRequest) SetTasks(v AdminPoppyUpdateRequestTasks)`

SetTasks sets Tasks field to given value.

### HasTasks

`func (o *AdminPoppyUpdateRequest) HasTasks() bool`

HasTasks returns a boolean if a field has been set.

### GetExtensions

`func (o *AdminPoppyUpdateRequest) GetExtensions() map[string]interface{}`

GetExtensions returns the Extensions field if non-nil, zero value otherwise.

### GetExtensionsOk

`func (o *AdminPoppyUpdateRequest) GetExtensionsOk() (*map[string]interface{}, bool)`

GetExtensionsOk returns a tuple with the Extensions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtensions

`func (o *AdminPoppyUpdateRequest) SetExtensions(v map[string]interface{})`

SetExtensions sets Extensions field to given value.

### HasExtensions

`func (o *AdminPoppyUpdateRequest) HasExtensions() bool`

HasExtensions returns a boolean if a field has been set.

### GetSessions

`func (o *AdminPoppyUpdateRequest) GetSessions() AdminPoppyUpdateRequestSessions`

GetSessions returns the Sessions field if non-nil, zero value otherwise.

### GetSessionsOk

`func (o *AdminPoppyUpdateRequest) GetSessionsOk() (*AdminPoppyUpdateRequestSessions, bool)`

GetSessionsOk returns a tuple with the Sessions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessions

`func (o *AdminPoppyUpdateRequest) SetSessions(v AdminPoppyUpdateRequestSessions)`

SetSessions sets Sessions field to given value.

### HasSessions

`func (o *AdminPoppyUpdateRequest) HasSessions() bool`

HasSessions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


