# LumoAuth\ApiClient\AAuthApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**authorizeAgent()**](AAuthApi.md#authorizeAgent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page. |
| [**getAgentJwks()**](AAuthApi.md#getAgentJwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint |
| [**getAgentMetadata()**](AAuthApi.md#getAgentMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents. |
| [**getAgentMetadataById()**](AAuthApi.md#getAgentMetadataById) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata |
| [**getIssuerJwks()**](AAuthApi.md#getIssuerJwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth. |
| [**getIssuerMetadata()**](AAuthApi.md#getIssuerMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant. |
| [**getResourceJwks()**](AAuthApi.md#getResourceJwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint |
| [**getResourceMetadata()**](AAuthApi.md#getResourceMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3) |
| [**getResourceMetadataById()**](AAuthApi.md#getResourceMetadataById) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata |
| [**issueAgentToken()**](AAuthApi.md#issueAgentToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint |
| [**issueDelegateToken()**](AAuthApi.md#issueDelegateToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate. |
| [**issuePlatformToken()**](AAuthApi.md#issuePlatformToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token |  |
| [**issueResourceToken()**](AAuthApi.md#issueResourceToken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6) |
| [**revokeAgentToken()**](AAuthApi.md#revokeAgentToken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token. |
| [**verifyAuthToken()**](AAuthApi.md#verifyAuthToken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint. |
| [**verifyResourceToken()**](AAuthApi.md#verifyResourceToken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens). |


## `authorizeAgent()`

```php
authorizeAgent($orgId)
```

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user's browser to its authorization page.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $apiInstance->authorizeAgent($orgId);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->authorizeAgent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

void (empty response body)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAgentJwks()`

```php
getAgentJwks($orgId, $agentId): \LumoAuth\ApiClient\Model\JwksResponse
```

Agent JWKS endpoint

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->getAgentJwks($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getAgentJwks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\JwksResponse**](../Model/JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAgentMetadata()`

```php
getAgentMetadata($orgId): object[]
```

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getAgentMetadata($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getAgentMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**object[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAgentMetadataById()`

```php
getAgentMetadataById($orgId, $agentId): object
```

Individual Agent Metadata

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->getAgentMetadataById($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getAgentMetadataById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIssuerJwks()`

```php
getIssuerJwks($orgId): \LumoAuth\ApiClient\Model\JwksResponse
```

Auth Server JWKS endpoint for AAuth.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getIssuerJwks($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getIssuerJwks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\JwksResponse**](../Model/JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getIssuerMetadata()`

```php
getIssuerMetadata($orgId): \LumoAuth\ApiClient\Model\GetIssuerMetadataResponse
```

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getIssuerMetadata($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getIssuerMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetIssuerMetadataResponse**](../Model/GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getResourceJwks()`

```php
getResourceJwks($orgId, $resourceId): \LumoAuth\ApiClient\Model\JwksResponse
```

Resource JWKS endpoint

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$resourceId = 'resourceId_example'; // string

try {
    $result = $apiInstance->getResourceJwks($orgId, $resourceId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getResourceJwks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **resourceId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\JwksResponse**](../Model/JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getResourceMetadata()`

```php
getResourceMetadata($orgId): object[]
```

Resource Metadata (Section 8.3)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getResourceMetadata($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getResourceMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**object[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getResourceMetadataById()`

```php
getResourceMetadataById($orgId, $resourceId): object
```

Individual Resource Metadata

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$resourceId = 'resourceId_example'; // string

try {
    $result = $apiInstance->getResourceMetadataById($orgId, $resourceId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->getResourceMetadataById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **resourceId** | **string**|  | |

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `issueAgentToken()`

```php
issueAgentToken($orgId, $issueAgentTokenRequest): \LumoAuth\ApiClient\Model\IssueAgentTokenResponse
```

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server's endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$issueAgentTokenRequest = new \LumoAuth\ApiClient\Model\IssueAgentTokenRequest(); // \LumoAuth\ApiClient\Model\IssueAgentTokenRequest

try {
    $result = $apiInstance->issueAgentToken($orgId, $issueAgentTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->issueAgentToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **issueAgentTokenRequest** | [**\LumoAuth\ApiClient\Model\IssueAgentTokenRequest**](../Model/IssueAgentTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\IssueAgentTokenResponse**](../Model/IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `issueDelegateToken()`

```php
issueDelegateToken($orgId, $issueDelegateTokenRequest): \LumoAuth\ApiClient\Model\IssueDelegateTokenResponse
```

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$issueDelegateTokenRequest = new \LumoAuth\ApiClient\Model\IssueDelegateTokenRequest(); // \LumoAuth\ApiClient\Model\IssueDelegateTokenRequest

try {
    $result = $apiInstance->issueDelegateToken($orgId, $issueDelegateTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->issueDelegateToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **issueDelegateTokenRequest** | [**\LumoAuth\ApiClient\Model\IssueDelegateTokenRequest**](../Model/IssueDelegateTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\IssueDelegateTokenResponse**](../Model/IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `issuePlatformToken()`

```php
issuePlatformToken($orgId, $issuePlatformTokenRequest): \LumoAuth\ApiClient\Model\IssuePlatformTokenResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$issuePlatformTokenRequest = new \LumoAuth\ApiClient\Model\IssuePlatformTokenRequest(); // \LumoAuth\ApiClient\Model\IssuePlatformTokenRequest

try {
    $result = $apiInstance->issuePlatformToken($orgId, $issuePlatformTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->issuePlatformToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **issuePlatformTokenRequest** | [**\LumoAuth\ApiClient\Model\IssuePlatformTokenRequest**](../Model/IssuePlatformTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\IssuePlatformTokenResponse**](../Model/IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `issueResourceToken()`

```php
issueResourceToken($orgId, $issueResourceTokenRequest): \LumoAuth\ApiClient\Model\IssueResourceTokenResponse
```

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token binding an agent's request to the resource's identity.  The resource authenticates via HTTP Message Signature using its registered key.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$issueResourceTokenRequest = new \LumoAuth\ApiClient\Model\IssueResourceTokenRequest(); // \LumoAuth\ApiClient\Model\IssueResourceTokenRequest

try {
    $result = $apiInstance->issueResourceToken($orgId, $issueResourceTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->issueResourceToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **issueResourceTokenRequest** | [**\LumoAuth\ApiClient\Model\IssueResourceTokenRequest**](../Model/IssueResourceTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\IssueResourceTokenResponse**](../Model/IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `revokeAgentToken()`

```php
revokeAgentToken($orgId, $revokeAgentTokenRequest): \LumoAuth\ApiClient\Model\RevokeAgentTokenResponse
```

Revoke an auth token or refresh token.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$revokeAgentTokenRequest = new \LumoAuth\ApiClient\Model\RevokeAgentTokenRequest(); // \LumoAuth\ApiClient\Model\RevokeAgentTokenRequest

try {
    $result = $apiInstance->revokeAgentToken($orgId, $revokeAgentTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->revokeAgentToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **revokeAgentTokenRequest** | [**\LumoAuth\ApiClient\Model\RevokeAgentTokenRequest**](../Model/RevokeAgentTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RevokeAgentTokenResponse**](../Model/RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyAuthToken()`

```php
verifyAuthToken($orgId, $verifyAuthTokenRequest): \LumoAuth\ApiClient\Model\VerifyAuthTokenResponse
```

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent's incoming request matches the      key whose thumbprint is `cnf_jkt` in the response.  IMPORTANT — proof-of-possession is mandatory. A response of `{\"active\": true, ...}` from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent's request was produced with the key that hashes to `cnf_jkt`. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes `pop_required: true` to surface this contract to integrators who only inspect `active`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$verifyAuthTokenRequest = new \LumoAuth\ApiClient\Model\VerifyAuthTokenRequest(); // \LumoAuth\ApiClient\Model\VerifyAuthTokenRequest

try {
    $result = $apiInstance->verifyAuthToken($orgId, $verifyAuthTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->verifyAuthToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **verifyAuthTokenRequest** | [**\LumoAuth\ApiClient\Model\VerifyAuthTokenRequest**](../Model/VerifyAuthTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\VerifyAuthTokenResponse**](../Model/VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyResourceToken()`

```php
verifyResourceToken($orgId, $verifyResourceTokenRequest): \LumoAuth\ApiClient\Model\VerifyResourceTokenResponse
```

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: AAuthSigned
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\AAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$verifyResourceTokenRequest = new \LumoAuth\ApiClient\Model\VerifyResourceTokenRequest(); // \LumoAuth\ApiClient\Model\VerifyResourceTokenRequest

try {
    $result = $apiInstance->verifyResourceToken($orgId, $verifyResourceTokenRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AAuthApi->verifyResourceToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **verifyResourceTokenRequest** | [**\LumoAuth\ApiClient\Model\VerifyResourceTokenRequest**](../Model/VerifyResourceTokenRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\VerifyResourceTokenResponse**](../Model/VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../../README.md#AAuthSigned)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
