# LumoAuth\ApiClient\AdminSessionsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminClientTokensRevokeAll()**](AdminSessionsApi.md#adminClientTokensRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client |
| [**adminClientTokensRevokePost()**](AdminSessionsApi.md#adminClientTokensRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias) |
| [**adminSessionsCount()**](AdminSessionsApi.md#adminSessionsCount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count |
| [**adminSessionsList()**](AdminSessionsApi.md#adminSessionsList) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions |
| [**adminSessionsRevoke()**](AdminSessionsApi.md#adminSessionsRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session |
| [**adminSessionsRevokeAll()**](AdminSessionsApi.md#adminSessionsRevokeAll) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant |
| [**adminSessionsStats()**](AdminSessionsApi.md#adminSessionsStats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics |
| [**adminTokensList()**](AdminSessionsApi.md#adminTokensList) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens |
| [**adminTokensRevoke()**](AdminSessionsApi.md#adminTokensRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token |
| [**adminUserSessionsList()**](AdminSessionsApi.md#adminUserSessionsList) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions |
| [**adminUserSessionsRevokeAll()**](AdminSessionsApi.md#adminUserSessionsRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user |
| [**adminUserSessionsRevokePost()**](AdminSessionsApi.md#adminUserSessionsRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias) |
| [**adminUserTokensRevokeAll()**](AdminSessionsApi.md#adminUserTokensRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user |
| [**adminUserTokensRevokePost()**](AdminSessionsApi.md#adminUserTokensRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias) |


## `adminClientTokensRevokeAll()`

```php
adminClientTokensRevokeAll($orgId, $clientId): \LumoAuth\ApiClient\Model\AdminClientTokensRevokeAllResponse
```

Revoke all tokens of a client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->adminClientTokensRevokeAll($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminClientTokensRevokeAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminClientTokensRevokeAllResponse**](../Model/AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminClientTokensRevokePost()`

```php
adminClientTokensRevokePost($orgId, $clientId): \LumoAuth\ApiClient\Model\AdminUserTokensRevokePostResponse
```

Revoke all tokens of a client (POST alias)

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->adminClientTokensRevokePost($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminClientTokensRevokePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserTokensRevokePostResponse**](../Model/AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSessionsCount()`

```php
adminSessionsCount($orgId): \LumoAuth\ApiClient\Model\AdminSessionsCountResponse
```

Active session count

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminSessionsCount($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminSessionsCount: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSessionsCountResponse**](../Model/AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSessionsList()`

```php
adminSessionsList($orgId): \LumoAuth\ApiClient\Model\AdminSessionsListResponse
```

List active sessions

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional `userId` filter accepts a user UUID or email.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminSessionsList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminSessionsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSessionsListResponse**](../Model/AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSessionsRevoke()`

```php
adminSessionsRevoke($orgId, $sessionId): \LumoAuth\ApiClient\Model\AdminSessionsRevokeResponse
```

Revoke a session

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$sessionId = 'sessionId_example'; // string

try {
    $result = $apiInstance->adminSessionsRevoke($orgId, $sessionId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminSessionsRevoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **sessionId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSessionsRevokeResponse**](../Model/AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSessionsRevokeAll()`

```php
adminSessionsRevokeAll($orgId, $adminSessionsRevokeAllRequest): \LumoAuth\ApiClient\Model\AdminSessionsRevokeAllResponse
```

Revoke every session in the tenant

Signs out all users. Requires `confirm: true` in the body.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$adminSessionsRevokeAllRequest = new \LumoAuth\ApiClient\Model\AdminSessionsRevokeAllRequest(); // \LumoAuth\ApiClient\Model\AdminSessionsRevokeAllRequest

try {
    $result = $apiInstance->adminSessionsRevokeAll($orgId, $adminSessionsRevokeAllRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminSessionsRevokeAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **adminSessionsRevokeAllRequest** | [**\LumoAuth\ApiClient\Model\AdminSessionsRevokeAllRequest**](../Model/AdminSessionsRevokeAllRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSessionsRevokeAllResponse**](../Model/AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminSessionsStats()`

```php
adminSessionsStats($orgId): \LumoAuth\ApiClient\Model\AdminSessionsStatsResponse
```

Session statistics

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminSessionsStats($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminSessionsStats: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminSessionsStatsResponse**](../Model/AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminTokensList()`

```php
adminTokensList($orgId): \LumoAuth\ApiClient\Model\AdminTokensListResponse
```

List access tokens

Paginated OAuth access tokens issued by the tenant's clients. Filters: `revoked` (bool), `clientId`, `userId`.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminTokensList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminTokensList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminTokensListResponse**](../Model/AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminTokensRevoke()`

```php
adminTokensRevoke($orgId, $tokenId): \LumoAuth\ApiClient\Model\AdminTokensRevokeResponse
```

Revoke a token

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$tokenId = 'tokenId_example'; // string

try {
    $result = $apiInstance->adminTokensRevoke($orgId, $tokenId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminTokensRevoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **tokenId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminTokensRevokeResponse**](../Model/AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminUserSessionsList()`

```php
adminUserSessionsList($orgId, $userId): \LumoAuth\ApiClient\Model\AdminUserSessionsListResponse
```

List a user's active sessions

All active sessions of one user (UUID or email), returned as a single page.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminUserSessionsList($orgId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminUserSessionsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserSessionsListResponse**](../Model/AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminUserSessionsRevokeAll()`

```php
adminUserSessionsRevokeAll($orgId, $userId): \LumoAuth\ApiClient\Model\AdminUserSessionsRevokeAllResponse
```

Revoke all sessions of a user

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminUserSessionsRevokeAll($orgId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminUserSessionsRevokeAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserSessionsRevokeAllResponse**](../Model/AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminUserSessionsRevokePost()`

```php
adminUserSessionsRevokePost($orgId, $userId): \LumoAuth\ApiClient\Model\AdminUserSessionsRevokePostResponse
```

Revoke all sessions of a user (POST alias)

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminUserSessionsRevokePost($orgId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminUserSessionsRevokePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserSessionsRevokePostResponse**](../Model/AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminUserTokensRevokeAll()`

```php
adminUserTokensRevokeAll($orgId, $userId): \LumoAuth\ApiClient\Model\AdminUserTokensRevokeAllResponse
```

Revoke all tokens of a user

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminUserTokensRevokeAll($orgId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminUserTokensRevokeAll: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserTokensRevokeAllResponse**](../Model/AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminUserTokensRevokePost()`

```php
adminUserTokensRevokePost($orgId, $userId): \LumoAuth\ApiClient\Model\AdminUserTokensRevokePostResponse
```

Revoke all tokens of a user (POST alias)

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminSessionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminUserTokensRevokePost($orgId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminSessionsApi->adminUserTokensRevokePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminUserTokensRevokePostResponse**](../Model/AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
