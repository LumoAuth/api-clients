# LumoAuth\ApiClient\TokenVaultApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getConnectionToken()**](TokenVaultApi.md#getConnectionToken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection |
| [**listConnections()**](TokenVaultApi.md#listConnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use |


## `getConnectionToken()`

```php
getConnectionToken($orgId, $connectionId, $getConnectionTokenRequest): \LumoAuth\ApiClient\Model\GetConnectionTokenResponse
```

Fetch a live third-party access token for a connection

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {\"user_id\": \"<uuid or email>\"} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

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


$apiInstance = new LumoAuth\ApiClient\Api\TokenVaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$connectionId = 'connectionId_example'; // string
$getConnectionTokenRequest = new \LumoAuth\ApiClient\Model\GetConnectionTokenRequest(); // \LumoAuth\ApiClient\Model\GetConnectionTokenRequest

try {
    $result = $apiInstance->getConnectionToken($orgId, $connectionId, $getConnectionTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokenVaultApi->getConnectionToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **connectionId** | **string**|  | |
| **getConnectionTokenRequest** | [**\LumoAuth\ApiClient\Model\GetConnectionTokenRequest**](../Model/GetConnectionTokenRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\GetConnectionTokenResponse**](../Model/GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listConnections()`

```php
listConnections($orgId): \LumoAuth\ApiClient\Model\ListConnectionsResponse
```

List the outbound connections this agent may use

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

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


$apiInstance = new LumoAuth\ApiClient\Api\TokenVaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->listConnections($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokenVaultApi->listConnections: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListConnectionsResponse**](../Model/ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
