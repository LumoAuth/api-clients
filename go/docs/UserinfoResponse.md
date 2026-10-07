# UserinfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sub** | **string** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | 
**IdentityType** | Pointer to **string** | Only for non-user principals. | [optional] 
**Tenant** | Pointer to **string** | Organization slug. | [optional] 
**Name** | Pointer to **string** | profile scope (users); agent / client display name. | [optional] 
**GivenName** | Pointer to **string** | profile scope. | [optional] 
**FamilyName** | Pointer to **string** | profile scope. | [optional] 
**MiddleName** | Pointer to **string** | profile scope. | [optional] 
**Nickname** | Pointer to **string** | profile scope. | [optional] 
**PreferredUsername** | Pointer to **string** | profile scope. | [optional] 
**Profile** | Pointer to **string** | profile scope. | [optional] 
**Picture** | Pointer to **string** | profile scope. | [optional] 
**Website** | Pointer to **string** | profile scope. | [optional] 
**Gender** | Pointer to **string** | profile scope. | [optional] 
**Birthdate** | Pointer to **string** | profile scope (YYYY-MM-DD). | [optional] 
**Zoneinfo** | Pointer to **string** | profile scope. | [optional] 
**Locale** | Pointer to **string** | profile scope. | [optional] 
**UpdatedAt** | Pointer to **int32** | profile scope — Unix seconds. | [optional] 
**Email** | Pointer to **string** | email scope. | [optional] 
**EmailVerified** | Pointer to **bool** | email scope. | [optional] 
**PhoneNumber** | Pointer to **string** | phone scope. | [optional] 
**PhoneNumberVerified** | Pointer to **bool** | phone scope. | [optional] 
**Address** | Pointer to **map[string]interface{}** | address scope — OIDC address claim object. | [optional] 
**Roles** | Pointer to **[]string** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**AgentId** | Pointer to **string** | Agents only. | [optional] 
**WorkloadIdentity** | Pointer to **NullableString** | Agents only. | [optional] 
**Capabilities** | Pointer to **[]string** | Agents only. | [optional] 
**ClientId** | Pointer to **string** | Clients only. | [optional] 

## Methods

### NewUserinfoResponse

`func NewUserinfoResponse(sub string, ) *UserinfoResponse`

NewUserinfoResponse instantiates a new UserinfoResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserinfoResponseWithDefaults

`func NewUserinfoResponseWithDefaults() *UserinfoResponse`

NewUserinfoResponseWithDefaults instantiates a new UserinfoResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSub

`func (o *UserinfoResponse) GetSub() string`

GetSub returns the Sub field if non-nil, zero value otherwise.

### GetSubOk

`func (o *UserinfoResponse) GetSubOk() (*string, bool)`

GetSubOk returns a tuple with the Sub field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSub

`func (o *UserinfoResponse) SetSub(v string)`

SetSub sets Sub field to given value.


### GetIdentityType

`func (o *UserinfoResponse) GetIdentityType() string`

GetIdentityType returns the IdentityType field if non-nil, zero value otherwise.

### GetIdentityTypeOk

`func (o *UserinfoResponse) GetIdentityTypeOk() (*string, bool)`

GetIdentityTypeOk returns a tuple with the IdentityType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentityType

`func (o *UserinfoResponse) SetIdentityType(v string)`

SetIdentityType sets IdentityType field to given value.

### HasIdentityType

`func (o *UserinfoResponse) HasIdentityType() bool`

HasIdentityType returns a boolean if a field has been set.

### GetTenant

`func (o *UserinfoResponse) GetTenant() string`

GetTenant returns the Tenant field if non-nil, zero value otherwise.

### GetTenantOk

`func (o *UserinfoResponse) GetTenantOk() (*string, bool)`

GetTenantOk returns a tuple with the Tenant field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTenant

`func (o *UserinfoResponse) SetTenant(v string)`

SetTenant sets Tenant field to given value.

### HasTenant

`func (o *UserinfoResponse) HasTenant() bool`

HasTenant returns a boolean if a field has been set.

### GetName

