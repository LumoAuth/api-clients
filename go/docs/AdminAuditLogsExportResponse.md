# AdminAuditLogsExportResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]AuditLogEntry**](AuditLogEntry.md) | Detailed entries | [optional] 
**Meta** | Pointer to [**AdminAuditLogsExportResponseMeta**](AdminAuditLogsExportResponseMeta.md) |  | [optional] 

## Methods

### NewAdminAuditLogsExportResponse

`func NewAdminAuditLogsExportResponse() *AdminAuditLogsExportResponse`

NewAdminAuditLogsExportResponse instantiates a new AdminAuditLogsExportResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuditLogsExportResponseWithDefaults

`func NewAdminAuditLogsExportResponseWithDefaults() *AdminAuditLogsExportResponse`

NewAdminAuditLogsExportResponseWithDefaults instantiates a new AdminAuditLogsExportResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminAuditLogsExportResponse) GetData() []AuditLogEntry`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminAuditLogsExportResponse) GetDataOk() (*[]AuditLogEntry, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminAuditLogsExportResponse) SetData(v []AuditLogEntry)`

SetData sets Data field to given value.

### HasData

`func (o *AdminAuditLogsExportResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMeta

`func (o *AdminAuditLogsExportResponse) GetMeta() AdminAuditLogsExportResponseMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *AdminAuditLogsExportResponse) GetMetaOk() (*AdminAuditLogsExportResponseMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *AdminAuditLogsExportResponse) SetMeta(v AdminAuditLogsExportResponseMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *AdminAuditLogsExportResponse) HasMeta() bool`

HasMeta returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


