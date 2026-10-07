# AdminAnalyticsDashboardResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | Pointer to [**AdminAnalyticsDashboardResponseDataUsers**](AdminAnalyticsDashboardResponseDataUsers.md) |  | [optional] 
**Clients** | Pointer to [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**Authentication** | Pointer to [**AdminAnalyticsDashboardResponseDataAuthentication**](AdminAnalyticsDashboardResponseDataAuthentication.md) |  | [optional] 
**Audit** | Pointer to [**AdminAnalyticsDashboardResponseDataAudit**](AdminAnalyticsDashboardResponseDataAudit.md) |  | [optional] 
**GeneratedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewAdminAnalyticsDashboardResponseData

`func NewAdminAnalyticsDashboardResponseData() *AdminAnalyticsDashboardResponseData`

NewAdminAnalyticsDashboardResponseData instantiates a new AdminAnalyticsDashboardResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAnalyticsDashboardResponseDataWithDefaults

`func NewAdminAnalyticsDashboardResponseDataWithDefaults() *AdminAnalyticsDashboardResponseData`

NewAdminAnalyticsDashboardResponseDataWithDefaults instantiates a new AdminAnalyticsDashboardResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUsers

`func (o *AdminAnalyticsDashboardResponseData) GetUsers() AdminAnalyticsDashboardResponseDataUsers`

GetUsers returns the Users field if non-nil, zero value otherwise.

### GetUsersOk

`func (o *AdminAnalyticsDashboardResponseData) GetUsersOk() (*AdminAnalyticsDashboardResponseDataUsers, bool)`

GetUsersOk returns a tuple with the Users field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsers

`func (o *AdminAnalyticsDashboardResponseData) SetUsers(v AdminAnalyticsDashboardResponseDataUsers)`

SetUsers sets Users field to given value.

### HasUsers

`func (o *AdminAnalyticsDashboardResponseData) HasUsers() bool`

HasUsers returns a boolean if a field has been set.

### GetClients

`func (o *AdminAnalyticsDashboardResponseData) GetClients() AdminScopesListResponseMeta`

GetClients returns the Clients field if non-nil, zero value otherwise.

### GetClientsOk

`func (o *AdminAnalyticsDashboardResponseData) GetClientsOk() (*AdminScopesListResponseMeta, bool)`

GetClientsOk returns a tuple with the Clients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClients

`func (o *AdminAnalyticsDashboardResponseData) SetClients(v AdminScopesListResponseMeta)`

SetClients sets Clients field to given value.

### HasClients

`func (o *AdminAnalyticsDashboardResponseData) HasClients() bool`

HasClients returns a boolean if a field has been set.

### GetAuthentication

`func (o *AdminAnalyticsDashboardResponseData) GetAuthentication() AdminAnalyticsDashboardResponseDataAuthentication`

GetAuthentication returns the Authentication field if non-nil, zero value otherwise.

### GetAuthenticationOk

`func (o *AdminAnalyticsDashboardResponseData) GetAuthenticationOk() (*AdminAnalyticsDashboardResponseDataAuthentication, bool)`

GetAuthenticationOk returns a tuple with the Authentication field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthentication

`func (o *AdminAnalyticsDashboardResponseData) SetAuthentication(v AdminAnalyticsDashboardResponseDataAuthentication)`

SetAuthentication sets Authentication field to given value.

### HasAuthentication

`func (o *AdminAnalyticsDashboardResponseData) HasAuthentication() bool`

HasAuthentication returns a boolean if a field has been set.

### GetAudit

`func (o *AdminAnalyticsDashboardResponseData) GetAudit() AdminAnalyticsDashboardResponseDataAudit`

GetAudit returns the Audit field if non-nil, zero value otherwise.

### GetAuditOk

`func (o *AdminAnalyticsDashboardResponseData) GetAuditOk() (*AdminAnalyticsDashboardResponseDataAudit, bool)`

GetAuditOk returns a tuple with the Audit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudit

`func (o *AdminAnalyticsDashboardResponseData) SetAudit(v AdminAnalyticsDashboardResponseDataAudit)`

SetAudit sets Audit field to given value.

### HasAudit

`func (o *AdminAnalyticsDashboardResponseData) HasAudit() bool`

HasAudit returns a boolean if a field has been set.

### GetGeneratedAt

`func (o *AdminAnalyticsDashboardResponseData) GetGeneratedAt() time.Time`

GetGeneratedAt returns the GeneratedAt field if non-nil, zero value otherwise.

### GetGeneratedAtOk

`func (o *AdminAnalyticsDashboardResponseData) GetGeneratedAtOk() (*time.Time, bool)`

GetGeneratedAtOk returns a tuple with the GeneratedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedAt

`func (o *AdminAnalyticsDashboardResponseData) SetGeneratedAt(v time.Time)`

SetGeneratedAt sets GeneratedAt field to given value.

### HasGeneratedAt

`func (o *AdminAnalyticsDashboardResponseData) HasGeneratedAt() bool`

HasGeneratedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