`func (o *UserinfoResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UserinfoResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UserinfoResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UserinfoResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### GetGivenName

`func (o *UserinfoResponse) GetGivenName() string`

GetGivenName returns the GivenName field if non-nil, zero value otherwise.

### GetGivenNameOk

`func (o *UserinfoResponse) GetGivenNameOk() (*string, bool)`

GetGivenNameOk returns a tuple with the GivenName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGivenName

`func (o *UserinfoResponse) SetGivenName(v string)`

SetGivenName sets GivenName field to given value.

### HasGivenName

`func (o *UserinfoResponse) HasGivenName() bool`

HasGivenName returns a boolean if a field has been set.

### GetFamilyName

`func (o *UserinfoResponse) GetFamilyName() string`

GetFamilyName returns the FamilyName field if non-nil, zero value otherwise.

### GetFamilyNameOk

`func (o *UserinfoResponse) GetFamilyNameOk() (*string, bool)`

GetFamilyNameOk returns a tuple with the FamilyName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFamilyName

`func (o *UserinfoResponse) SetFamilyName(v string)`

SetFamilyName sets FamilyName field to given value.

### HasFamilyName

`func (o *UserinfoResponse) HasFamilyName() bool`

HasFamilyName returns a boolean if a field has been set.

### GetMiddleName

`func (o *UserinfoResponse) GetMiddleName() string`

GetMiddleName returns the MiddleName field if non-nil, zero value otherwise.

### GetMiddleNameOk

`func (o *UserinfoResponse) GetMiddleNameOk() (*string, bool)`

GetMiddleNameOk returns a tuple with the MiddleName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMiddleName

`func (o *UserinfoResponse) SetMiddleName(v string)`

SetMiddleName sets MiddleName field to given value.

### HasMiddleName

`func (o *UserinfoResponse) HasMiddleName() bool`

HasMiddleName returns a boolean if a field has been set.

### GetNickname

`func (o *UserinfoResponse) GetNickname() string`

GetNickname returns the Nickname field if non-nil, zero value otherwise.

### GetNicknameOk

`func (o *UserinfoResponse) GetNicknameOk() (*string, bool)`

GetNicknameOk returns a tuple with the Nickname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNickname

`func (o *UserinfoResponse) SetNickname(v string)`

SetNickname sets Nickname field to given value.

### HasNickname

`func (o *UserinfoResponse) HasNickname() bool`

HasNickname returns a boolean if a field has been set.

### GetPreferredUsername

`func (o *UserinfoResponse) GetPreferredUsername() string`

GetPreferredUsername returns the PreferredUsername field if non-nil, zero value otherwise.

### GetPreferredUsernameOk

`func (o *UserinfoResponse) GetPreferredUsernameOk() (*string, bool)`

GetPreferredUsernameOk returns a tuple with the PreferredUsername field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredUsername

`func (o *UserinfoResponse) SetPreferredUsername(v string)`

SetPreferredUsername sets PreferredUsername field to given value.

### HasPreferredUsername

`func (o *UserinfoResponse) HasPreferredUsername() bool`

HasPreferredUsername returns a boolean if a field has been set.

### GetProfile

`func (o *UserinfoResponse) GetProfile() string`

GetProfile returns the Profile field if non-nil, zero value otherwise.

### GetProfileOk

`func (o *UserinfoResponse) GetProfileOk() (*string, bool)`

GetProfileOk returns a tuple with the Profile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProfile

`func (o *UserinfoResponse) SetProfile(v string)`

SetProfile sets Profile field to given value.

### HasProfile

`func (o *UserinfoResponse) HasProfile() bool`

HasProfile returns a boolean if a field has been set.

### GetPicture

`func (o *UserinfoResponse) GetPicture() string`

GetPicture returns the Picture field if non-nil, zero value otherwise.

### GetPictureOk

`func (o *UserinfoResponse) GetPictureOk() (*string, bool)`

GetPictureOk returns a tuple with the Picture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPicture

`func (o *UserinfoResponse) SetPicture(v string)`

SetPicture sets Picture field to given value.

### HasPicture

`func (o *UserinfoResponse) HasPicture() bool`

HasPicture returns a boolean if a field has been set.

### GetWebsite

`func (o *UserinfoResponse) GetWebsite() string`

GetWebsite returns the Website field if non-nil, zero value otherwise.

### GetWebsiteOk

`func (o *UserinfoResponse) GetWebsiteOk() (*string, bool)`

GetWebsiteOk returns a tuple with the Website field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebsite

`func (o *UserinfoResponse) SetWebsite(v string)`

SetWebsite sets Website field to given value.

### HasWebsite

`func (o *UserinfoResponse) HasWebsite() bool`

HasWebsite returns a boolean if a field has been set.

### GetGender

`func (o *UserinfoResponse) GetGender() string`

GetGender returns the Gender field if non-nil, zero value otherwise.

### GetGenderOk

`func (o *UserinfoResponse) GetGenderOk() (*string, bool)`

GetGenderOk returns a tuple with the Gender field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGender

`func (o *UserinfoResponse) SetGender(v string)`

SetGender sets Gender field to given value.

### HasGender

`func (o *UserinfoResponse) HasGender() bool`

HasGender returns a boolean if a field has been set.

### GetBirthdate

`func (o *UserinfoResponse) GetBirthdate() string`

GetBirthdate returns the Birthdate field if non-nil, zero value otherwise.

### GetBirthdateOk

`func (o *UserinfoResponse) GetBirthdateOk() (*string, bool)`

GetBirthdateOk returns a tuple with the Birthdate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBirthdate

`func (o *UserinfoResponse) SetBirthdate(v string)`

SetBirthdate sets Birthdate field to given value.

### HasBirthdate

`func (o *UserinfoResponse) HasBirthdate() bool`

HasBirthdate returns a boolean if a field has been set.

### GetZoneinfo

`func (o *UserinfoResponse) GetZoneinfo() string`

GetZoneinfo returns the Zoneinfo field if non-nil, zero value otherwise.

### GetZoneinfoOk

`func (o *UserinfoResponse) GetZoneinfoOk() (*string, bool)`

GetZoneinfoOk returns a tuple with the Zoneinfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZoneinfo

`func (o *UserinfoResponse) SetZoneinfo(v string)`

SetZoneinfo sets Zoneinfo field to given value.

### HasZoneinfo

`func (o *UserinfoResponse) HasZoneinfo() bool`

HasZoneinfo returns a boolean if a field has been set.

### GetLocale

`func (o *UserinfoResponse) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *UserinfoResponse) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *UserinfoResponse) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *UserinfoResponse) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *UserinfoResponse) GetUpdatedAt() int32`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *UserinfoResponse) GetUpdatedAtOk() (*int32, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *UserinfoResponse) SetUpdatedAt(v int32)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *UserinfoResponse) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetEmail

`func (o *UserinfoResponse) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *UserinfoResponse) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *UserinfoResponse) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *UserinfoResponse) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetEmailVerified

