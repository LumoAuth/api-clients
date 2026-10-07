# GetMyAttributesResponseAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Email** | Pointer to **string** |  | [optional] 
**Username** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**IsAdmin** | Pointer to **bool** |  | [optional] 
**IsSuperAdmin** | Pointer to **bool** |  | [optional] 
**EmailVerified** | Pointer to **bool** |  | [optional] 
**MfaEnabled** | Pointer to **bool** |  | [optional] 
**IsActive** | Pointer to **bool** |  | [optional] 
**Blocked** | Pointer to **bool** |  | [optional] 
**GivenName** | Pointer to **NullableString** |  | [optional] 
**FamilyName** | Pointer to **NullableString** |  | [optional] 
**Locale** | Pointer to **NullableString** |  | [optional] 
**Zoneinfo** | Pointer to **NullableString** |  | [optional] 
**Roles** | Pointer to **[]string** | Role slugs | [optional] 
**Groups** | Pointer to **[]string** | Group slugs | [optional] 
**Permissions** | Pointer to **[]string** | Permission slugs | [optional] 
**TenantId** | Pointer to **NullableInt32** |  | [optional] 
**OrgId** | Pointer to **NullableString** | Organization slug | [optional] 

## Methods

### NewGetMyAttributesResponseAttributes

`func NewGetMyAttributesResponseAttributes() *GetMyAttributesResponseAttributes`

NewGetMyAttributesResponseAttributes instantiates a new GetMyAttributesResponseAttributes object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMyAttributesResponseAttributesWithDefaults

`func NewGetMyAttributesResponseAttributesWithDefaults() *GetMyAttributesResponseAttributes`

NewGetMyAttributesResponseAttributesWithDefaults instantiates a new GetMyAttributesResponseAttributes object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetMyAttributesResponseAttributes) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetMyAttributesResponseAttributes) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetMyAttributesResponseAttributes) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *GetMyAttributesResponseAttributes) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEmail

`func (o *GetMyAttributesResponseAttributes) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *GetMyAttributesResponseAttributes) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *GetMyAttributesResponseAttributes) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *GetMyAttributesResponseAttributes) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetUsername

`func (o *GetMyAttributesResponseAttributes) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *GetMyAttributesResponseAttributes) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *GetMyAttributesResponseAttributes) SetUsername(v string)`

SetUsername sets Username field to given value.

### HasUsername

`func (o *GetMyAttributesResponseAttributes) HasUsername() bool`

HasUsername returns a boolean if a field has been set.

### GetName

`func (o *GetMyAttributesResponseAttributes) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetMyAttributesResponseAttributes) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetMyAttributesResponseAttributes) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GetMyAttributesResponseAttributes) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *GetMyAttributesResponseAttributes) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *GetMyAttributesResponseAttributes) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetIsAdmin

`func (o *GetMyAttributesResponseAttributes) GetIsAdmin() bool`

GetIsAdmin returns the IsAdmin field if non-nil, zero value otherwise.

### GetIsAdminOk

`func (o *GetMyAttributesResponseAttributes) GetIsAdminOk() (*bool, bool)`

GetIsAdminOk returns a tuple with the IsAdmin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAdmin

`func (o *GetMyAttributesResponseAttributes) SetIsAdmin(v bool)`

SetIsAdmin sets IsAdmin field to given value.

### HasIsAdmin

`func (o *GetMyAttributesResponseAttributes) HasIsAdmin() bool`

HasIsAdmin returns a boolean if a field has been set.

### GetIsSuperAdmin

`func (o *GetMyAttributesResponseAttributes) GetIsSuperAdmin() bool`

GetIsSuperAdmin returns the IsSuperAdmin field if non-nil, zero value otherwise.

### GetIsSuperAdminOk

`func (o *GetMyAttributesResponseAttributes) GetIsSuperAdminOk() (*bool, bool)`

GetIsSuperAdminOk returns a tuple with the IsSuperAdmin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSuperAdmin

`func (o *GetMyAttributesResponseAttributes) SetIsSuperAdmin(v bool)`

SetIsSuperAdmin sets IsSuperAdmin field to given value.

### HasIsSuperAdmin

`func (o *GetMyAttributesResponseAttributes) HasIsSuperAdmin() bool`

HasIsSuperAdmin returns a boolean if a field has been set.

### GetEmailVerified

`func (o *GetMyAttributesResponseAttributes) GetEmailVerified() bool`

GetEmailVerified returns the EmailVerified field if non-nil, zero value otherwise.

### GetEmailVerifiedOk

