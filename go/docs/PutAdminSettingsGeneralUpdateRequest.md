# PutAdminSettingsGeneralUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Name of the organization: one line, 1 to 255 characters. Aliases: tenantName, display_name, displayName. | [optional] 
**Locale** | Pointer to **string** | Default language of the hosted pages: en, es, fr, de, pt_BR (pt-BR is accepted too), it, nl, ja or ar. A change also needs the branding.edit permission. | [optional] 

## Methods

### NewPutAdminSettingsGeneralUpdateRequest

`func NewPutAdminSettingsGeneralUpdateRequest() *PutAdminSettingsGeneralUpdateRequest`

NewPutAdminSettingsGeneralUpdateRequest instantiates a new PutAdminSettingsGeneralUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsGeneralUpdateRequestWithDefaults

`func NewPutAdminSettingsGeneralUpdateRequestWithDefaults() *PutAdminSettingsGeneralUpdateRequest`

NewPutAdminSettingsGeneralUpdateRequestWithDefaults instantiates a new PutAdminSettingsGeneralUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PutAdminSettingsGeneralUpdateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PutAdminSettingsGeneralUpdateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PutAdminSettingsGeneralUpdateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PutAdminSettingsGeneralUpdateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetLocale

`func (o *PutAdminSettingsGeneralUpdateRequest) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *PutAdminSettingsGeneralUpdateRequest) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *PutAdminSettingsGeneralUpdateRequest) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *PutAdminSettingsGeneralUpdateRequest) HasLocale() bool`

HasLocale returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


