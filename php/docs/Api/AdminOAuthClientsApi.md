# LumoAuth\ApiClient\AdminOAuthClientsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createClient()**](AdminOAuthClientsApi.md#createClient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client |
| [**deleteClient()**](AdminOAuthClientsApi.md#deleteClient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client |
| [**disableClient()**](AdminOAuthClientsApi.md#disableClient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client |
| [**enableClient()**](AdminOAuthClientsApi.md#enableClient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client |
| [**getClient()**](AdminOAuthClientsApi.md#getClient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client |
| [**listClientScopes()**](AdminOAuthClientsApi.md#listClientScopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client |
| [**listClients()**](AdminOAuthClientsApi.md#listClients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients |
| [**patchClient()**](AdminOAuthClientsApi.md#patchClient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client |
| [**rotateClientSecret()**](AdminOAuthClientsApi.md#rotateClientSecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret |
| [**setClientScopes()**](AdminOAuthClientsApi.md#setClientScopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client |
| [**updateClient()**](AdminOAuthClientsApi.md#updateClient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client |


## `createClient()`

```php
createClient($orgId): \LumoAuth\ApiClient\Model\CreateClientResponse
```

Create an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->createClient($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->createClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\CreateClientResponse**](../Model/CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteClient()`

```php
deleteClient($orgId, $clientId): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->deleteClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->deleteClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

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

## `disableClient()`

```php
disableClient($orgId, $clientId): \LumoAuth\ApiClient\Model\UpdateClientResponse
```

Disable an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->disableClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->disableClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\UpdateClientResponse**](../Model/UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `enableClient()`

```php
enableClient($orgId, $clientId): \LumoAuth\ApiClient\Model\UpdateClientResponse
```

Enable an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->enableClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->enableClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\UpdateClientResponse**](../Model/UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getClient()`

```php
getClient($orgId, $clientId): \LumoAuth\ApiClient\Model\GetClientResponse
```

Get an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->getClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->getClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetClientResponse**](../Model/GetClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listClientScopes()`

```php
listClientScopes($orgId, $clientId): \LumoAuth\ApiClient\Model\ListClientScopesResponse
```

List the scopes granted to an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->listClientScopes($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->listClientScopes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListClientScopesResponse**](../Model/ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listClients()`

```php
listClients($orgId): \LumoAuth\ApiClient\Model\ListClientsResponse
```

List OAuth clients

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->listClients($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->listClients: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListClientsResponse**](../Model/ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchClient()`

```php
patchClient($orgId, $clientId): \LumoAuth\ApiClient\Model\UpdateClientResponse
```

Update an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->patchClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->patchClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\UpdateClientResponse**](../Model/UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `rotateClientSecret()`

```php
rotateClientSecret($orgId, $clientId): \LumoAuth\ApiClient\Model\RotateClientSecretResponse
```

Rotate an OAuth client secret

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->rotateClientSecret($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->rotateClientSecret: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RotateClientSecretResponse**](../Model/RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `setClientScopes()`

```php
setClientScopes($orgId, $clientId): \LumoAuth\ApiClient\Model\SetClientScopesResponse
```

Replace the scopes granted to an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->setClientScopes($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->setClientScopes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\SetClientScopesResponse**](../Model/SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateClient()`

```php
updateClient($orgId, $clientId): \LumoAuth\ApiClient\Model\UpdateClientResponse
```

Replace an OAuth client

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOAuthClientsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->updateClient($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOAuthClientsApi->updateClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\UpdateClientResponse**](../Model/UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