`func (o *GetMyAttributesResponseAttributes) GetEmailVerifiedOk() (*bool, bool)`

GetEmailVerifiedOk returns a tuple with the EmailVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailVerified

`func (o *GetMyAttributesResponseAttributes) SetEmailVerified(v bool)`

SetEmailVerified sets EmailVerified field to given value.

### HasEmailVerified

`func (o *GetMyAttributesResponseAttributes) HasEmailVerified() bool`

HasEmailVerified returns a boolean if a field has been set.

### GetMfaEnabled

`func (o *GetMyAttributesResponseAttributes) GetMfaEnabled() bool`

GetMfaEnabled returns the MfaEnabled field if non-nil, zero value otherwise.

### GetMfaEnabledOk

`func (o *GetMyAttributesResponseAttributes) GetMfaEnabledOk() (*bool, bool)`

GetMfaEnabledOk returns a tuple with the MfaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaEnabled

`func (o *GetMyAttributesResponseAttributes) SetMfaEnabled(v bool)`

SetMfaEnabled sets MfaEnabled field to given value.

### HasMfaEnabled

`func (o *GetMyAttributesResponseAttributes) HasMfaEnabled() bool`

HasMfaEnabled returns a boolean if a field has been set.

### GetIsActive

`func (o *GetMyAttributesResponseAttributes) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *GetMyAttributesResponseAttributes) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *GetMyAttributesResponseAttributes) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *GetMyAttributesResponseAttributes) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetBlocked

`func (o *GetMyAttributesResponseAttributes) GetBlocked() bool`

GetBlocked returns the Blocked field if non-nil, zero value otherwise.

### GetBlockedOk

`func (o *GetMyAttributesResponseAttributes) GetBlockedOk() (*bool, bool)`

GetBlockedOk returns a tuple with the Blocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlocked

`func (o *GetMyAttributesResponseAttributes) SetBlocked(v bool)`

SetBlocked sets Blocked field to given value.

### HasBlocked

`func (o *GetMyAttributesResponseAttributes) HasBlocked() bool`

HasBlocked returns a boolean if a field has been set.

### GetGivenName

`func (o *GetMyAttributesResponseAttributes) GetGivenName() string`

GetGivenName returns the GivenName field if non-nil, zero value otherwise.

### GetGivenNameOk

`func (o *GetMyAttributesResponseAttributes) GetGivenNameOk() (*string, bool)`

GetGivenNameOk returns a tuple with the GivenName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGivenName

`func (o *GetMyAttributesResponseAttributes) SetGivenName(v string)`

SetGivenName sets GivenName field to given value.

### HasGivenName

`func (o *GetMyAttributesResponseAttributes) HasGivenName() bool`

HasGivenName returns a boolean if a field has been set.

### SetGivenNameNil

`func (o *GetMyAttributesResponseAttributes) SetGivenNameNil(b bool)`

 SetGivenNameNil sets the value for GivenName to be an explicit nil

### UnsetGivenName
`func (o *GetMyAttributesResponseAttributes) UnsetGivenName()`

UnsetGivenName ensures that no value is present for GivenName, not even an explicit nil
### GetFamilyName

`func (o *GetMyAttributesResponseAttributes) GetFamilyName() string`

GetFamilyName returns the FamilyName field if non-nil, zero value otherwise.

### GetFamilyNameOk

`func (o *GetMyAttributesResponseAttributes) GetFamilyNameOk() (*string, bool)`

GetFamilyNameOk returns a tuple with the FamilyName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFamilyName

`func (o *GetMyAttributesResponseAttributes) SetFamilyName(v string)`

SetFamilyName sets FamilyName field to given value.

### HasFamilyName

`func (o *GetMyAttributesResponseAttributes) HasFamilyName() bool`

HasFamilyName returns a boolean if a field has been set.

### SetFamilyNameNil

`func (o *GetMyAttributesResponseAttributes) SetFamilyNameNil(b bool)`

 SetFamilyNameNil sets the value for FamilyName to be an explicit nil

### UnsetFamilyName
`func (o *GetMyAttributesResponseAttributes) UnsetFamilyName()`

UnsetFamilyName ensures that no value is present for FamilyName, not even an explicit nil
### GetLocale

`func (o *GetMyAttributesResponseAttributes) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *GetMyAttributesResponseAttributes) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *GetMyAttributesResponseAttributes) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *GetMyAttributesResponseAttributes) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### SetLocaleNil

`func (o *GetMyAttributesResponseAttributes) SetLocaleNil(b bool)`

 SetLocaleNil sets the value for Locale to be an explicit nil

