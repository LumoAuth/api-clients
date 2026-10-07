# LumoAuth\ApiClient\AdminSandboxApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminSandboxDestroy()**](AdminSandboxApi.md#adminSandboxDestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant |
| [**adminSandboxList()**](AdminSandboxApi.md#adminSandboxList) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants |
| [**adminSandboxSpawn()**](AdminSandboxApi.md#adminSandboxSpawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant |


## `adminSandboxDestroy()`

```php
adminSandboxDestroy($orgId, $sandboxSlug): \LumoAuth\ApiClient\Model\MessageResponse
```

Destroy a sandbox tenant

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSandboxApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$sandboxSlug = 'sandboxSlug_example'; // string

try {
    $result = $apiInstance->adminSandboxDestroy($orgId, $sandboxSlug);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSandboxApi->adminSandboxDestroy: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **sandboxSlug** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\MessageResponse**](../Model/MessageResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSandboxList()`

```php
adminSandboxList($orgId): \LumoAuth\ApiClient\Model\AdminSandboxListResponse
```

List the caller's sandbox tenants

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSandboxApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminSandboxList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSandboxApi->adminSandboxList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSandboxListResponse**](../Model/AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSandboxSpawn()`

```php
adminSandboxSpawn($orgId, $adminSandboxSpawnRequest): \LumoAuth\ApiClient\Model\AdminSandboxSpawnResponse
```

Spawn a sandbox tenant

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSandboxApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$adminSandboxSpawnRequest = new \LumoAuth\ApiClient\Model\AdminSandboxSpawnRequest(); // \LumoAuth\ApiClient\Model\AdminSandboxSpawnRequest

try {
    $result = $apiInstance->adminSandboxSpawn($orgId, $adminSandboxSpawnRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSandboxApi->adminSandboxSpawn: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **adminSandboxSpawnRequest** | [**\LumoAuth\ApiClient\Model\AdminSandboxSpawnRequest**](../Model/AdminSandboxSpawnRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSandboxSpawnResponse**](../Model/AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
