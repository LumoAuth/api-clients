# LumoAuth\ApiClient\MfaApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createMfaChallenge()**](MfaApi.md#createMfaChallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge |
| [**deleteAuthenticator()**](MfaApi.md#deleteAuthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator |
| [**enrollAuthenticator()**](MfaApi.md#enrollAuthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator |
| [**generateRecoveryCodes()**](MfaApi.md#generateRecoveryCodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes |
| [**getMfaChallenge()**](MfaApi.md#getMfaChallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status |
| [**getRecoveryCodeStatus()**](MfaApi.md#getRecoveryCodeStatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status |
| [**listMyAuthenticators()**](MfaApi.md#listMyAuthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators |
| [**listTrustedDevices()**](MfaApi.md#listTrustedDevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices |
| [**revokeTrustedDevice()**](MfaApi.md#revokeTrustedDevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device |
| [**updateAuthenticator()**](MfaApi.md#updateAuthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default |
| [**verifyAuthenticator()**](MfaApi.md#verifyAuthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator |
| [**verifyMfaChallenge()**](MfaApi.md#verifyMfaChallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge |


## `createMfaChallenge()`

```php
createMfaChallenge($orgId, $createMfaChallengeRequest): \LumoAuth\ApiClient\Model\MfaChallenge
```

Start an MFA challenge

Starts the user's default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$createMfaChallengeRequest = new \LumoAuth\ApiClient\Model\CreateMfaChallengeRequest(); // \LumoAuth\ApiClient\Model\CreateMfaChallengeRequest

try {
    $result = $apiInstance->createMfaChallenge($orgId, $createMfaChallengeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->createMfaChallenge: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **createMfaChallengeRequest** | [**\LumoAuth\ApiClient\Model\CreateMfaChallengeRequest**](../Model/CreateMfaChallengeRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\MfaChallenge**](../Model/MfaChallenge.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteAuthenticator()`

```php
deleteAuthenticator($orgId, $id, $xMFAChallenge)
```

Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string
$xMFAChallenge = 'xMFAChallenge_example'; // string | Approved step_up challenge id

try {
    $apiInstance->deleteAuthenticator($orgId, $id, $xMFAChallenge);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->deleteAuthenticator: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |
| **xMFAChallenge** | **string**| Approved step_up challenge id | [optional] |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `enrollAuthenticator()`

```php
enrollAuthenticator($orgId, $type, $enrollAuthenticatorRequest): \LumoAuth\ApiClient\Model\EnrollAuthenticator201Response
```

Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$type = 'type_example'; // string
$enrollAuthenticatorRequest = new \LumoAuth\ApiClient\Model\EnrollAuthenticatorRequest(); // \LumoAuth\ApiClient\Model\EnrollAuthenticatorRequest

try {
    $result = $apiInstance->enrollAuthenticator($orgId, $type, $enrollAuthenticatorRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->enrollAuthenticator: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **type** | **string**|  | |
| **enrollAuthenticatorRequest** | [**\LumoAuth\ApiClient\Model\EnrollAuthenticatorRequest**](../Model/EnrollAuthenticatorRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\EnrollAuthenticator201Response**](../Model/EnrollAuthenticator201Response.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `generateRecoveryCodes()`

```php
generateRecoveryCodes($orgId): \LumoAuth\ApiClient\Model\GenerateRecoveryCodesResponse
```

Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->generateRecoveryCodes($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->generateRecoveryCodes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GenerateRecoveryCodesResponse**](../Model/GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMfaChallenge()`

```php
getMfaChallenge($orgId, $id): \LumoAuth\ApiClient\Model\MfaChallenge
```

Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->getMfaChallenge($orgId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->getMfaChallenge: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\MfaChallenge**](../Model/MfaChallenge.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRecoveryCodeStatus()`

```php
getRecoveryCodeStatus($orgId): \LumoAuth\ApiClient\Model\GetRecoveryCodeStatusResponse
```

Recovery-code status

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getRecoveryCodeStatus($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->getRecoveryCodeStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetRecoveryCodeStatusResponse**](../Model/GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listMyAuthenticators()`

```php
listMyAuthenticators($orgId): \LumoAuth\ApiClient\Model\ListMyAuthenticatorsResponse
```

List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->listMyAuthenticators($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->listMyAuthenticators: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListMyAuthenticatorsResponse**](../Model/ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `listTrustedDevices()`

```php
listTrustedDevices($orgId): \LumoAuth\ApiClient\Model\ListTrustedDevicesResponse
```

List trusted devices

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->listTrustedDevices($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->listTrustedDevices: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\ListTrustedDevicesResponse**](../Model/ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `revokeTrustedDevice()`

```php
revokeTrustedDevice($orgId, $id)
```

Revoke a trusted device

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string

try {
    $apiInstance->revokeTrustedDevice($orgId, $id);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->revokeTrustedDevice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateAuthenticator()`

```php
updateAuthenticator($orgId, $id, $updateAuthenticatorRequest): \LumoAuth\ApiClient\Model\MfaAuthenticator
```

Rename an authenticator or make it the default

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string
$updateAuthenticatorRequest = new \LumoAuth\ApiClient\Model\UpdateAuthenticatorRequest(); // \LumoAuth\ApiClient\Model\UpdateAuthenticatorRequest

try {
    $result = $apiInstance->updateAuthenticator($orgId, $id, $updateAuthenticatorRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->updateAuthenticator: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |
| **updateAuthenticatorRequest** | [**\LumoAuth\ApiClient\Model\UpdateAuthenticatorRequest**](../Model/UpdateAuthenticatorRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\MfaAuthenticator**](../Model/MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyAuthenticator()`

```php
verifyAuthenticator($orgId, $id, $verifyMfaChallengeRequest): \LumoAuth\ApiClient\Model\MfaAuthenticator
```

Verify a pending authenticator

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string
$verifyMfaChallengeRequest = new \LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest(); // \LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest

try {
    $result = $apiInstance->verifyAuthenticator($orgId, $id, $verifyMfaChallengeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->verifyAuthenticator: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |
| **verifyMfaChallengeRequest** | [**\LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest**](../Model/VerifyMfaChallengeRequest.md)|  | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\MfaAuthenticator**](../Model/MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyMfaChallenge()`

```php
verifyMfaChallenge($orgId, $id, $verifyMfaChallengeRequest): \LumoAuth\ApiClient\Model\MfaChallenge
```

Answer a challenge

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app's offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

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


$apiInstance = new LumoAuth\ApiClient\Api\MfaApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$id = 'id_example'; // string
$verifyMfaChallengeRequest = new \LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest(); // \LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest

try {
    $result = $apiInstance->verifyMfaChallenge($orgId, $id, $verifyMfaChallengeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MfaApi->verifyMfaChallenge: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **id** | **string**|  | |
| **verifyMfaChallengeRequest** | [**\LumoAuth\ApiClient\Model\VerifyMfaChallengeRequest**](../Model/VerifyMfaChallengeRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\MfaChallenge**](../Model/MfaChallenge.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
