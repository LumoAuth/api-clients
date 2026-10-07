# ScimSettingsOutbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**EndpointUrl** | Pointer to **NullableString** |  | [optional] 
**BearerToken** | Pointer to [**NullableRedactedSecret**](RedactedSecret.md) |  | [optional] 
**AuthType** | Pointer to **string** |  | [optional] 
**BasicUsername** | Pointer to **NullableString** |  | [optional] 
**BasicPassword** | Pointer to [**NullableRedactedSecret**](RedactedSecret.md) |  | [optional] 
**Oauth2ClientId** | Pointer to **NullableString** |  | [optional] 
**Oauth2ClientSecret** | Pointer to [**NullableRedactedSecret**](RedactedSecret.md) |  | [optional] 
**Oauth2TokenUrl** | Pointer to **NullableString** |  | [optional] 
**Oauth2Scope** | Pointer to **NullableString** |  | [optional] 
**TlsCertificate** | Pointer to **NullableString** | Optional PEM CA certificate used for TLS verification. | [optional] 
**VerifyTls** | Pointer to **bool** |  | [optional] 
**PushUserCreates** | Pointer to **bool** |  | [optional] 
**PushUserUpdates** | Pointer to **bool** |  | [optional] 
**PushUserDeletes** | Pointer to **bool** |  | [optional] 
**PushGroupChanges** | Pointer to **bool** |  | [optional] 
**SyncOnLogin** | Pointer to **bool** |  | [optional] 
**BatchSyncEnabled** | Pointer to **bool** |  | [optional] 
**BatchSyncInterval** | Pointer to **string** |  | [optional] 
**AttributeMapping** | Pointer to **map[string]string** | User field &#x3D;&gt; SCIM attribute. | [optional] 
**LastSyncAt** | Pointer to **NullableString** |  | [optional] 
**LastSyncStatus** | Pointer to **NullableString** |  | [optional] 
**LastSyncError** | Pointer to **NullableString** |  | [optional] 
**LastBatchSyncAt** | Pointer to **NullableString** |  | [optional] 
**LastBatchSyncStatus** | Pointer to **NullableString** |  | [optional] 
**LastBatchSyncError** | Pointer to **NullableString** |  | [optional] 
**LastBatchSyncCounts** | Pointer to **map[string]interface{}** | Free-form counters of the last batch reconcile. | [optional] 

## Methods

### NewScimSettingsOutbound

`func NewScimSettingsOutbound() *ScimSettingsOutbound`

NewScimSettingsOutbound instantiates a new ScimSettingsOutbound object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewScimSettingsOutboundWithDefaults

`func NewScimSettingsOutboundWithDefaults() *ScimSettingsOutbound`

NewScimSettingsOutboundWithDefaults instantiates a new ScimSettingsOutbound object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *ScimSettingsOutbound) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *ScimSettingsOutbound) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *ScimSettingsOutbound) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *ScimSettingsOutbound) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetEndpointUrl

`func (o *ScimSettingsOutbound) GetEndpointUrl() string`

GetEndpointUrl returns the EndpointUrl field if non-nil, zero value otherwise.

### GetEndpointUrlOk

`func (o *ScimSettingsOutbound) GetEndpointUrlOk() (*string, bool)`

GetEndpointUrlOk returns a tuple with the EndpointUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndpointUrl

`func (o *ScimSettingsOutbound) SetEndpointUrl(v string)`

SetEndpointUrl sets EndpointUrl field to given value.

### HasEndpointUrl

`func (o *ScimSettingsOutbound) HasEndpointUrl() bool`

HasEndpointUrl returns a boolean if a field has been set.

### SetEndpointUrlNil

`func (o *ScimSettingsOutbound) SetEndpointUrlNil(b bool)`

 SetEndpointUrlNil sets the value for EndpointUrl to be an explicit nil

### UnsetEndpointUrl
`func (o *ScimSettingsOutbound) UnsetEndpointUrl()`

UnsetEndpointUrl ensures that no value is present for EndpointUrl, not even an explicit nil
### GetBearerToken

`func (o *ScimSettingsOutbound) GetBearerToken() RedactedSecret`

GetBearerToken returns the BearerToken field if non-nil, zero value otherwise.

