# CimdCheckResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | Pointer to **bool** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] 
**ClientId** | Pointer to **string** |  | [optional] 
**Enabled** | Pointer to **bool** | Whether CIMD is currently on for this organization (switch + plan). | [optional] 
**Reason** | Pointer to **NullableString** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] 
**Message** | Pointer to **NullableString** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] 
**Warnings** | Pointer to **[]string** |  | [optional] 
**Document** | Pointer to **map[string]interface{}** | The metadata document as fetched. | [optional] 
**Effective** | Pointer to [**NullableCimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] 
**ShadowClient** | Pointer to [**NullableCimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] 

## Methods

### NewCimdCheckResult

`func NewCimdCheckResult() *CimdCheckResult`

NewCimdCheckResult instantiates a new CimdCheckResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCimdCheckResultWithDefaults

`func NewCimdCheckResultWithDefaults() *CimdCheckResult`

NewCimdCheckResultWithDefaults instantiates a new CimdCheckResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOk

`func (o *CimdCheckResult) GetOk() bool`

GetOk returns the Ok field if non-nil, zero value otherwise.

### GetOkOk

`func (o *CimdCheckResult) GetOkOk() (*bool, bool)`

GetOkOk returns a tuple with the Ok field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOk

`func (o *CimdCheckResult) SetOk(v bool)`

SetOk sets Ok field to given value.

### HasOk

`func (o *CimdCheckResult) HasOk() bool`

HasOk returns a boolean if a field has been set.

### GetClientId

`func (o *CimdCheckResult) GetClientId() string`

GetClientId returns the ClientId field if non-nil, zero value otherwise.

### GetClientIdOk

`func (o *CimdCheckResult) GetClientIdOk() (*string, bool)`

GetClientIdOk returns a tuple with the ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientId

`func (o *CimdCheckResult) SetClientId(v string)`

SetClientId sets ClientId field to given value.

### HasClientId

`func (o *CimdCheckResult) HasClientId() bool`

HasClientId returns a boolean if a field has been set.

### GetEnabled

`func (o *CimdCheckResult) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *CimdCheckResult) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *CimdCheckResult) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *CimdCheckResult) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetReason

`func (o *CimdCheckResult) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *CimdCheckResult) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *CimdCheckResult) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *CimdCheckResult) HasReason() bool`

HasReason returns a boolean if a field has been set.

### SetReasonNil

`func (o *CimdCheckResult) SetReasonNil(b bool)`

 SetReasonNil sets the value for Reason to be an explicit nil

### UnsetReason
`func (o *CimdCheckResult) UnsetReason()`

UnsetReason ensures that no value is present for Reason, not even an explicit nil
### GetMessage

`func (o *CimdCheckResult) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *CimdCheckResult) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *CimdCheckResult) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *CimdCheckResult) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### SetMessageNil

`func (o *CimdCheckResult) SetMessageNil(b bool)`

 SetMessageNil sets the value for Message to be an explicit nil

### UnsetMessage
`func (o *CimdCheckResult) UnsetMessage()`

UnsetMessage ensures that no value is present for Message, not even an explicit nil
### GetWarnings

`func (o *CimdCheckResult) GetWarnings() []string`

GetWarnings returns the Warnings field if non-nil, zero value otherwise.

### GetWarningsOk

`func (o *CimdCheckResult) GetWarningsOk() (*[]string, bool)`

GetWarningsOk returns a tuple with the Warnings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarnings

`func (o *CimdCheckResult) SetWarnings(v []string)`

SetWarnings sets Warnings field to given value.

### HasWarnings

`func (o *CimdCheckResult) HasWarnings() bool`

HasWarnings returns a boolean if a field has been set.

### GetDocument

`func (o *CimdCheckResult) GetDocument() map[string]interface{}`

GetDocument returns the Document field if non-nil, zero value otherwise.

### GetDocumentOk

`func (o *CimdCheckResult) GetDocumentOk() (*map[string]interface{}, bool)`

GetDocumentOk returns a tuple with the Document field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocument

`func (o *CimdCheckResult) SetDocument(v map[string]interface{})`

SetDocument sets Document field to given value.

### HasDocument

`func (o *CimdCheckResult) HasDocument() bool`

HasDocument returns a boolean if a field has been set.

### SetDocumentNil

`func (o *CimdCheckResult) SetDocumentNil(b bool)`

 SetDocumentNil sets the value for Document to be an explicit nil

### UnsetDocument
`func (o *CimdCheckResult) UnsetDocument()`

UnsetDocument ensures that no value is present for Document, not even an explicit nil
### GetEffective

`func (o *CimdCheckResult) GetEffective() CimdCheckResultEffective`

GetEffective returns the Effective field if non-nil, zero value otherwise.

### GetEffectiveOk

`func (o *CimdCheckResult) GetEffectiveOk() (*CimdCheckResultEffective, bool)`

GetEffectiveOk returns a tuple with the Effective field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffective

`func (o *CimdCheckResult) SetEffective(v CimdCheckResultEffective)`

SetEffective sets Effective field to given value.

### HasEffective

`func (o *CimdCheckResult) HasEffective() bool`

HasEffective returns a boolean if a field has been set.

### SetEffectiveNil

`func (o *CimdCheckResult) SetEffectiveNil(b bool)`

 SetEffectiveNil sets the value for Effective to be an explicit nil

### UnsetEffective
`func (o *CimdCheckResult) UnsetEffective()`

UnsetEffective ensures that no value is present for Effective, not even an explicit nil
### GetShadowClient

`func (o *CimdCheckResult) GetShadowClient() CimdCheckResultShadowClient`

GetShadowClient returns the ShadowClient field if non-nil, zero value otherwise.

### GetShadowClientOk

`func (o *CimdCheckResult) GetShadowClientOk() (*CimdCheckResultShadowClient, bool)`

GetShadowClientOk returns a tuple with the ShadowClient field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShadowClient

`func (o *CimdCheckResult) SetShadowClient(v CimdCheckResultShadowClient)`

SetShadowClient sets ShadowClient field to given value.

### HasShadowClient

`func (o *CimdCheckResult) HasShadowClient() bool`

HasShadowClient returns a boolean if a field has been set.

### SetShadowClientNil

`func (o *CimdCheckResult) SetShadowClientNil(b bool)`

 SetShadowClientNil sets the value for ShadowClient to be an explicit nil

### UnsetShadowClient
`func (o *CimdCheckResult) UnsetShadowClient()`

UnsetShadowClient ensures that no value is present for ShadowClient, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


