# AdminAuditLogsGetResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**AuditLogEntry**](AuditLogEntry.md) |  | [optional] 

## Methods

### NewAdminAuditLogsGetResponse

`func NewAdminAuditLogsGetResponse() *AdminAuditLogsGetResponse`

NewAdminAuditLogsGetResponse instantiates a new AdminAuditLogsGetResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuditLogsGetResponseWithDefaults

`func NewAdminAuditLogsGetResponseWithDefaults() *AdminAuditLogsGetResponse`

NewAdminAuditLogsGetResponseWithDefaults instantiates a new AdminAuditLogsGetResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminAuditLogsGetResponse) GetData() AuditLogEntry`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminAuditLogsGetResponse) GetDataOk() (*AuditLogEntry, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminAuditLogsGetResponse) SetData(v AuditLogEntry)`

SetData sets Data field to given value.

### HasData

`func (o *AdminAuditLogsGetResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


