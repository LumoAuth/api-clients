# LumoAuth\ApiClient\JitApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**approveRequest()**](JitApi.md#approveRequest) | **POST** /orgs/{orgId}/api/v1/jit/approve/{requestId} | HITL: Approve a pending JIT request (requires user auth). |
| [**completeTask()**](JitApi.md#completeTask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/complete | Complete a task and cleanup resources. |
| [**createTask()**](JitApi.md#createTask) | **POST** /orgs/{orgId}/api/v1/jit/task | Create a new ephemeral task/persona for an agent. |
| [**denyRequest()**](JitApi.md#denyRequest) | **POST** /orgs/{orgId}/api/v1/jit/deny/{requestId} | HITL: Deny a pending JIT request (requires user auth). |
| [**evaluateTask()**](JitApi.md#evaluateTask) | **POST** /orgs/{orgId}/api/v1/jit/task/{taskId}/evaluate | CAEP: Trigger continuous access evaluation for a task. |
| [**getRequestStatus()**](JitApi.md#getRequestStatus) | **GET** /orgs/{orgId}/api/v1/jit/request/{requestId}/status | Get the status of a JIT permission request. |
| [**getRequestToken()**](JitApi.md#getRequestToken) | **POST** /orgs/{orgId}/api/v1/jit/request/{requestId}/token | Exchange an approved JIT request for a downscoped token. |
| [**listPendingRequests()**](JitApi.md#listPendingRequests) | **GET** /orgs/{orgId}/api/v1/jit/pending | Get pending HITL requests for the tenant. |
| [**requestPermission()**](JitApi.md#requestPermission) | **POST** /orgs/{orgId}/api/v1/jit/request | Request a JIT permission using RFC 9396 authorization_details. |


## `approveRequest()`

```php
approveRequest($orgId, $requestId, $approveRequestRequest): \LumoAuth\ApiClient\Model\ApproveRequestResponse
```

HITL: Approve a pending JIT request (requires user auth).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestId = 'requestId_example'; // string
$approveRequestRequest = new \LumoAuth\ApiClient\Model\ApproveRequestRequest(); // \LumoAuth\ApiClient\Model\ApproveRequestRequest

try {
    $result = $apiInstance->approveRequest($orgId, $requestId, $approveRequestRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->approveRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestId** | **string**|  | |
| **approveRequestRequest** | [**\LumoAuth\ApiClient\Model\ApproveRequestRequest**](../Model/ApproveRequestRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\ApproveRequestResponse**](../Model/ApproveRequestResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `completeTask()`

```php
completeTask($orgId, $taskId): \LumoAuth\ApiClient\Model\CompleteTaskResponse
```

Complete a task and cleanup resources.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$taskId = 'taskId_example'; // string

try {
    $result = $apiInstance->completeTask($orgId, $taskId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->completeTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **taskId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\CompleteTaskResponse**](../Model/CompleteTaskResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createTask()`

```php
createTask($orgId, $createTaskRequest): \LumoAuth\ApiClient\Model\CreateTaskResponse
```

Create a new ephemeral task/persona for an agent.

Each task gets a unique sub-identity with isolated permissions. This limits the \"blast radius\" of any potential compromise.  Request body: {   \"name\": \"Research Task #123\",           // Optional: human-readable name   \"type\": \"research\",                     // Optional: task type for categorization   \"parent_task_id\": \"task_abc123\",        // Optional: for nested agent chains   \"on_behalf_of\": \"user@example.com\"      // Optional: delegation context }

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$createTaskRequest = new \LumoAuth\ApiClient\Model\CreateTaskRequest(); // \LumoAuth\ApiClient\Model\CreateTaskRequest

try {
    $result = $apiInstance->createTask($orgId, $createTaskRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->createTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **createTaskRequest** | [**\LumoAuth\ApiClient\Model\CreateTaskRequest**](../Model/CreateTaskRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\CreateTaskResponse**](../Model/CreateTaskResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `denyRequest()`

```php
denyRequest($orgId, $requestId, $denyRequestRequest): \LumoAuth\ApiClient\Model\DenyRequestResponse
```

HITL: Deny a pending JIT request (requires user auth).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestId = 'requestId_example'; // string
$denyRequestRequest = new \LumoAuth\ApiClient\Model\DenyRequestRequest(); // \LumoAuth\ApiClient\Model\DenyRequestRequest

try {
    $result = $apiInstance->denyRequest($orgId, $requestId, $denyRequestRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->denyRequest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestId** | **string**|  | |
| **denyRequestRequest** | [**\LumoAuth\ApiClient\Model\DenyRequestRequest**](../Model/DenyRequestRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\DenyRequestResponse**](../Model/DenyRequestResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `evaluateTask()`

```php
evaluateTask($orgId, $taskId): object
```

CAEP: Trigger continuous access evaluation for a task.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$taskId = 'taskId_example'; // string

try {
    $result = $apiInstance->evaluateTask($orgId, $taskId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->evaluateTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **taskId** | **string**|  | |

### Return type

**object**

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRequestStatus()`

```php
getRequestStatus($orgId, $requestId): \LumoAuth\ApiClient\Model\GetRequestStatusResponse
```

Get the status of a JIT permission request.

Agents poll this endpoint while waiting for HITL approval.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestId = 'requestId_example'; // string

try {
    $result = $apiInstance->getRequestStatus($orgId, $requestId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->getRequestStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetRequestStatusResponse**](../Model/GetRequestStatusResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRequestToken()`

```php
getRequestToken($orgId, $requestId): \LumoAuth\ApiClient\Model\GetRequestTokenResponse
```

Exchange an approved JIT request for a downscoped token.

Implements RFC 8693 Token Exchange with RFC 9396 authorization_details.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestId = 'requestId_example'; // string

try {
    $result = $apiInstance->getRequestToken($orgId, $requestId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->getRequestToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetRequestTokenResponse**](../Model/GetRequestTokenResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listPendingRequests()`

```php
listPendingRequests($orgId): \LumoAuth\ApiClient\Model\ListPendingRequestsResponse
```

Get pending HITL requests for the tenant.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->listPendingRequests($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->listPendingRequests: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListPendingRequestsResponse**](../Model/ListPendingRequestsResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `requestPermission()`

```php
requestPermission($orgId, $requestPermissionRequest): \LumoAuth\ApiClient\Model\RequestPermissionResponse
```

Request a JIT permission using RFC 9396 authorization_details.

Request body: {   \"task_id\": \"task_abc123\",                     // Required: task context   \"authorization_details\": {                    // Required: RFC 9396 object     \"type\": \"file_access\",     \"actions\": [\"read\"],     \"identifier\": \"report_2024.pdf\"   },   \"justification\": \"Need to analyze Q4 data\",   // Optional: human-readable   \"requested_ttl\": 300,                         // Optional: 5-15 minutes (default 10)   \"callback_url\": \"https://...\"                 // Optional: HITL notification webhook }  Response: - For low-risk: Immediate approval + ability to get token - For high-risk: Returns pending status, triggers HITL workflow

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\JitApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestPermissionRequest = new \LumoAuth\ApiClient\Model\RequestPermissionRequest(); // \LumoAuth\ApiClient\Model\RequestPermissionRequest

try {
    $result = $apiInstance->requestPermission($orgId, $requestPermissionRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JitApi->requestPermission: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestPermissionRequest** | [**\LumoAuth\ApiClient\Model\RequestPermissionRequest**](../Model/RequestPermissionRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RequestPermissionResponse**](../Model/RequestPermissionResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