### GetBearerTokenOk

`func (o *ScimSettingsOutbound) GetBearerTokenOk() (*RedactedSecret, bool)`

GetBearerTokenOk returns a tuple with the BearerToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBearerToken

`func (o *ScimSettingsOutbound) SetBearerToken(v RedactedSecret)`

SetBearerToken sets BearerToken field to given value.

### HasBearerToken

`func (o *ScimSettingsOutbound) HasBearerToken() bool`

HasBearerToken returns a boolean if a field has been set.

### SetBearerTokenNil

`func (o *ScimSettingsOutbound) SetBearerTokenNil(b bool)`

 SetBearerTokenNil sets the value for BearerToken to be an explicit nil

### UnsetBearerToken
`func (o *ScimSettingsOutbound) UnsetBearerToken()`

UnsetBearerToken ensures that no value is present for BearerToken, not even an explicit nil
### GetAuthType

`func (o *ScimSettingsOutbound) GetAuthType() string`

GetAuthType returns the AuthType field if non-nil, zero value otherwise.

### GetAuthTypeOk

`func (o *ScimSettingsOutbound) GetAuthTypeOk() (*string, bool)`

GetAuthTypeOk returns a tuple with the AuthType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthType

`func (o *ScimSettingsOutbound) SetAuthType(v string)`

SetAuthType sets AuthType field to given value.

### HasAuthType

`func (o *ScimSettingsOutbound) HasAuthType() bool`

HasAuthType returns a boolean if a field has been set.

### GetBasicUsername

`func (o *ScimSettingsOutbound) GetBasicUsername() string`

GetBasicUsername returns the BasicUsername field if non-nil, zero value otherwise.

### GetBasicUsernameOk

`func (o *ScimSettingsOutbound) GetBasicUsernameOk() (*string, bool)`

GetBasicUsernameOk returns a tuple with the BasicUsername field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBasicUsername

`func (o *ScimSettingsOutbound) SetBasicUsername(v string)`

SetBasicUsername sets BasicUsername field to given value.

### HasBasicUsername

`func (o *ScimSettingsOutbound) HasBasicUsername() bool`

HasBasicUsername returns a boolean if a field has been set.

### SetBasicUsernameNil

`func (o *ScimSettingsOutbound) SetBasicUsernameNil(b bool)`

 SetBasicUsernameNil sets the value for BasicUsername to be an explicit nil

### UnsetBasicUsername
`func (o *ScimSettingsOutbound) UnsetBasicUsername()`

UnsetBasicUsername ensures that no value is present for BasicUsername, not even an explicit nil
### GetBasicPassword

`func (o *ScimSettingsOutbound) GetBasicPassword() RedactedSecret`

GetBasicPassword returns the BasicPassword field if non-nil, zero value otherwise.

### GetBasicPasswordOk

`func (o *ScimSettingsOutbound) GetBasicPasswordOk() (*RedactedSecret, bool)`

GetBasicPasswordOk returns a tuple with the BasicPassword field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBasicPassword

`func (o *ScimSettingsOutbound) SetBasicPassword(v RedactedSecret)`

SetBasicPassword sets BasicPassword field to given value.

### HasBasicPassword

`func (o *ScimSettingsOutbound) HasBasicPassword() bool`

HasBasicPassword returns a boolean if a field has been set.

### SetBasicPasswordNil

`func (o *ScimSettingsOutbound) SetBasicPasswordNil(b bool)`

 SetBasicPasswordNil sets the value for BasicPassword to be an explicit nil

### UnsetBasicPassword
`func (o *ScimSettingsOutbound) UnsetBasicPassword()`

UnsetBasicPassword ensures that no value is present for BasicPassword, not even an explicit nil
### GetOauth2ClientId

`func (o *ScimSettingsOutbound) GetOauth2ClientId() string`

GetOauth2ClientId returns the Oauth2ClientId field if non-nil, zero value otherwise.

### GetOauth2ClientIdOk

`func (o *ScimSettingsOutbound) GetOauth2ClientIdOk() (*string, bool)`

GetOauth2ClientIdOk returns a tuple with the Oauth2ClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauth2ClientId

`func (o *ScimSettingsOutbound) SetOauth2ClientId(v string)`

