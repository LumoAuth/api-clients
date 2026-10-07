# LumoAuth\ApiClient\AdminAgentsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminAgentsActivate()**](AdminAgentsApi.md#adminAgentsActivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent |
| [**adminAgentsAgentsDisable()**](AdminAgentsApi.md#adminAgentsAgentsDisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent |
| [**adminAgentsAgentsEnable()**](AdminAgentsApi.md#adminAgentsAgentsEnable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent |
| [**adminAgentsAgentsRotateKey()**](AdminAgentsApi.md#adminAgentsAgentsRotateKey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key |
| [**adminAgentsCreate()**](AdminAgentsApi.md#adminAgentsCreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent |
| [**adminAgentsDeactivate()**](AdminAgentsApi.md#adminAgentsDeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent |
| [**adminAgentsDelete()**](AdminAgentsApi.md#adminAgentsDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent |
| [**adminAgentsGenerateToken()**](AdminAgentsApi.md#adminAgentsGenerateToken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent |
| [**adminAgentsGet()**](AdminAgentsApi.md#adminAgentsGet) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId |
| [**adminAgentsGetScopes()**](AdminAgentsApi.md#adminAgentsGetScopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities |
| [**adminAgentsList()**](AdminAgentsApi.md#adminAgentsList) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant |
| [**adminAgentsRevokeKey()**](AdminAgentsApi.md#adminAgentsRevokeKey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate) |
| [**adminAgentsRotateCredentials()**](AdminAgentsApi.md#adminAgentsRotateCredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials |
| [**adminAgentsSetScopes()**](AdminAgentsApi.md#adminAgentsSetScopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities |
| [**patchAdminAgentsUpdate()**](AdminAgentsApi.md#patchAdminAgentsUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |
| [**putAdminAgentsUpdate()**](AdminAgentsApi.md#putAdminAgentsUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |


## `adminAgentsActivate()`

```php
adminAgentsActivate($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsActivateResponse
```

Activate an agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsActivate($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsActivate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsActivateResponse**](../Model/AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsAgentsDisable()`

```php
adminAgentsAgentsDisable($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsAgentsDisableResponse
```

Disable agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsAgentsDisable($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsAgentsDisable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsAgentsDisableResponse**](../Model/AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsAgentsEnable()`

```php
adminAgentsAgentsEnable($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsAgentsEnableResponse
```

Enable agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsAgentsEnable($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsAgentsEnable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsAgentsEnableResponse**](../Model/AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsAgentsRotateKey()`

```php
adminAgentsAgentsRotateKey($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsAgentsRotateKeyResponse
```

Rotate agent API key

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsAgentsRotateKey($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsAgentsRotateKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsAgentsRotateKeyResponse**](../Model/AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsCreate()`

```php
adminAgentsCreate($orgId, $adminAgentsCreateRequest): \LumoAuth\ApiClient\Model\AdminAgentsCreateResponse
```

Create a new agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$adminAgentsCreateRequest = new \LumoAuth\ApiClient\Model\AdminAgentsCreateRequest(); // \LumoAuth\ApiClient\Model\AdminAgentsCreateRequest

try {
    $result = $apiInstance->adminAgentsCreate($orgId, $adminAgentsCreateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **adminAgentsCreateRequest** | [**\LumoAuth\ApiClient\Model\AdminAgentsCreateRequest**](../Model/AdminAgentsCreateRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsCreateResponse**](../Model/AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsDeactivate()`

```php
adminAgentsDeactivate($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsDeactivateResponse
```

Deactivate an agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsDeactivate($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsDeactivate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsDeactivateResponse**](../Model/AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsDelete()`

```php
adminAgentsDelete($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsDeleteResponse
```

Delete an agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsDelete($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsDeleteResponse**](../Model/AdminAgentsDeleteResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsGenerateToken()`

```php
adminAgentsGenerateToken($orgId, $agentId, $adminAgentsGenerateTokenRequest): \LumoAuth\ApiClient\Model\AdminAgentsGenerateTokenResponse
```

Generate a token for the agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string
$adminAgentsGenerateTokenRequest = new \LumoAuth\ApiClient\Model\AdminAgentsGenerateTokenRequest(); // \LumoAuth\ApiClient\Model\AdminAgentsGenerateTokenRequest

try {
    $result = $apiInstance->adminAgentsGenerateToken($orgId, $agentId, $adminAgentsGenerateTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsGenerateToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |
| **adminAgentsGenerateTokenRequest** | [**\LumoAuth\ApiClient\Model\AdminAgentsGenerateTokenRequest**](../Model/AdminAgentsGenerateTokenRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsGenerateTokenResponse**](../Model/AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsGet()`

```php
adminAgentsGet($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsGetResponse
```

Get a single agent by ID or agentId

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsGet($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsGetResponse**](../Model/AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsGetScopes()`

```php
adminAgentsGetScopes($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsGetScopesResponse
```

Get agent scopes/capabilities

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsGetScopes($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsGetScopes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsGetScopesResponse**](../Model/AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsList()`

```php
adminAgentsList($orgId): \LumoAuth\ApiClient\Model\AdminAgentsListResponse
```

List all agents in the tenant

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminAgentsList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsListResponse**](../Model/AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsRevokeKey()`

```php
adminAgentsRevokeKey($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsRevokeKeyResponse
```

Revoke agent API key (nullify it so it can no longer authenticate)

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsRevokeKey($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsRevokeKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsRevokeKeyResponse**](../Model/AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsRotateCredentials()`

```php
adminAgentsRotateCredentials($orgId, $agentId): \LumoAuth\ApiClient\Model\AdminAgentsRotateCredentialsResponse
```

Rotate agent credentials

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminAgentsRotateCredentials($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsRotateCredentials: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsRotateCredentialsResponse**](../Model/AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminAgentsSetScopes()`

```php
adminAgentsSetScopes($orgId, $agentId, $adminAgentsSetScopesRequest): \LumoAuth\ApiClient\Model\AdminAgentsSetScopesResponse
```

Update agent scopes/capabilities

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string
$adminAgentsSetScopesRequest = new \LumoAuth\ApiClient\Model\AdminAgentsSetScopesRequest(); // \LumoAuth\ApiClient\Model\AdminAgentsSetScopesRequest

try {
    $result = $apiInstance->adminAgentsSetScopes($orgId, $agentId, $adminAgentsSetScopesRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->adminAgentsSetScopes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |
| **adminAgentsSetScopesRequest** | [**\LumoAuth\ApiClient\Model\AdminAgentsSetScopesRequest**](../Model/AdminAgentsSetScopesRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminAgentsSetScopesResponse**](../Model/AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminAgentsUpdate()`

```php
patchAdminAgentsUpdate($orgId, $agentId, $putAdminAgentsUpdateRequest): \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateResponse
```

Update an existing agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string
$putAdminAgentsUpdateRequest = new \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest(); // \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest

try {
    $result = $apiInstance->patchAdminAgentsUpdate($orgId, $agentId, $putAdminAgentsUpdateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->patchAdminAgentsUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |
| **putAdminAgentsUpdateRequest** | [**\LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest**](../Model/PutAdminAgentsUpdateRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAdminAgentsUpdateResponse**](../Model/PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminAgentsUpdate()`

```php
putAdminAgentsUpdate($orgId, $agentId, $putAdminAgentsUpdateRequest): \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateResponse
```

Update an existing agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string
$putAdminAgentsUpdateRequest = new \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest(); // \LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest

try {
    $result = $apiInstance->putAdminAgentsUpdate($orgId, $agentId, $putAdminAgentsUpdateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAgentsApi->putAdminAgentsUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |
| **putAdminAgentsUpdateRequest** | [**\LumoAuth\ApiClient\Model\PutAdminAgentsUpdateRequest**](../Model/PutAdminAgentsUpdateRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAdminAgentsUpdateResponse**](../Model/PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
