# LumoAuth\ApiClient\AdminAbacApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**abacAttributesCreate()**](AdminAbacApi.md#abacAttributesCreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition |
| [**abacAttributesDelete()**](AdminAbacApi.md#abacAttributesDelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition |
| [**abacAttributesGet()**](AdminAbacApi.md#abacAttributesGet) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition |
| [**abacAttributesList()**](AdminAbacApi.md#abacAttributesList) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions |
| [**abacPoliciesCreate()**](AdminAbacApi.md#abacPoliciesCreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy |
| [**abacPoliciesDelete()**](AdminAbacApi.md#abacPoliciesDelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy |
| [**abacPoliciesGet()**](AdminAbacApi.md#abacPoliciesGet) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy |
| [**abacPoliciesList()**](AdminAbacApi.md#abacPoliciesList) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies |
| [**abacPoliciesToggle()**](AdminAbacApi.md#abacPoliciesToggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive |
| [**patchAbacAttributesUpdate()**](AdminAbacApi.md#patchAbacAttributesUpdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition |
| [**patchAbacPoliciesUpdate()**](AdminAbacApi.md#patchAbacPoliciesUpdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy |
| [**putAbacAttributesUpdate()**](AdminAbacApi.md#putAbacAttributesUpdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition |
| [**putAbacPoliciesUpdate()**](AdminAbacApi.md#putAbacPoliciesUpdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy |


## `abacAttributesCreate()`

```php
abacAttributesCreate($orgId): \LumoAuth\ApiClient\Model\AbacAttributesCreateResponse
```

Create an attribute definition

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->abacAttributesCreate($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacAttributesCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacAttributesCreateResponse**](../Model/AbacAttributesCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacAttributesDelete()`

```php
abacAttributesDelete($orgId, $id): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an attribute definition

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->abacAttributesDelete($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacAttributesDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

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

## `abacAttributesGet()`

```php
abacAttributesGet($orgId, $id): \LumoAuth\ApiClient\Model\AbacAttributesGetResponse
```

Get an attribute definition

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->abacAttributesGet($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacAttributesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacAttributesGetResponse**](../Model/AbacAttributesGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacAttributesList()`

```php
abacAttributesList($orgId): \LumoAuth\ApiClient\Model\AbacAttributesListResponse
```

List attribute definitions

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->abacAttributesList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacAttributesList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacAttributesListResponse**](../Model/AbacAttributesListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacPoliciesCreate()`

```php
abacPoliciesCreate($orgId): \LumoAuth\ApiClient\Model\AbacPoliciesCreateResponse
```

Create an ABAC policy

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->abacPoliciesCreate($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacPoliciesCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacPoliciesCreateResponse**](../Model/AbacPoliciesCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacPoliciesDelete()`

```php
abacPoliciesDelete($orgId, $id): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an ABAC policy

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->abacPoliciesDelete($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacPoliciesDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

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

## `abacPoliciesGet()`

```php
abacPoliciesGet($orgId, $id): \LumoAuth\ApiClient\Model\AbacPoliciesGetResponse
```

Get an ABAC policy

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->abacPoliciesGet($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacPoliciesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacPoliciesGetResponse**](../Model/AbacPoliciesGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacPoliciesList()`

```php
abacPoliciesList($orgId): \LumoAuth\ApiClient\Model\AbacPoliciesListResponse
```

List ABAC policies

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->abacPoliciesList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacPoliciesList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacPoliciesListResponse**](../Model/AbacPoliciesListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `abacPoliciesToggle()`

```php
abacPoliciesToggle($orgId, $id): \LumoAuth\ApiClient\Model\AbacPoliciesToggleResponse
```

Toggle a policy between active and inactive

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->abacPoliciesToggle($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->abacPoliciesToggle: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AbacPoliciesToggleResponse**](../Model/AbacPoliciesToggleResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAbacAttributesUpdate()`

```php
patchAbacAttributesUpdate($orgId, $id): \LumoAuth\ApiClient\Model\PutAbacAttributesUpdateResponse
```

Partially update an attribute definition

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->patchAbacAttributesUpdate($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->patchAbacAttributesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAbacAttributesUpdateResponse**](../Model/PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAbacPoliciesUpdate()`

```php
patchAbacPoliciesUpdate($orgId, $id): \LumoAuth\ApiClient\Model\PutAbacPoliciesUpdateResponse
```

Partially update an ABAC policy

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->patchAbacPoliciesUpdate($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->patchAbacPoliciesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAbacPoliciesUpdateResponse**](../Model/PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAbacAttributesUpdate()`

```php
putAbacAttributesUpdate($orgId, $id): \LumoAuth\ApiClient\Model\PutAbacAttributesUpdateResponse
```

Update an attribute definition

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->putAbacAttributesUpdate($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->putAbacAttributesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAbacAttributesUpdateResponse**](../Model/PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAbacPoliciesUpdate()`

```php
putAbacPoliciesUpdate($orgId, $id): \LumoAuth\ApiClient\Model\PutAbacPoliciesUpdateResponse
```

Update an ABAC policy

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminAbacApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->putAbacPoliciesUpdate($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminAbacApi->putAbacPoliciesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAbacPoliciesUpdateResponse**](../Model/PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
