# AdminPoppyGetResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Settings** | Pointer to **map[string]interface{}** | The settings document: enabled, issuer, organization, domains, sign_in, scopes, resources, apis, agent, web, tasks, extensions, sessions. | [optional] 
**Active** | Pointer to **bool** | The protocol is switched on, in the plan, and the organization is active. | [optional] 
**InPlan** | Pointer to **bool** |  | [optional] 
**Identifier** | Pointer to **string** | The Company identifier: the issuer that Session JWTs name as aud. | [optional] 
**IssuerChoices** | Pointer to [**[]AdminPoppyGetResponseDataIssuerChoicesItem**](AdminPoppyGetResponseDataIssuerChoicesItem.md) |  | [optional] 
**OfferedScopes** | Pointer to **[]string** |  | [optional] 
**OfferedResources** | Pointer to **[]string** |  | [optional] 
**TasksEndpoint** | Pointer to **NullableString** |  | [optional] 
**FeedbackEndpoint** | Pointer to **NullableString** |  | [optional] 
**Documents** | Pointer to [**[]AdminPoppyGetResponseDataDocumentsItem**](AdminPoppyGetResponseDataDocumentsItem.md) |  | [optional] 

## Methods

### NewAdminPoppyGetResponseData

`func NewAdminPoppyGetResponseData() *AdminPoppyGetResponseData`

NewAdminPoppyGetResponseData instantiates a new AdminPoppyGetResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPoppyGetResponseDataWithDefaults

`func NewAdminPoppyGetResponseDataWithDefaults() *AdminPoppyGetResponseData`

NewAdminPoppyGetResponseDataWithDefaults instantiates a new AdminPoppyGetResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSettings

`func (o *AdminPoppyGetResponseData) GetSettings() map[string]interface{}`

GetSettings returns the Settings field if non-nil, zero value otherwise.

### GetSettingsOk

`func (o *AdminPoppyGetResponseData) GetSettingsOk() (*map[string]interface{}, bool)`

GetSettingsOk returns a tuple with the Settings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSettings

`func (o *AdminPoppyGetResponseData) SetSettings(v map[string]interface{})`

SetSettings sets Settings field to given value.

### HasSettings

`func (o *AdminPoppyGetResponseData) HasSettings() bool`

HasSettings returns a boolean if a field has been set.

### GetActive

`func (o *AdminPoppyGetResponseData) GetActive() bool`

GetActive returns the Active field if non-nil, zero value otherwise.

### GetActiveOk

`func (o *AdminPoppyGetResponseData) GetActiveOk() (*bool, bool)`

GetActiveOk returns a tuple with the Active field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActive

`func (o *AdminPoppyGetResponseData) SetActive(v bool)`

SetActive sets Active field to given value.

### HasActive

`func (o *AdminPoppyGetResponseData) HasActive() bool`

HasActive returns a boolean if a field has been set.

### GetInPlan

`func (o *AdminPoppyGetResponseData) GetInPlan() bool`

GetInPlan returns the InPlan field if non-nil, zero value otherwise.

### GetInPlanOk

`func (o *AdminPoppyGetResponseData) GetInPlanOk() (*bool, bool)`

GetInPlanOk returns a tuple with the InPlan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInPlan

`func (o *AdminPoppyGetResponseData) SetInPlan(v bool)`

SetInPlan sets InPlan field to given value.

### HasInPlan

`func (o *AdminPoppyGetResponseData) HasInPlan() bool`

HasInPlan returns a boolean if a field has been set.

### GetIdentifier

`func (o *AdminPoppyGetResponseData) GetIdentifier() string`

GetIdentifier returns the Identifier field if non-nil, zero value otherwise.

### GetIdentifierOk

`func (o *AdminPoppyGetResponseData) GetIdentifierOk() (*string, bool)`

GetIdentifierOk returns a tuple with the Identifier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentifier

`func (o *AdminPoppyGetResponseData) SetIdentifier(v string)`

SetIdentifier sets Identifier field to given value.

### HasIdentifier

`func (o *AdminPoppyGetResponseData) HasIdentifier() bool`

HasIdentifier returns a boolean if a field has been set.

### GetIssuerChoices

`func (o *AdminPoppyGetResponseData) GetIssuerChoices() []AdminPoppyGetResponseDataIssuerChoicesItem`

GetIssuerChoices returns the IssuerChoices field if non-nil, zero value otherwise.

### GetIssuerChoicesOk

`func (o *AdminPoppyGetResponseData) GetIssuerChoicesOk() (*[]AdminPoppyGetResponseDataIssuerChoicesItem, bool)`

GetIssuerChoicesOk returns a tuple with the IssuerChoices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuerChoices

`func (o *AdminPoppyGetResponseData) SetIssuerChoices(v []AdminPoppyGetResponseDataIssuerChoicesItem)`

SetIssuerChoices sets IssuerChoices field to given value.