SetOauth2ClientId sets Oauth2ClientId field to given value.

### HasOauth2ClientId

`func (o *ScimSettingsOutbound) HasOauth2ClientId() bool`

HasOauth2ClientId returns a boolean if a field has been set.

### SetOauth2ClientIdNil

`func (o *ScimSettingsOutbound) SetOauth2ClientIdNil(b bool)`

 SetOauth2ClientIdNil sets the value for Oauth2ClientId to be an explicit nil

### UnsetOauth2ClientId
`func (o *ScimSettingsOutbound) UnsetOauth2ClientId()`

UnsetOauth2ClientId ensures that no value is present for Oauth2ClientId, not even an explicit nil
### GetOauth2ClientSecret

`func (o *ScimSettingsOutbound) GetOauth2ClientSecret() RedactedSecret`

GetOauth2ClientSecret returns the Oauth2ClientSecret field if non-nil, zero value otherwise.

### GetOauth2ClientSecretOk

`func (o *ScimSettingsOutbound) GetOauth2ClientSecretOk() (*RedactedSecret, bool)`

GetOauth2ClientSecretOk returns a tuple with the Oauth2ClientSecret field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauth2ClientSecret

`func (o *ScimSettingsOutbound) SetOauth2ClientSecret(v RedactedSecret)`

SetOauth2ClientSecret sets Oauth2ClientSecret field to given value.

### HasOauth2ClientSecret

`func (o *ScimSettingsOutbound) HasOauth2ClientSecret() bool`

HasOauth2ClientSecret returns a boolean if a field has been set.

### SetOauth2ClientSecretNil

`func (o *ScimSettingsOutbound) SetOauth2ClientSecretNil(b bool)`

 SetOauth2ClientSecretNil sets the value for Oauth2ClientSecret to be an explicit nil

### UnsetOauth2ClientSecret
`func (o *ScimSettingsOutbound) UnsetOauth2ClientSecret()`

UnsetOauth2ClientSecret ensures that no value is present for Oauth2ClientSecret, not even an explicit nil
### GetOauth2TokenUrl

`func (o *ScimSettingsOutbound) GetOauth2TokenUrl() string`

GetOauth2TokenUrl returns the Oauth2TokenUrl field if non-nil, zero value otherwise.

### GetOauth2TokenUrlOk

`func (o *ScimSettingsOutbound) GetOauth2TokenUrlOk() (*string, bool)`

GetOauth2TokenUrlOk returns a tuple with the Oauth2TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauth2TokenUrl

`func (o *ScimSettingsOutbound) SetOauth2TokenUrl(v string)`

SetOauth2TokenUrl sets Oauth2TokenUrl field to given value.

### HasOauth2TokenUrl

`func (o *ScimSettingsOutbound) HasOauth2TokenUrl() bool`

HasOauth2TokenUrl returns a boolean if a field has been set.

### SetOauth2TokenUrlNil

`func (o *ScimSettingsOutbound) SetOauth2TokenUrlNil(b bool)`

 SetOauth2TokenUrlNil sets the value for Oauth2TokenUrl to be an explicit nil

### UnsetOauth2TokenUrl
`func (o *ScimSettingsOutbound) UnsetOauth2TokenUrl()`

UnsetOauth2TokenUrl ensures that no value is present for Oauth2TokenUrl, not even an explicit nil
### GetOauth2Scope

`func (o *ScimSettingsOutbound) GetOauth2Scope() string`

GetOauth2Scope returns the Oauth2Scope field if non-nil, zero value otherwise.

### GetOauth2ScopeOk

`func (o *ScimSettingsOutbound) GetOauth2ScopeOk() (*string, bool)`

GetOauth2ScopeOk returns a tuple with the Oauth2Scope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauth2Scope

`func (o *ScimSettingsOutbound) SetOauth2Scope(v string)`

SetOauth2Scope sets Oauth2Scope field to given value.

### HasOauth2Scope

`func (o *ScimSettingsOutbound) HasOauth2Scope() bool`

HasOauth2Scope returns a boolean if a field has been set.

### SetOauth2ScopeNil

`func (o *ScimSettingsOutbound) SetOauth2ScopeNil(b bool)`

 SetOauth2ScopeNil sets the value for Oauth2Scope to be an explicit nil

