# LumoAuth\ApiClient\WellKnownApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getAuthorizationServerMetadata()**](WellKnownApi.md#getAuthorizationServerMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414) |
| [**getJwks()**](WellKnownApi.md#getJwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517) |
| [**getOpenidConfiguration()**](WellKnownApi.md#getOpenidConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0) |
| [**getSsfConfiguration()**](WellKnownApi.md#getSsfConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata |


## `getAuthorizationServerMetadata()`

```php
getAuthorizationServerMetadata($orgId): \LumoAuth\ApiClient\Model\AuthorizationServerMetadata
```

OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getAuthorizationServerMetadata($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getAuthorizationServerMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AuthorizationServerMetadata**](../Model/AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJwks()`

```php
getJwks($orgId): \LumoAuth\ApiClient\Model\JsonWebKeySet
```

JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getJwks($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getJwks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\JsonWebKeySet**](../Model/JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOpenidConfiguration()`

```php
getOpenidConfiguration($orgId): \LumoAuth\ApiClient\Model\OpenIdConfiguration
```

OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getOpenidConfiguration($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getOpenidConfiguration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\OpenIdConfiguration**](../Model/OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSsfConfiguration()`

```php
getSsfConfiguration($orgId): \LumoAuth\ApiClient\Model\GetSsfConfigurationResponse
```

SSF transmitter configuration metadata

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\WellKnownApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getSsfConfiguration($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling WellKnownApi->getSsfConfiguration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetSsfConfigurationResponse**](../Model/GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
