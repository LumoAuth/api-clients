# ScimSettingsInbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**BearerToken** | Pointer to **NullableString** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] 
**BearerTokenHash** | Pointer to [**NullableRedactedSecret**](RedactedSecret.md) |  | [optional] 
**BearerTokenPreview** | Pointer to **NullableString** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] 
**TokenCreatedAt** | Pointer to **NullableString** |  | [optional] 
**AllowUserCreation** | Pointer to **bool** |  | [optional] 
**AllowUserUpdates** | Pointer to **bool** |  | [optional] 
**AllowUserDeletion** | Pointer to **bool** |  | [optional] 
**AllowGroupOperations** | Pointer to **bool** |  | [optional] 
**ProtectedAttributes** | Pointer to [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] 
**AttributeMapping** | Pointer to **map[string]string** | SCIM attribute &#x3D;&gt; user field. | [optional] 
**AutoActivateUsers** | Pointer to **bool** |  | [optional] 
**DeprovisioningAction** | Pointer to **string** |  | [optional] 

## Methods

### NewScimSettingsInbound

`func NewScimSettingsInbound() *ScimSettingsInbound`

NewScimSettingsInbound instantiates a new ScimSettingsInbound object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScimSettingsInboundWithDefaults

`func NewScimSettingsInboundWithDefaults() *ScimSettingsInbound`

NewScimSettingsInboundWithDefaults instantiates a new ScimSettingsInbound object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *ScimSettingsInbound) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *ScimSettingsInbound) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *ScimSettingsInbound) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *ScimSettingsInbound) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetBearerToken

`func (o *ScimSettingsInbound) GetBearerToken() string`

GetBearerToken returns the BearerToken field if non-nil, zero value otherwise.

### GetBearerTokenOk

`func (o *ScimSettingsInbound) GetBearerTokenOk() (*string, bool)`

GetBearerTokenOk returns a tuple with the BearerToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerToken

`func (o *ScimSettingsInbound) SetBearerToken(v string)`

SetBearerToken sets BearerToken field to given value.

### HasBearerToken

`func (o *ScimSettingsInbound) HasBearerToken() bool`

HasBearerToken returns a boolean if a field has been set.

### SetBearerTokenNil

`func (o *ScimSettingsInbound) SetBearerTokenNil(b bool)`

 SetBearerTokenNil sets the value for BearerToken to be an explicit nil

### UnsetBearerToken
`func (o *ScimSettingsInbound) UnsetBearerToken()`

UnsetBearerToken ensures that no value is present for BearerToken, not even an explicit nil
### GetBearerTokenHash

`func (o *ScimSettingsInbound) GetBearerTokenHash() RedactedSecret`

GetBearerTokenHash returns the BearerTokenHash field if non-nil, zero value otherwise.

### GetBearerTokenHashOk

`func (o *ScimSettingsInbound) GetBearerTokenHashOk() (*RedactedSecret, bool)`

GetBearerTokenHashOk returns a tuple with the BearerTokenHash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerTokenHash

`func (o *ScimSettingsInbound) SetBearerTokenHash(v RedactedSecret)`

SetBearerTokenHash sets BearerTokenHash field to given value.

### HasBearerTokenHash

`func (o *ScimSettingsInbound) HasBearerTokenHash() bool`

HasBearerTokenHash returns a boolean if a field has been set.

### SetBearerTokenHashNil

`func (o *ScimSettingsInbound) SetBearerTokenHashNil(b bool)`

 SetBearerTokenHashNil sets the value for BearerTokenHash to be an explicit nil

### UnsetBearerTokenHash
`func (o *ScimSettingsInbound) UnsetBearerTokenHash()`

UnsetBearerTokenHash ensures that no value is present for BearerTokenHash, not even an explicit nil
### GetBearerTokenPreview

`func (o *ScimSettingsInbound) GetBearerTokenPreview() string`

GetBearerTokenPreview returns the BearerTokenPreview field if non-nil, zero value otherwise.

### GetBearerTokenPreviewOk

`func (o *ScimSettingsInbound) GetBearerTokenPreviewOk() (*string, bool)`