### UnsetOauth2Scope
`func (o *ScimSettingsOutbound) UnsetOauth2Scope()`

UnsetOauth2Scope ensures that no value is present for Oauth2Scope, not even an explicit nil
### GetTlsCertificate

`func (o *ScimSettingsOutbound) GetTlsCertificate() string`

GetTlsCertificate returns the TlsCertificate field if non-nil, zero value otherwise.

### GetTlsCertificateOk

`func (o *ScimSettingsOutbound) GetTlsCertificateOk() (*string, bool)`

GetTlsCertificateOk returns a tuple with the TlsCertificate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTlsCertificate

`func (o *ScimSettingsOutbound) SetTlsCertificate(v string)`

SetTlsCertificate sets TlsCertificate field to given value.

### HasTlsCertificate

`func (o *ScimSettingsOutbound) HasTlsCertificate() bool`

HasTlsCertificate returns a boolean if a field has been set.

### SetTlsCertificateNil

`func (o *ScimSettingsOutbound) SetTlsCertificateNil(b bool)`

 SetTlsCertificateNil sets the value for TlsCertificate to be an explicit nil

### UnsetTlsCertificate
`func (o *ScimSettingsOutbound) UnsetTlsCertificate()`

UnsetTlsCertificate ensures that no value is present for TlsCertificate, not even an explicit nil
### GetVerifyTls

`func (o *ScimSettingsOutbound) GetVerifyTls() bool`

GetVerifyTls returns the VerifyTls field if non-nil, zero value otherwise.

### GetVerifyTlsOk

`func (o *ScimSettingsOutbound) GetVerifyTlsOk() (*bool, bool)`

GetVerifyTlsOk returns a tuple with the VerifyTls field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerifyTls

`func (o *ScimSettingsOutbound) SetVerifyTls(v bool)`

SetVerifyTls sets VerifyTls field to given value.

### HasVerifyTls

`func (o *ScimSettingsOutbound) HasVerifyTls() bool`

HasVerifyTls returns a boolean if a field has been set.

### GetPushUserCreates

`func (o *ScimSettingsOutbound) GetPushUserCreates() bool`

GetPushUserCreates returns the PushUserCreates field if non-nil, zero value otherwise.

### GetPushUserCreatesOk

`func (o *ScimSettingsOutbound) GetPushUserCreatesOk() (*bool, bool)`

GetPushUserCreatesOk returns a tuple with the PushUserCreates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushUserCreates

`func (o *ScimSettingsOutbound) SetPushUserCreates(v bool)`

SetPushUserCreates sets PushUserCreates field to given value.

### HasPushUserCreates

`func (o *ScimSettingsOutbound) HasPushUserCreates() bool`

HasPushUserCreates returns a boolean if a field has been set.

### GetPushUserUpdates

`func (o *ScimSettingsOutbound) GetPushUserUpdates() bool`

GetPushUserUpdates returns the PushUserUpdates field if non-nil, zero value otherwise.

### GetPushUserUpdatesOk

`func (o *ScimSettingsOutbound) GetPushUserUpdatesOk() (*bool, bool)`

GetPushUserUpdatesOk returns a tuple with the PushUserUpdates field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushUserUpdates

`func (o *ScimSettingsOutbound) SetPushUserUpdates(v bool)`

SetPushUserUpdates sets PushUserUpdates field to given value.

### HasPushUserUpdates

`func (o *ScimSettingsOutbound) HasPushUserUpdates() bool`

HasPushUserUpdates returns a boolean if a field has been set.

### GetPushUserDeletes

`func (o *ScimSettingsOutbound) GetPushUserDeletes() bool`

GetPushUserDeletes returns the PushUserDeletes field if non-nil, zero value otherwise.

### GetPushUserDeletesOk

`func (o *ScimSettingsOutbound) GetPushUserDeletesOk() (*bool, bool)`

GetPushUserDeletesOk returns a tuple with the PushUserDeletes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushUserDeletes

`func (o *ScimSettingsOutbound) SetPushUserDeletes(v bool)`

SetPushUserDeletes sets PushUserDeletes field to given value.

### HasPushUserDeletes