`func (o *UserinfoResponse) GetEmailVerified() bool`

GetEmailVerified returns the EmailVerified field if non-nil, zero value otherwise.

### GetEmailVerifiedOk

`func (o *UserinfoResponse) GetEmailVerifiedOk() (*bool, bool)`

GetEmailVerifiedOk returns a tuple with the EmailVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailVerified

`func (o *UserinfoResponse) SetEmailVerified(v bool)`

SetEmailVerified sets EmailVerified field to given value.

### HasEmailVerified

`func (o *UserinfoResponse) HasEmailVerified() bool`

HasEmailVerified returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *UserinfoResponse) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *UserinfoResponse) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *UserinfoResponse) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *UserinfoResponse) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetPhoneNumberVerified

`func (o *UserinfoResponse) GetPhoneNumberVerified() bool`

GetPhoneNumberVerified returns the PhoneNumberVerified field if non-nil, zero value otherwise.

### GetPhoneNumberVerifiedOk

`func (o *UserinfoResponse) GetPhoneNumberVerifiedOk() (*bool, bool)`

GetPhoneNumberVerifiedOk returns a tuple with the PhoneNumberVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumberVerified

`func (o *UserinfoResponse) SetPhoneNumberVerified(v bool)`

SetPhoneNumberVerified sets PhoneNumberVerified field to given value.

### HasPhoneNumberVerified

`func (o *UserinfoResponse) HasPhoneNumberVerified() bool`

HasPhoneNumberVerified returns a boolean if a field has been set.

### GetAddress

`func (o *UserinfoResponse) GetAddress() map[string]interface{}`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *UserinfoResponse) GetAddressOk() (*map[string]interface{}, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *UserinfoResponse) SetAddress(v map[string]interface{})`

SetAddress sets Address field to given value.

### HasAddress

`func (o *UserinfoResponse) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetRoles

`func (o *UserinfoResponse) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *UserinfoResponse) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *UserinfoResponse) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *UserinfoResponse) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetAgentId

`func (o *UserinfoResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *UserinfoResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *UserinfoResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *UserinfoResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetWorkloadIdentity

`func (o *UserinfoResponse) GetWorkloadIdentity() string`

GetWorkloadIdentity returns the WorkloadIdentity field if non-nil, zero value otherwise.

### GetWorkloadIdentityOk

`func (o *UserinfoResponse) GetWorkloadIdentityOk() (*string, bool)`

GetWorkloadIdentityOk returns a tuple with the WorkloadIdentity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkloadIdentity

`func (o *UserinfoResponse) SetWorkloadIdentity(v string)`

SetWorkloadIdentity sets WorkloadIdentity field to given value.

### HasWorkloadIdentity

`func (o *UserinfoResponse) HasWorkloadIdentity() bool`

HasWorkloadIdentity returns a boolean if a field has been set.

### SetWorkloadIdentityNil

`func (o *UserinfoResponse) SetWorkloadIdentityNil(b bool)`

 SetWorkloadIdentityNil sets the value for WorkloadIdentity to be an explicit nil

### UnsetWorkloadIdentity
`func (o *UserinfoResponse) UnsetWorkloadIdentity()`

UnsetWorkloadIdentity ensures that no value is present for WorkloadIdentity, not even an explicit nil
### GetCapabilities

`func (o *UserinfoResponse) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *UserinfoResponse) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *UserinfoResponse) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *UserinfoResponse) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### SetCapabilitiesNil

`func (o *UserinfoResponse) SetCapabilitiesNil(b bool)`

 SetCapabilitiesNil sets the value for Capabilities to be an explicit nil

### UnsetCapabilities
`func (o *UserinfoResponse) UnsetCapabilities()`

UnsetCapabilities ensures that no value is present for Capabilities, not even an explicit nil
### GetClientId

`func (o *UserinfoResponse) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *UserinfoResponse) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *UserinfoResponse) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *UserinfoResponse) HasClientId() bool`

HasClientId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