GetBearerTokenPreviewOk returns a tuple with the BearerTokenPreview field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerTokenPreview

`func (o *ScimSettingsInbound) SetBearerTokenPreview(v string)`

SetBearerTokenPreview sets BearerTokenPreview field to given value.

### HasBearerTokenPreview

`func (o *ScimSettingsInbound) HasBearerTokenPreview() bool`

HasBearerTokenPreview returns a boolean if a field has been set.

### SetBearerTokenPreviewNil

`func (o *ScimSettingsInbound) SetBearerTokenPreviewNil(b bool)`

 SetBearerTokenPreviewNil sets the value for BearerTokenPreview to be an explicit nil

### UnsetBearerTokenPreview
`func (o *ScimSettingsInbound) UnsetBearerTokenPreview()`

UnsetBearerTokenPreview ensures that no value is present for BearerTokenPreview, not even an explicit nil
### GetTokenCreatedAt

`func (o *ScimSettingsInbound) GetTokenCreatedAt() string`

GetTokenCreatedAt returns the TokenCreatedAt field if non-nil, zero value otherwise.

### GetTokenCreatedAtOk

`func (o *ScimSettingsInbound) GetTokenCreatedAtOk() (*string, bool)`

GetTokenCreatedAtOk returns a tuple with the TokenCreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenCreatedAt

`func (o *ScimSettingsInbound) SetTokenCreatedAt(v string)`

SetTokenCreatedAt sets TokenCreatedAt field to given value.

### HasTokenCreatedAt

`func (o *ScimSettingsInbound) HasTokenCreatedAt() bool`

HasTokenCreatedAt returns a boolean if a field has been set.

### SetTokenCreatedAtNil

`func (o *ScimSettingsInbound) SetTokenCreatedAtNil(b bool)`

 SetTokenCreatedAtNil sets the value for TokenCreatedAt to be an explicit nil

### UnsetTokenCreatedAt
`func (o *ScimSettingsInbound) UnsetTokenCreatedAt()`

UnsetTokenCreatedAt ensures that no value is present for TokenCreatedAt, not even an explicit nil
### GetAllowUserCreation

`func (o *ScimSettingsInbound) GetAllowUserCreation() bool`

GetAllowUserCreation returns the AllowUserCreation field if non-nil, zero value otherwise.

### GetAllowUserCreationOk

`func (o *ScimSettingsInbound) GetAllowUserCreationOk() (*bool, bool)`

GetAllowUserCreationOk returns a tuple with the AllowUserCreation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowUserCreation

`func (o *ScimSettingsInbound) SetAllowUserCreation(v bool)`

SetAllowUserCreation sets AllowUserCreation field to given value.

### HasAllowUserCreation

`func (o *ScimSettingsInbound) HasAllowUserCreation() bool`

HasAllowUserCreation returns a boolean if a field has been set.

### GetAllowUserUpdates

`func (o *ScimSettingsInbound) GetAllowUserUpdates() bool`

GetAllowUserUpdates returns the AllowUserUpdates field if non-nil, zero value otherwise.

### GetAllowUserUpdatesOk

`func (o *ScimSettingsInbound) GetAllowUserUpdatesOk() (*bool, bool)`

GetAllowUserUpdatesOk returns a tuple with the AllowUserUpdates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowUserUpdates

`func (o *ScimSettingsInbound) SetAllowUserUpdates(v bool)`

SetAllowUserUpdates sets AllowUserUpdates field to given value.

### HasAllowUserUpdates

`func (o *ScimSettingsInbound) HasAllowUserUpdates() bool`

HasAllowUserUpdates returns a boolean if a field has been set.

### GetAllowUserDeletion

`func (o *ScimSettingsInbound) GetAllowUserDeletion() bool`

GetAllowUserDeletion returns the AllowUserDeletion field if non-nil, zero value otherwise.

### GetAllowUserDeletionOk

`func (o *ScimSettingsInbound) GetAllowUserDeletionOk() (*bool, bool)`

GetAllowUserDeletionOk returns a tuple with the AllowUserDeletion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowUserDeletion

`func (o *ScimSettingsInbound) SetAllowUserDeletion(v bool)`