`func (o *ScimSettingsOutbound) HasPushUserDeletes() bool`

HasPushUserDeletes returns a boolean if a field has been set.

### GetPushGroupChanges

`func (o *ScimSettingsOutbound) GetPushGroupChanges() bool`

GetPushGroupChanges returns the PushGroupChanges field if non-nil, zero value otherwise.

### GetPushGroupChangesOk

`func (o *ScimSettingsOutbound) GetPushGroupChangesOk() (*bool, bool)`

GetPushGroupChangesOk returns a tuple with the PushGroupChanges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushGroupChanges

`func (o *ScimSettingsOutbound) SetPushGroupChanges(v bool)`

SetPushGroupChanges sets PushGroupChanges field to given value.

### HasPushGroupChanges

`func (o *ScimSettingsOutbound) HasPushGroupChanges() bool`

HasPushGroupChanges returns a boolean if a field has been set.

### GetSyncOnLogin

`func (o *ScimSettingsOutbound) GetSyncOnLogin() bool`

GetSyncOnLogin returns the SyncOnLogin field if non-nil, zero value otherwise.

### GetSyncOnLoginOk

`func (o *ScimSettingsOutbound) GetSyncOnLoginOk() (*bool, bool)`

GetSyncOnLoginOk returns a tuple with the SyncOnLogin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncOnLogin

`func (o *ScimSettingsOutbound) SetSyncOnLogin(v bool)`

SetSyncOnLogin sets SyncOnLogin field to given value.

### HasSyncOnLogin

`func (o *ScimSettingsOutbound) HasSyncOnLogin() bool`

HasSyncOnLogin returns a boolean if a field has been set.

### GetBatchSyncEnabled

`func (o *ScimSettingsOutbound) GetBatchSyncEnabled() bool`

GetBatchSyncEnabled returns the BatchSyncEnabled field if non-nil, zero value otherwise.

### GetBatchSyncEnabledOk

`func (o *ScimSettingsOutbound) GetBatchSyncEnabledOk() (*bool, bool)`

GetBatchSyncEnabledOk returns a tuple with the BatchSyncEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBatchSyncEnabled

`func (o *ScimSettingsOutbound) SetBatchSyncEnabled(v bool)`

SetBatchSyncEnabled sets BatchSyncEnabled field to given value.

### HasBatchSyncEnabled

`func (o *ScimSettingsOutbound) HasBatchSyncEnabled() bool`

HasBatchSyncEnabled returns a boolean if a field has been set.

### GetBatchSyncInterval

`func (o *ScimSettingsOutbound) GetBatchSyncInterval() string`

GetBatchSyncInterval returns the BatchSyncInterval field if non-nil, zero value otherwise.

### GetBatchSyncIntervalOk

`func (o *ScimSettingsOutbound) GetBatchSyncIntervalOk() (*string, bool)`

GetBatchSyncIntervalOk returns a tuple with the BatchSyncInterval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBatchSyncInterval

`func (o *ScimSettingsOutbound) SetBatchSyncInterval(v string)`

SetBatchSyncInterval sets BatchSyncInterval field to given value.

### HasBatchSyncInterval

`func (o *ScimSettingsOutbound) HasBatchSyncInterval() bool`

HasBatchSyncInterval returns a boolean if a field has been set.

### GetAttributeMapping

`func (o *ScimSettingsOutbound) GetAttributeMapping() map[string]string`

GetAttributeMapping returns the AttributeMapping field if non-nil, zero value otherwise.

### GetAttributeMappingOk

`func (o *ScimSettingsOutbound) GetAttributeMappingOk() (*map[string]string, bool)`

GetAttributeMappingOk returns a tuple with the AttributeMapping field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeMapping

`func (o *ScimSettingsOutbound) SetAttributeMapping(v map[string]string)`

SetAttributeMapping sets AttributeMapping field to given value.

### HasAttributeMapping

`func (o *ScimSettingsOutbound) HasAttributeMapping() bool`

HasAttributeMapping returns a boolean if a field has been set.

### GetLastSyncAt

`func (o *ScimSettingsOutbound) GetLastSyncAt() string`

GetLastSyncAt returns the LastSyncAt field if non-nil, zero value otherwise.

### GetLastSyncAtOk