### HasIssuerChoices

`func (o *AdminPoppyGetResponseData) HasIssuerChoices() bool`

HasIssuerChoices returns a boolean if a field has been set.

### GetOfferedScopes

`func (o *AdminPoppyGetResponseData) GetOfferedScopes() []string`

GetOfferedScopes returns the OfferedScopes field if non-nil, zero value otherwise.

### GetOfferedScopesOk

`func (o *AdminPoppyGetResponseData) GetOfferedScopesOk() (*[]string, bool)`

GetOfferedScopesOk returns a tuple with the OfferedScopes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfferedScopes

`func (o *AdminPoppyGetResponseData) SetOfferedScopes(v []string)`

SetOfferedScopes sets OfferedScopes field to given value.

### HasOfferedScopes

`func (o *AdminPoppyGetResponseData) HasOfferedScopes() bool`

HasOfferedScopes returns a boolean if a field has been set.

### GetOfferedResources

`func (o *AdminPoppyGetResponseData) GetOfferedResources() []string`

GetOfferedResources returns the OfferedResources field if non-nil, zero value otherwise.

### GetOfferedResourcesOk

`func (o *AdminPoppyGetResponseData) GetOfferedResourcesOk() (*[]string, bool)`

GetOfferedResourcesOk returns a tuple with the OfferedResources field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfferedResources

`func (o *AdminPoppyGetResponseData) SetOfferedResources(v []string)`

SetOfferedResources sets OfferedResources field to given value.

### HasOfferedResources

`func (o *AdminPoppyGetResponseData) HasOfferedResources() bool`

HasOfferedResources returns a boolean if a field has been set.

### GetTasksEndpoint

`func (o *AdminPoppyGetResponseData) GetTasksEndpoint() string`

GetTasksEndpoint returns the TasksEndpoint field if non-nil, zero value otherwise.

### GetTasksEndpointOk

`func (o *AdminPoppyGetResponseData) GetTasksEndpointOk() (*string, bool)`

GetTasksEndpointOk returns a tuple with the TasksEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTasksEndpoint

`func (o *AdminPoppyGetResponseData) SetTasksEndpoint(v string)`

SetTasksEndpoint sets TasksEndpoint field to given value.

### HasTasksEndpoint

`func (o *AdminPoppyGetResponseData) HasTasksEndpoint() bool`

HasTasksEndpoint returns a boolean if a field has been set.

### SetTasksEndpointNil

`func (o *AdminPoppyGetResponseData) SetTasksEndpointNil(b bool)`

 SetTasksEndpointNil sets the value for TasksEndpoint to be an explicit nil

### UnsetTasksEndpoint
`func (o *AdminPoppyGetResponseData) UnsetTasksEndpoint()`

UnsetTasksEndpoint ensures that no value is present for TasksEndpoint, not even an explicit nil
### GetFeedbackEndpoint

`func (o *AdminPoppyGetResponseData) GetFeedbackEndpoint() string`

GetFeedbackEndpoint returns the FeedbackEndpoint field if non-nil, zero value otherwise.

### GetFeedbackEndpointOk

`func (o *AdminPoppyGetResponseData) GetFeedbackEndpointOk() (*string, bool)`

GetFeedbackEndpointOk returns a tuple with the FeedbackEndpoint field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeedbackEndpoint

`func (o *AdminPoppyGetResponseData) SetFeedbackEndpoint(v string)`

SetFeedbackEndpoint sets FeedbackEndpoint field to given value.

### HasFeedbackEndpoint

`func (o *AdminPoppyGetResponseData) HasFeedbackEndpoint() bool`

HasFeedbackEndpoint returns a boolean if a field has been set.

### SetFeedbackEndpointNil

`func (o *AdminPoppyGetResponseData) SetFeedbackEndpointNil(b bool)`

 SetFeedbackEndpointNil sets the value for FeedbackEndpoint to be an explicit nil

### UnsetFeedbackEndpoint
`func (o *AdminPoppyGetResponseData) UnsetFeedbackEndpoint()`

UnsetFeedbackEndpoint ensures that no value is present for FeedbackEndpoint, not even an explicit nil
### GetDocuments

`func (o *AdminPoppyGetResponseData) GetDocuments() []AdminPoppyGetResponseDataDocumentsItem`

GetDocuments returns the Documents field if non-nil, zero value otherwise.

### GetDocumentsOk

`func (o *AdminPoppyGetResponseData) GetDocumentsOk() (*[]AdminPoppyGetResponseDataDocumentsItem, bool)`

GetDocumentsOk returns a tuple with the Documents field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDocuments

`func (o *AdminPoppyGetResponseData) SetDocuments(v []AdminPoppyGetResponseDataDocumentsItem)`

SetDocuments sets Documents field to given value.

### HasDocuments

`func (o *AdminPoppyGetResponseData) HasDocuments() bool`

HasDocuments returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