SetAllowUserDeletion sets AllowUserDeletion field to given value.

### HasAllowUserDeletion

`func (o *ScimSettingsInbound) HasAllowUserDeletion() bool`

HasAllowUserDeletion returns a boolean if a field has been set.

### GetAllowGroupOperations

`func (o *ScimSettingsInbound) GetAllowGroupOperations() bool`

GetAllowGroupOperations returns the AllowGroupOperations field if non-nil, zero value otherwise.

### GetAllowGroupOperationsOk

`func (o *ScimSettingsInbound) GetAllowGroupOperationsOk() (*bool, bool)`

GetAllowGroupOperationsOk returns a tuple with the AllowGroupOperations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowGroupOperations

`func (o *ScimSettingsInbound) SetAllowGroupOperations(v bool)`

SetAllowGroupOperations sets AllowGroupOperations field to given value.

### HasAllowGroupOperations

`func (o *ScimSettingsInbound) HasAllowGroupOperations() bool`

HasAllowGroupOperations returns a boolean if a field has been set.

### GetProtectedAttributes

`func (o *ScimSettingsInbound) GetProtectedAttributes() ScimSettingsInboundProtectedAttributes`

GetProtectedAttributes returns the ProtectedAttributes field if non-nil, zero value otherwise.

### GetProtectedAttributesOk

`func (o *ScimSettingsInbound) GetProtectedAttributesOk() (*ScimSettingsInboundProtectedAttributes, bool)`

GetProtectedAttributesOk returns a tuple with the ProtectedAttributes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtectedAttributes

`func (o *ScimSettingsInbound) SetProtectedAttributes(v ScimSettingsInboundProtectedAttributes)`

SetProtectedAttributes sets ProtectedAttributes field to given value.

### HasProtectedAttributes

`func (o *ScimSettingsInbound) HasProtectedAttributes() bool`

HasProtectedAttributes returns a boolean if a field has been set.

### GetAttributeMapping

`func (o *ScimSettingsInbound) GetAttributeMapping() map[string]string`

GetAttributeMapping returns the AttributeMapping field if non-nil, zero value otherwise.

### GetAttributeMappingOk

`func (o *ScimSettingsInbound) GetAttributeMappingOk() (*map[string]string, bool)`

GetAttributeMappingOk returns a tuple with the AttributeMapping field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeMapping

`func (o *ScimSettingsInbound) SetAttributeMapping(v map[string]string)`

SetAttributeMapping sets AttributeMapping field to given value.

### HasAttributeMapping

`func (o *ScimSettingsInbound) HasAttributeMapping() bool`

HasAttributeMapping returns a boolean if a field has been set.

### GetAutoActivateUsers

`func (o *ScimSettingsInbound) GetAutoActivateUsers() bool`

GetAutoActivateUsers returns the AutoActivateUsers field if non-nil, zero value otherwise.

### GetAutoActivateUsersOk

`func (o *ScimSettingsInbound) GetAutoActivateUsersOk() (*bool, bool)`

GetAutoActivateUsersOk returns a tuple with the AutoActivateUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAutoActivateUsers

`func (o *ScimSettingsInbound) SetAutoActivateUsers(v bool)`

SetAutoActivateUsers sets AutoActivateUsers field to given value.

### HasAutoActivateUsers

`func (o *ScimSettingsInbound) HasAutoActivateUsers() bool`

HasAutoActivateUsers returns a boolean if a field has been set.

### GetDeprovisioningAction

`func (o *ScimSettingsInbound) GetDeprovisioningAction() string`

GetDeprovisioningAction returns the DeprovisioningAction field if non-nil, zero value otherwise.

### GetDeprovisioningActionOk

`func (o *ScimSettingsInbound) GetDeprovisioningActionOk() (*string, bool)`

GetDeprovisioningActionOk returns a tuple with the DeprovisioningAction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeprovisioningAction

`func (o *ScimSettingsInbound) SetDeprovisioningAction(v string)`

SetDeprovisioningAction sets DeprovisioningAction field to given value.

### HasDeprovisioningAction

`func (o *ScimSettingsInbound) HasDeprovisioningAction() bool`

HasDeprovisioningAction returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