`func (o *ScimSettingsOutbound) GetLastSyncAtOk() (*string, bool)`

GetLastSyncAtOk returns a tuple with the LastSyncAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSyncAt

`func (o *ScimSettingsOutbound) SetLastSyncAt(v string)`

SetLastSyncAt sets LastSyncAt field to given value.

### HasLastSyncAt

`func (o *ScimSettingsOutbound) HasLastSyncAt() bool`

HasLastSyncAt returns a boolean if a field has been set.

### SetLastSyncAtNil

`func (o *ScimSettingsOutbound) SetLastSyncAtNil(b bool)`

 SetLastSyncAtNil sets the value for LastSyncAt to be an explicit nil

### UnsetLastSyncAt
`func (o *ScimSettingsOutbound) UnsetLastSyncAt()`

UnsetLastSyncAt ensures that no value is present for LastSyncAt, not even an explicit nil
### GetLastSyncStatus

`func (o *ScimSettingsOutbound) GetLastSyncStatus() string`

GetLastSyncStatus returns the LastSyncStatus field if non-nil, zero value otherwise.

### GetLastSyncStatusOk

`func (o *ScimSettingsOutbound) GetLastSyncStatusOk() (*string, bool)`

GetLastSyncStatusOk returns a tuple with the LastSyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSyncStatus

`func (o *ScimSettingsOutbound) SetLastSyncStatus(v string)`

SetLastSyncStatus sets LastSyncStatus field to given value.

### HasLastSyncStatus

`func (o *ScimSettingsOutbound) HasLastSyncStatus() bool`

HasLastSyncStatus returns a boolean if a field has been set.

### SetLastSyncStatusNil

`func (o *ScimSettingsOutbound) SetLastSyncStatusNil(b bool)`

 SetLastSyncStatusNil sets the value for LastSyncStatus to be an explicit nil

### UnsetLastSyncStatus
`func (o *ScimSettingsOutbound) UnsetLastSyncStatus()`

UnsetLastSyncStatus ensures that no value is present for LastSyncStatus, not even an explicit nil
### GetLastSyncError

`func (o *ScimSettingsOutbound) GetLastSyncError() string`

GetLastSyncError returns the LastSyncError field if non-nil, zero value otherwise.

### GetLastSyncErrorOk

`func (o *ScimSettingsOutbound) GetLastSyncErrorOk() (*string, bool)`

GetLastSyncErrorOk returns a tuple with the LastSyncError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSyncError

`func (o *ScimSettingsOutbound) SetLastSyncError(v string)`

SetLastSyncError sets LastSyncError field to given value.

### HasLastSyncError

`func (o *ScimSettingsOutbound) HasLastSyncError() bool`

HasLastSyncError returns a boolean if a field has been set.

### SetLastSyncErrorNil

`func (o *ScimSettingsOutbound) SetLastSyncErrorNil(b bool)`

 SetLastSyncErrorNil sets the value for LastSyncError to be an explicit nil

### UnsetLastSyncError
`func (o *ScimSettingsOutbound) UnsetLastSyncError()`

UnsetLastSyncError ensures that no value is present for LastSyncError, not even an explicit nil
### GetLastBatchSyncAt

`func (o *ScimSettingsOutbound) GetLastBatchSyncAt() string`

GetLastBatchSyncAt returns the LastBatchSyncAt field if non-nil, zero value otherwise.

### GetLastBatchSyncAtOk

`func (o *ScimSettingsOutbound) GetLastBatchSyncAtOk() (*string, bool)`

GetLastBatchSyncAtOk returns a tuple with the LastBatchSyncAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastBatchSyncAt

`func (o *ScimSettingsOutbound) SetLastBatchSyncAt(v string)`

SetLastBatchSyncAt sets LastBatchSyncAt field to given value.

### HasLastBatchSyncAt

`func (o *ScimSettingsOutbound) HasLastBatchSyncAt() bool`

HasLastBatchSyncAt returns a boolean if a field has been set.

### SetLastBatchSyncAtNil

`func (o *ScimSettingsOutbound) SetLastBatchSyncAtNil(b bool)`

 SetLastBatchSyncAtNil sets the value for LastBatchSyncAt to be an explicit nil

