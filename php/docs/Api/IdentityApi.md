# LumoAuth\ApiClient\IdentityApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getMe()**](IdentityApi.md#getMe) | **GET** /orgs/{orgId}/api/v1/me | Who am I |


## `getMe()`

```php
getMe($orgId): \LumoAuth\ApiClient\Model\GetMeResponse
```

Who am I

Returns the authenticated principal (user or agent). Use the `subject_type` field to discriminate.

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


$apiInstance = new LumoAuth\ApiClient\Api\IdentityApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getMe($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IdentityApi->getMe: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetMeResponse**](../Model/GetMeResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
