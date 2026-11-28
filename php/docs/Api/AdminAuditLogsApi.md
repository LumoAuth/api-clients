# LumoAuth\ApiClient\AdminAuditLogsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminAuditLogsActions()**](AdminAuditLogsApi.md#adminAuditLogsActions) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/actions | List the distinct audit action types recorded for the organization |
| [**adminAuditLogsExport()**](AdminAuditLogsApi.md#adminAuditLogsExport) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/export | Export audit logs as CSV (default) or JSON |
| [**adminAuditLogsGet()**](AdminAuditLogsApi.md#adminAuditLogsGet) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/{logId} | Get an audit log entry |
| [**adminAuditLogsList()**](AdminAuditLogsApi.md#adminAuditLogsList) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs | List audit log entries |
| [**adminAuditLogsRetention()**](AdminAuditLogsApi.md#adminAuditLogsRetention) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Get audit log retention settings |
| [**adminAuditLogsStats()**](AdminAuditLogsApi.md#adminAuditLogsStats) | **GET** /orgs/{orgId}/api/v1/admin/audit-logs/stats | Audit log statistics for a period (default: last 30 days) |
| [**patchAdminAuditLogsRetentionUpdate()**](AdminAuditLogsApi.md#patchAdminAuditLogsRetentionUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |
| [**putAdminAuditLogsRetentionUpdate()**](AdminAuditLogsApi.md#putAdminAuditLogsRetentionUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/audit-logs/retention | Update audit log retention settings |


## `adminAuditLogsActions()`

```php
adminAuditLogsActions($orgId): \LumoAuth\ApiClient\Model\AdminAuditLogsActionsResponse
```

List the distinct audit action types recorded for the organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminAuditLogsActions($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsActions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsActionsResponse**](../Model/AdminAuditLogsActionsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAuditLogsExport()`

```php
adminAuditLogsExport($orgId, $format, $eventType, $action, $actorId, $targetType, $targetId, $severity, $status, $ipAddress, $search, $traceId, $from, $to): string
```

Export audit logs as CSV (default) or JSON

Needs `audit.export` and `audit.view`, as the export on the portal's audit log page does.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$format = 'csv'; // string | csv (default) or json.
$eventType = 'eventType_example'; // string | Exact event type, for example user.login.
$action = 'action_example'; // string | The short verb of the event (as GET /audit-logs/actions lists them).
$actorId = 'actorId_example'; // string | Who acted: a user, API key or agent id. Also accepted as userId.
$targetType = 'targetType_example'; // string | Kind of the subject of the event. Also accepted as resourceType.
$targetId = 'targetId_example'; // string | The subject of the event, for example the user of a login.failed entry.
$severity = 'severity_example'; // string
$status = 'status_example'; // string | Result of the event.
$ipAddress = 'ipAddress_example'; // string
$search = 'search_example'; // string | Text in the message, error message, event type, actor id or name, target name, client id or trace ID.
$traceId = 'traceId_example'; // string | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header).
$from = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Entries at or after this time (ISO 8601). Also accepted as startDate.
$to = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Entries at or before this time (ISO 8601). Also accepted as endDate.

try {
    $result = $apiInstance->adminAuditLogsExport($orgId, $format, $eventType, $action, $actorId, $targetType, $targetId, $severity, $status, $ipAddress, $search, $traceId, $from, $to);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsExport: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **format** | **string**| csv (default) or json. | [optional] [default to &#39;csv&#39;] |
| **eventType** | **string**| Exact event type, for example user.login. | [optional] |
| **action** | **string**| The short verb of the event (as GET /audit-logs/actions lists them). | [optional] |
| **actorId** | **string**| Who acted: a user, API key or agent id. Also accepted as userId. | [optional] |
| **targetType** | **string**| Kind of the subject of the event. Also accepted as resourceType. | [optional] |
| **targetId** | **string**| The subject of the event, for example the user of a login.failed entry. | [optional] |
| **severity** | **string**|  | [optional] |
| **status** | **string**| Result of the event. | [optional] |
| **ipAddress** | **string**|  | [optional] |
| **search** | **string**| Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] |
| **traceId** | **string**| Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] |
| **from** | **\DateTime**| Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] |
| **to** | **\DateTime**| Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] |

### Return type

**string**

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAuditLogsGet()`

```php
adminAuditLogsGet($orgId, $logId): \LumoAuth\ApiClient\Model\AdminAuditLogsGetResponse
```

Get an audit log entry

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$logId = 'logId_example'; // string

try {
    $result = $apiInstance->adminAuditLogsGet($orgId, $logId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **logId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsGetResponse**](../Model/AdminAuditLogsGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAuditLogsList()`

```php
adminAuditLogsList($orgId, $page, $limit, $eventType, $action, $actorId, $targetType, $targetId, $severity, $status, $ipAddress, $search, $traceId, $from, $to): \LumoAuth\ApiClient\Model\AdminAuditLogsListResponse
```

List audit log entries

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$page = 1; // int
$limit = 25; // int
$eventType = 'eventType_example'; // string | Exact event type, for example user.login.
$action = 'action_example'; // string | The short verb of the event (as GET /audit-logs/actions lists them).
$actorId = 'actorId_example'; // string | Who acted: a user, API key or agent id. Also accepted as userId.
$targetType = 'targetType_example'; // string | Kind of the subject of the event. Also accepted as resourceType.
$targetId = 'targetId_example'; // string | The subject of the event, for example the user of a login.failed entry.
$severity = 'severity_example'; // string
$status = 'status_example'; // string | Result of the event.
$ipAddress = 'ipAddress_example'; // string
$search = 'search_example'; // string | Text in the message, error message, event type, actor id or name, target name, client id or trace ID.
$traceId = 'traceId_example'; // string | Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header).
$from = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Entries at or after this time (ISO 8601). Also accepted as startDate.
$to = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Entries at or before this time (ISO 8601). Also accepted as endDate.

try {
    $result = $apiInstance->adminAuditLogsList($orgId, $page, $limit, $eventType, $action, $actorId, $targetType, $targetId, $severity, $status, $ipAddress, $search, $traceId, $from, $to);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **page** | **int**|  | [optional] [default to 1] |
| **limit** | **int**|  | [optional] [default to 25] |
| **eventType** | **string**| Exact event type, for example user.login. | [optional] |
| **action** | **string**| The short verb of the event (as GET /audit-logs/actions lists them). | [optional] |
| **actorId** | **string**| Who acted: a user, API key or agent id. Also accepted as userId. | [optional] |
| **targetType** | **string**| Kind of the subject of the event. Also accepted as resourceType. | [optional] |
| **targetId** | **string**| The subject of the event, for example the user of a login.failed entry. | [optional] |
| **severity** | **string**|  | [optional] |
| **status** | **string**| Result of the event. | [optional] |
| **ipAddress** | **string**|  | [optional] |
| **search** | **string**| Text in the message, error message, event type, actor id or name, target name, client id or trace ID. | [optional] |
| **traceId** | **string**| Entries written by requests of this W3C trace (the 32 hex characters of a traceparent header). | [optional] |
| **from** | **\DateTime**| Entries at or after this time (ISO 8601). Also accepted as startDate. | [optional] |
| **to** | **\DateTime**| Entries at or before this time (ISO 8601). Also accepted as endDate. | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsListResponse**](../Model/AdminAuditLogsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAuditLogsRetention()`

```php
adminAuditLogsRetention($orgId): \LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse
```

Get audit log retention settings

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminAuditLogsRetention($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsRetention: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse**](../Model/AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAuditLogsStats()`

```php
adminAuditLogsStats($orgId): \LumoAuth\ApiClient\Model\AdminAuditLogsStatsResponse
```

Audit log statistics for a period (default: last 30 days)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminAuditLogsStats($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->adminAuditLogsStats: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsStatsResponse**](../Model/AdminAuditLogsStatsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminAuditLogsRetentionUpdate()`

```php
patchAdminAuditLogsRetentionUpdate($orgId, $putAdminAuditLogsRetentionUpdateRequest): \LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse
```

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$putAdminAuditLogsRetentionUpdateRequest = new \LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest(); // \LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest

try {
    $result = $apiInstance->patchAdminAuditLogsRetentionUpdate($orgId, $putAdminAuditLogsRetentionUpdateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->patchAdminAuditLogsRetentionUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **putAdminAuditLogsRetentionUpdateRequest** | [**\LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest**](../Model/PutAdminAuditLogsRetentionUpdateRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse**](../Model/AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminAuditLogsRetentionUpdate()`

```php
putAdminAuditLogsRetentionUpdate($orgId, $putAdminAuditLogsRetentionUpdateRequest): \LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse
```

Update audit log retention settings

Needs `settings.manage` and `gdpr.manage`, as the GDPR settings page in the portal does.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-Key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-Key', 'Bearer');

// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AdminAuditLogsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$putAdminAuditLogsRetentionUpdateRequest = new \LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest(); // \LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest

try {
    $result = $apiInstance->putAdminAuditLogsRetentionUpdate($orgId, $putAdminAuditLogsRetentionUpdateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAuditLogsApi->putAdminAuditLogsRetentionUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **putAdminAuditLogsRetentionUpdateRequest** | [**\LumoAuth\ApiClient\Model\PutAdminAuditLogsRetentionUpdateRequest**](../Model/PutAdminAuditLogsRetentionUpdateRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAuditLogsRetentionResponse**](../Model/AdminAuditLogsRetentionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
