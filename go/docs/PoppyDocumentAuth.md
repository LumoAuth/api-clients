# PoppyDocumentAuth

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | Pointer to **string** | The organization&#39;s issuer that personal agents use. | [optional] 
**Disabled** | Pointer to **bool** | true while the organization offers personal agents no sign-in. | [optional] 
**Scopes** | Pointer to **map[string]string** | Scope name to description. | [optional] 
**ScopeHints** | Pointer to [**map[string]PoppyDocumentAuthScopeHintsValue**](PoppyDocumentAuthScopeHintsValue.md) |  | [optional] 

## Methods

### NewPoppyDocumentAuth

`func NewPoppyDocumentAuth() *PoppyDocumentAuth`

NewPoppyDocumentAuth instantiates a new PoppyDocumentAuth object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyDocumentAuthWithDefaults

`func NewPoppyDocumentAuthWithDefaults() *PoppyDocumentAuth`

NewPoppyDocumentAuthWithDefaults instantiates a new PoppyDocumentAuth object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIssuer

`func (o *PoppyDocumentAuth) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *PoppyDocumentAuth) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *PoppyDocumentAuth) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *PoppyDocumentAuth) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetDisabled

`func (o *PoppyDocumentAuth) GetDisabled() bool`

GetDisabled returns the Disabled field if non-nil, zero value otherwise.

### GetDisabledOk

`func (o *PoppyDocumentAuth) GetDisabledOk() (*bool, bool)`

GetDisabledOk returns a tuple with the Disabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabled

`func (o *PoppyDocumentAuth) SetDisabled(v bool)`

SetDisabled sets Disabled field to given value.

### HasDisabled

`func (o *PoppyDocumentAuth) HasDisabled() bool`

HasDisabled returns a boolean if a field has been set.

### GetScopes

`func (o *PoppyDocumentAuth) GetScopes() map[string]string`

GetScopes returns the Scopes field if non-nil, zero value otherwise.

### GetScopesOk

`func (o *PoppyDocumentAuth) GetScopesOk() (*map[string]string, bool)`

GetScopesOk returns a tuple with the Scopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopes

`func (o *PoppyDocumentAuth) SetScopes(v map[string]string)`

SetScopes sets Scopes field to given value.

### HasScopes

`func (o *PoppyDocumentAuth) HasScopes() bool`

HasScopes returns a boolean if a field has been set.

### GetScopeHints

`func (o *PoppyDocumentAuth) GetScopeHints() map[string]PoppyDocumentAuthScopeHintsValue`

GetScopeHints returns the ScopeHints field if non-nil, zero value otherwise.

### GetScopeHintsOk

`func (o *PoppyDocumentAuth) GetScopeHintsOk() (*map[string]PoppyDocumentAuthScopeHintsValue, bool)`

GetScopeHintsOk returns a tuple with the ScopeHints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScopeHints

`func (o *PoppyDocumentAuth) SetScopeHints(v map[string]PoppyDocumentAuthScopeHintsValue)`

SetScopeHints sets ScopeHints field to given value.

### HasScopeHints

`func (o *PoppyDocumentAuth) HasScopeHints() bool`

HasScopeHints returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