### UnsetLastBatchSyncAt
`func (o *ScimSettingsOutbound) UnsetLastBatchSyncAt()`

UnsetLastBatchSyncAt ensures that no value is present for LastBatchSyncAt, not even an explicit nil
### GetLastBatchSyncStatus

`func (o *ScimSettingsOutbound) GetLastBatchSyncStatus() string`

GetLastBatchSyncStatus returns the LastBatchSyncStatus field if non-nil, zero value otherwise.

### GetLastBatchSyncStatusOk

`func (o *ScimSettingsOutbound) GetLastBatchSyncStatusOk() (*string, bool)`

GetLastBatchSyncStatusOk returns a tuple with the LastBatchSyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastBatchSyncStatus

`func (o *ScimSettingsOutbound) SetLastBatchSyncStatus(v string)`

SetLastBatchSyncStatus sets LastBatchSyncStatus field to given value.

### HasLastBatchSyncStatus

`func (o *ScimSettingsOutbound) HasLastBatchSyncStatus() bool`

HasLastBatchSyncStatus returns a boolean if a field has been set.

### SetLastBatchSyncStatusNil

`func (o *ScimSettingsOutbound) SetLastBatchSyncStatusNil(b bool)`

 SetLastBatchSyncStatusNil sets the value for LastBatchSyncStatus to be an explicit nil

### UnsetLastBatchSyncStatus
`func (o *ScimSettingsOutbound) UnsetLastBatchSyncStatus()`

UnsetLastBatchSyncStatus ensures that no value is present for LastBatchSyncStatus, not even an explicit nil
### GetLastBatchSyncError

`func (o *ScimSettingsOutbound) GetLastBatchSyncError() string`

GetLastBatchSyncError returns the LastBatchSyncError field if non-nil, zero value otherwise.

### GetLastBatchSyncErrorOk

`func (o *ScimSettingsOutbound) GetLastBatchSyncErrorOk() (*string, bool)`

GetLastBatchSyncErrorOk returns a tuple with the LastBatchSyncError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastBatchSyncError

`func (o *ScimSettingsOutbound) SetLastBatchSyncError(v string)`

SetLastBatchSyncError sets LastBatchSyncError field to given value.

### HasLastBatchSyncError

`func (o *ScimSettingsOutbound) HasLastBatchSyncError() bool`

HasLastBatchSyncError returns a boolean if a field has been set.

### SetLastBatchSyncErrorNil

`func (o *ScimSettingsOutbound) SetLastBatchSyncErrorNil(b bool)`

 SetLastBatchSyncErrorNil sets the value for LastBatchSyncError to be an explicit nil

### UnsetLastBatchSyncError
`func (o *ScimSettingsOutbound) UnsetLastBatchSyncError()`

UnsetLastBatchSyncError ensures that no value is present for LastBatchSyncError, not even an explicit nil
### GetLastBatchSyncCounts

`func (o *ScimSettingsOutbound) GetLastBatchSyncCounts() map[string]interface{}`

GetLastBatchSyncCounts returns the LastBatchSyncCounts field if non-nil, zero value otherwise.

### GetLastBatchSyncCountsOk

`func (o *ScimSettingsOutbound) GetLastBatchSyncCountsOk() (*map[string]interface{}, bool)`

GetLastBatchSyncCountsOk returns a tuple with the LastBatchSyncCounts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastBatchSyncCounts

`func (o *ScimSettingsOutbound) SetLastBatchSyncCounts(v map[string]interface{})`

SetLastBatchSyncCounts sets LastBatchSyncCounts field to given value.

### HasLastBatchSyncCounts

`func (o *ScimSettingsOutbound) HasLastBatchSyncCounts() bool`

HasLastBatchSyncCounts returns a boolean if a field has been set.

### SetLastBatchSyncCountsNil

`func (o *ScimSettingsOutbound) SetLastBatchSyncCountsNil(b bool)`

 SetLastBatchSyncCountsNil sets the value for LastBatchSyncCounts to be an explicit nil

### UnsetLastBatchSyncCounts
`func (o *ScimSettingsOutbound) UnsetLastBatchSyncCounts()`

UnsetLastBatchSyncCounts ensures that no value is present for LastBatchSyncCounts, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


