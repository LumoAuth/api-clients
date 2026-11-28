# LumoAuth\ApiClient\AdminMcpApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminMcpServersCreate()**](AdminMcpApi.md#adminMcpServersCreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server |
| [**adminMcpServersDelete()**](AdminMcpApi.md#adminMcpServersDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server |
| [**adminMcpServersGet()**](AdminMcpApi.md#adminMcpServersGet) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server |
| [**adminMcpServersGrantsList()**](AdminMcpApi.md#adminMcpServersGrantsList) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server |
| [**adminMcpServersGrantsRemove()**](AdminMcpApi.md#adminMcpServersGrantsRemove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server |
| [**adminMcpServersGrantsSet()**](AdminMcpApi.md#adminMcpServersGrantsSet) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call |
| [**adminMcpServersList()**](AdminMcpApi.md#adminMcpServersList) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers |
| [**patchAdminMcpServersUpdate()**](AdminMcpApi.md#patchAdminMcpServersUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server |
| [**putAdminMcpServersUpdate()**](AdminMcpApi.md#putAdminMcpServersUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server (same as PATCH: only the fields that are sent change) |


## `adminMcpServersCreate()`

```php
adminMcpServersCreate($orgId, $mcpServerWrite): \LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse
```

Register an MCP server

The `resource_uri` is stored and returned in canonical form: lower-case scheme and host, no default port, no trailing slash, no dot segments. Token requests match it in any equivalent spelling.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$mcpServerWrite = new \LumoAuth\ApiClient\Model\McpServerWrite(); // \LumoAuth\ApiClient\Model\McpServerWrite

try {
    $result = $apiInstance->adminMcpServersCreate($orgId, $mcpServerWrite);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **mcpServerWrite** | [**\LumoAuth\ApiClient\Model\McpServerWrite**](../Model/McpServerWrite.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse**](../Model/AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminMcpServersDelete()`

```php
adminMcpServersDelete($orgId, $serverId): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an MCP server

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string

try {
    $result = $apiInstance->adminMcpServersDelete($orgId, $serverId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |

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

## `adminMcpServersGet()`

```php
adminMcpServersGet($orgId, $serverId): \LumoAuth\ApiClient\Model\AdminMcpServersGetResponse
```

Get an MCP server

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string

try {
    $result = $apiInstance->adminMcpServersGet($orgId, $serverId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersGetResponse**](../Model/AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminMcpServersGrantsList()`

```php
adminMcpServersGrantsList($orgId, $serverId, $agentId): \LumoAuth\ApiClient\Model\AdminMcpServersGrantsListResponse
```

List the agents allowed to call tools of an MCP server

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string
$agentId = 'agentId_example'; // string | Only the grants of this agent (agentId or numeric id).

try {
    $result = $apiInstance->adminMcpServersGrantsList($orgId, $serverId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersGrantsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |
| **agentId** | **string**| Only the grants of this agent (agentId or numeric id). | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersGrantsListResponse**](../Model/AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminMcpServersGrantsRemove()`

```php
adminMcpServersGrantsRemove($orgId, $serverId, $agentId): \LumoAuth\ApiClient\Model\AdminMcpServersGrantsRemoveResponse
```

Remove every grant of an agent on an MCP server

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->adminMcpServersGrantsRemove($orgId, $serverId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersGrantsRemove: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersGrantsRemoveResponse**](../Model/AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminMcpServersGrantsSet()`

```php
adminMcpServersGrantsSet($orgId, $serverId, $agentId, $adminMcpServersGrantsSetRequest): \LumoAuth\ApiClient\Model\AdminMcpServersGrantsSetResponse
```

Set the tools of an MCP server that an agent may call

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string
$agentId = 'agentId_example'; // string
$adminMcpServersGrantsSetRequest = new \LumoAuth\ApiClient\Model\AdminMcpServersGrantsSetRequest(); // \LumoAuth\ApiClient\Model\AdminMcpServersGrantsSetRequest

try {
    $result = $apiInstance->adminMcpServersGrantsSet($orgId, $serverId, $agentId, $adminMcpServersGrantsSetRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersGrantsSet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |
| **agentId** | **string**|  | |
| **adminMcpServersGrantsSetRequest** | [**\LumoAuth\ApiClient\Model\AdminMcpServersGrantsSetRequest**](../Model/AdminMcpServersGrantsSetRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersGrantsSetResponse**](../Model/AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminMcpServersList()`

```php
adminMcpServersList($orgId): \LumoAuth\ApiClient\Model\AdminMcpServersListResponse
```

List MCP servers

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminMcpServersList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->adminMcpServersList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersListResponse**](../Model/AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminMcpServersUpdate()`

```php
patchAdminMcpServersUpdate($orgId, $serverId, $mcpServerWrite): \LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse
```

Update an MCP server

Only the fields that are sent change; each is judged as on create. `resource_uri` cannot be changed (400): register a new server for another address. Changes apply to the next token request.

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string
$mcpServerWrite = new \LumoAuth\ApiClient\Model\McpServerWrite(); // \LumoAuth\ApiClient\Model\McpServerWrite

try {
    $result = $apiInstance->patchAdminMcpServersUpdate($orgId, $serverId, $mcpServerWrite);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->patchAdminMcpServersUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |
| **mcpServerWrite** | [**\LumoAuth\ApiClient\Model\McpServerWrite**](../Model/McpServerWrite.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse**](../Model/AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminMcpServersUpdate()`

```php
putAdminMcpServersUpdate($orgId, $serverId, $mcpServerWrite): \LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse
```

Update an MCP server (same as PATCH: only the fields that are sent change)

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminMcpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$serverId = 'serverId_example'; // string
$mcpServerWrite = new \LumoAuth\ApiClient\Model\McpServerWrite(); // \LumoAuth\ApiClient\Model\McpServerWrite

try {
    $result = $apiInstance->putAdminMcpServersUpdate($orgId, $serverId, $mcpServerWrite);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminMcpApi->putAdminMcpServersUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **serverId** | **string**|  | |
| **mcpServerWrite** | [**\LumoAuth\ApiClient\Model\McpServerWrite**](../Model/McpServerWrite.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminMcpServersCreateResponse**](../Model/AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
