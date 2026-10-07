# AdminSettingsAllResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**General** | Pointer to [**AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md) |  | [optional] 
**Authentication** | Pointer to [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] 
**Branding** | Pointer to [**BrandingSettings**](BrandingSettings.md) |  | [optional] 
**Security** | Pointer to [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] 
**Email** | Pointer to **map[string]interface{}** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] 

## Methods

### NewAdminSettingsAllResponseData

`func NewAdminSettingsAllResponseData() *AdminSettingsAllResponseData`

NewAdminSettingsAllResponseData instantiates a new AdminSettingsAllResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSettingsAllResponseDataWithDefaults

`func NewAdminSettingsAllResponseDataWithDefaults() *AdminSettingsAllResponseData`

NewAdminSettingsAllResponseDataWithDefaults instantiates a new AdminSettingsAllResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGeneral

`func (o *AdminSettingsAllResponseData) GetGeneral() AdminSettingsAllResponseDataGeneral`

GetGeneral returns the General field if non-nil, zero value otherwise.

### GetGeneralOk

`func (o *AdminSettingsAllResponseData) GetGeneralOk() (*AdminSettingsAllResponseDataGeneral, bool)`

GetGeneralOk returns a tuple with the General field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneral

`func (o *AdminSettingsAllResponseData) SetGeneral(v AdminSettingsAllResponseDataGeneral)`

SetGeneral sets General field to given value.

### HasGeneral

`func (o *AdminSettingsAllResponseData) HasGeneral() bool`

HasGeneral returns a boolean if a field has been set.

### GetAuthentication

`func (o *AdminSettingsAllResponseData) GetAuthentication() AuthenticationSettings`

GetAuthentication returns the Authentication field if non-nil, zero value otherwise.

### GetAuthenticationOk

`func (o *AdminSettingsAllResponseData) GetAuthenticationOk() (*AuthenticationSettings, bool)`

GetAuthenticationOk returns a tuple with the Authentication field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthentication

`func (o *AdminSettingsAllResponseData) SetAuthentication(v AuthenticationSettings)`

SetAuthentication sets Authentication field to given value.

### HasAuthentication

`func (o *AdminSettingsAllResponseData) HasAuthentication() bool`

HasAuthentication returns a boolean if a field has been set.

### GetBranding

`func (o *AdminSettingsAllResponseData) GetBranding() BrandingSettings`

GetBranding returns the Branding field if non-nil, zero value otherwise.

### GetBrandingOk

`func (o *AdminSettingsAllResponseData) GetBrandingOk() (*BrandingSettings, bool)`

GetBrandingOk returns a tuple with the Branding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBranding

`func (o *AdminSettingsAllResponseData) SetBranding(v BrandingSettings)`

SetBranding sets Branding field to given value.

### HasBranding

`func (o *AdminSettingsAllResponseData) HasBranding() bool`

HasBranding returns a boolean if a field has been set.

### GetSecurity

`func (o *AdminSettingsAllResponseData) GetSecurity() AdminSettingsAllResponseDataSecurity`

GetSecurity returns the Security field if non-nil, zero value otherwise.

### GetSecurityOk

`func (o *AdminSettingsAllResponseData) GetSecurityOk() (*AdminSettingsAllResponseDataSecurity, bool)`

GetSecurityOk returns a tuple with the Security field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurity

`func (o *AdminSettingsAllResponseData) SetSecurity(v AdminSettingsAllResponseDataSecurity)`

SetSecurity sets Security field to given value.

### HasSecurity

`func (o *AdminSettingsAllResponseData) HasSecurity() bool`

HasSecurity returns a boolean if a field has been set.

### GetEmail

`func (o *AdminSettingsAllResponseData) GetEmail() map[string]interface{}`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *AdminSettingsAllResponseData) GetEmailOk() (*map[string]interface{}, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *AdminSettingsAllResponseData) SetEmail(v map[string]interface{})`

SetEmail sets Email field to given value.

### HasEmail

`func (o *AdminSettingsAllResponseData) HasEmail() bool`

HasEmail returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


