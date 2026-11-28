# \AdminAuditLogsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_audit_logs_actions**](AdminAuditLogsApi.md#admin_audit_logs_actions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization
[**admin_audit_logs_export**](AdminAuditLogsApi.md#admin_audit_logs_export) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON
[**admin_audit_logs_get**](AdminAuditLogsApi.md#admin_audit_logs_get) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry
[**admin_audit_logs_list**](AdminAuditLogsApi.md#admin_audit_logs_list) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries
[**admin_audit_logs_retention**](AdminAuditLogsApi.md#admin_audit_logs_retention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings
[**admin_audit_logs_stats**](AdminAuditLogsApi.md#admin_audit_logs_stats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days)
[**patch_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#patch_admin_audit_logs_retention_update) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings
[**put_admin_audit_logs_retention_update**](AdminAuditLogsApi.md#put_admin_audit_logs_retention_update) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings



## admin_audit_logs_actions

> models::AdminAuditLogsActionsResponse admin_audit_logs_actions(org_id)
List the distinct audit action types recorded for the organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminAuditLogsActionsResponse**](AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_audit_logs_export

> String admin_audit_logs_export(org_id, format, event_type, action, actor_id, target_type, target_id, severity, status, ip_address, search, trace_id, from, to)
Export audit logs as CSV (default) or JSON

Needs `audit.export` and `audit.view`, as the export on the portal's audit log page does.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**format** | Option<**String**> | csv (default) or json. |  |[default to csv]
**event_type** | Option<**String**> | Exact event type, for example user.login. |  |
**action** | Option<**String**> | The short verb of the event (as GET /audit-logs/actions lists them). |  |
**actor_id** | Option<**String**> | Who acted: a user, API key or agent id. Also accepted as userId. |  |
**target_type** | Option<**String**> | Kind of the subject of the event. Also accepted as resourceType. |  |
**target_id** | Option<**String**> | The subject of the event, for example the user of a login.failed entry. |  |
**severity** | Option<**String**> |  |  |
**status** | Option<**String**> | Result of the event. |  |
**ip_address** | Option<**String**> |  |  |
**search** | Option<**String**> | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. |  |
**trace_id** | Option<**String**> | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). |  |
**from** | Option<**String**> | Entries at or after this time (ISO 8601). Also accepted as startDate. |  |
**to** | Option<**String**> | Entries at or before this time (ISO 8601). Also accepted as endDate. |  |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_audit_logs_get

> models::AdminAuditLogsGetResponse admin_audit_logs_get(org_id, log_id)
Get an audit log entry

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**log_id** | **String** |  | [required] |

### Return type

[**models::AdminAuditLogsGetResponse**](AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_audit_logs_list

> models::AdminAuditLogsListResponse admin_audit_logs_list(org_id, page, limit, event_type, action, actor_id, target_type, target_id, severity, status, ip_address, search, trace_id, from, to)
List audit log entries

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**page** | Option<**i32**> |  |  |[default to 1]
**limit** | Option<**i32**> |  |  |[default to 25]
**event_type** | Option<**String**> | Exact event type, for example user.login. |  |
**action** | Option<**String**> | The short verb of the event (as GET /audit-logs/actions lists them). |  |
**actor_id** | Option<**String**> | Who acted: a user, API key or agent id. Also accepted as userId. |  |
**target_type** | Option<**String**> | Kind of the subject of the event. Also accepted as resourceType. |  |
**target_id** | Option<**String**> | The subject of the event, for example the user of a login.failed entry. |  |
**severity** | Option<**String**> |  |  |
**status** | Option<**String**> | Result of the event. |  |
**ip_address** | Option<**String**> |  |  |
**search** | Option<**String**> | Text in the message, error message, event type, actor id or name, target name, client id or trace ID. |  |
**trace_id** | Option<**String**> | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). |  |
**from** | Option<**String**> | Entries at or after this time (ISO 8601). Also accepted as startDate. |  |
**to** | Option<**String**> | Entries at or before this time (ISO 8601). Also accepted as endDate. |  |

### Return type

[**models::AdminAuditLogsListResponse**](AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_audit_logs_retention

> models::AdminAuditLogsRetentionResponse admin_audit_logs_retention(org_id)
Get audit log retention settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_audit_logs_stats

> models::AdminAuditLogsStatsResponse admin_audit_logs_stats(org_id)
Audit log statistics for a period (default: last 30 days)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminAuditLogsStatsResponse**](AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_audit_logs_retention_update

> models::AdminAuditLogsRetentionResponse patch_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)
Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_audit_logs_retention_update_request** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | [required] |

### Return type

[**models::AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_audit_logs_retention_update

> models::AdminAuditLogsRetentionResponse put_admin_audit_logs_retention_update(org_id, put_admin_audit_logs_retention_update_request)
Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_audit_logs_retention_update_request** | [**PutAdminAuditLogsRetentionUpdateRequest**](PutAdminAuditLogsRetentionUpdateRequest.md) |  | [required] |

### Return type

[**models::AdminAuditLogsRetentionResponse**](AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