### UnsetLocale
`func (o *GetMyAttributesResponseAttributes) UnsetLocale()`

UnsetLocale ensures that no value is present for Locale, not even an explicit nil
### GetZoneinfo

`func (o *GetMyAttributesResponseAttributes) GetZoneinfo() string`

GetZoneinfo returns the Zoneinfo field if non-nil, zero value otherwise.

### GetZoneinfoOk

`func (o *GetMyAttributesResponseAttributes) GetZoneinfoOk() (*string, bool)`

GetZoneinfoOk returns a tuple with the Zoneinfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZoneinfo

`func (o *GetMyAttributesResponseAttributes) SetZoneinfo(v string)`

SetZoneinfo sets Zoneinfo field to given value.

### HasZoneinfo

`func (o *GetMyAttributesResponseAttributes) HasZoneinfo() bool`

HasZoneinfo returns a boolean if a field has been set.

### SetZoneinfoNil

`func (o *GetMyAttributesResponseAttributes) SetZoneinfoNil(b bool)`

 SetZoneinfoNil sets the value for Zoneinfo to be an explicit nil

### UnsetZoneinfo
`func (o *GetMyAttributesResponseAttributes) UnsetZoneinfo()`

UnsetZoneinfo ensures that no value is present for Zoneinfo, not even an explicit nil
### GetRoles

`func (o *GetMyAttributesResponseAttributes) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *GetMyAttributesResponseAttributes) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *GetMyAttributesResponseAttributes) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *GetMyAttributesResponseAttributes) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetGroups

`func (o *GetMyAttributesResponseAttributes) GetGroups() []string`

GetGroups returns the Groups field if non-nil, zero value otherwise.

### GetGroupsOk

`func (o *GetMyAttributesResponseAttributes) GetGroupsOk() (*[]string, bool)`

GetGroupsOk returns a tuple with the Groups field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroups

`func (o *GetMyAttributesResponseAttributes) SetGroups(v []string)`

SetGroups sets Groups field to given value.

### HasGroups

`func (o *GetMyAttributesResponseAttributes) HasGroups() bool`

HasGroups returns a boolean if a field has been set.

### GetPermissions

`func (o *GetMyAttributesResponseAttributes) GetPermissions() []string`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *GetMyAttributesResponseAttributes) GetPermissionsOk() (*[]string, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *GetMyAttributesResponseAttributes) SetPermissions(v []string)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *GetMyAttributesResponseAttributes) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetTenantId

`func (o *GetMyAttributesResponseAttributes) GetTenantId() int32`

GetTenantId returns the TenantId field if non-nil, zero value otherwise.

### GetTenantIdOk

`func (o *GetMyAttributesResponseAttributes) GetTenantIdOk() (*int32, bool)`

GetTenantIdOk returns a tuple with the TenantId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenantId

`func (o *GetMyAttributesResponseAttributes) SetTenantId(v int32)`

SetTenantId sets TenantId field to given value.

### HasTenantId

`func (o *GetMyAttributesResponseAttributes) HasTenantId() bool`

HasTenantId returns a boolean if a field has been set.

### SetTenantIdNil

`func (o *GetMyAttributesResponseAttributes) SetTenantIdNil(b bool)`

 SetTenantIdNil sets the value for TenantId to be an explicit nil

### UnsetTenantId
`func (o *GetMyAttributesResponseAttributes) UnsetTenantId()`

UnsetTenantId ensures that no value is present for TenantId, not even an explicit nil
### GetOrgId

`func (o *GetMyAttributesResponseAttributes) GetOrgId() string`

GetOrgId returns the OrgId field if non-nil, zero value otherwise.

### GetOrgIdOk

`func (o *GetMyAttributesResponseAttributes) GetOrgIdOk() (*string, bool)`

GetOrgIdOk returns a tuple with the OrgId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrgId

`func (o *GetMyAttributesResponseAttributes) SetOrgId(v string)`

SetOrgId sets OrgId field to given value.

### HasOrgId

`func (o *GetMyAttributesResponseAttributes) HasOrgId() bool`

HasOrgId returns a boolean if a field has been set.

### SetOrgIdNil

`func (o *GetMyAttributesResponseAttributes) SetOrgIdNil(b bool)`

 SetOrgIdNil sets the value for OrgId to be an explicit nil

### UnsetOrgId
`func (o *GetMyAttributesResponseAttributes) UnsetOrgId()`

UnsetOrgId ensures that no value is present for OrgId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


