# LumoAuth\ApiClient\AgentsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**ask()**](AgentsApi.md#ask) | **POST** /orgs/{orgId}/api/v1/agents/ask | Agent-friendly permission check (Natural Language style) |
| [**attest()**](AgentsApi.md#attest) | **POST** /orgs/{orgId}/api/v1/agents/{agentId}/attest | Workload attestation: exchange a cloud OIDC token for an agent access token |
| [**authorizeMcp()**](AgentsApi.md#authorizeMcp) | **POST** /orgs/{orgId}/api/v1/agents/me/mcp/authorize | Per-MCP-tool authorization for the authenticated agent (dx B3). |
| [**createApproval()**](AgentsApi.md#createApproval) | **POST** /orgs/{orgId}/api/v1/agents/me/approvals |  |
| [**getAgentCard()**](AgentsApi.md#getAgentCard) | **GET** /orgs/{orgId}/api/v1/agents/{agentId}/agent-card | Signed A2A agent card |
| [**getApprovalStatus()**](AgentsApi.md#getApprovalStatus) | **GET** /orgs/{orgId}/api/v1/agents/me/approvals/{token}/status |  |
| [**getCurrentAgent()**](AgentsApi.md#getCurrentAgent) | **GET** /orgs/{orgId}/api/v1/agents/me | Get details about the currently authenticated agent |
| [**registerAgent()**](AgentsApi.md#registerAgent) | **POST** /orgs/{orgId}/api/v1/agents/register | Register (or re-register) an agent |
| [**verifyAgentCard()**](AgentsApi.md#verifyAgentCard) | **POST** /orgs/{orgId}/api/v1/agents/agent-card/verify | Verify a signed A2A agent card |


## `ask()`

```php
ask($orgId, $askRequest): \LumoAuth\ApiClient\Model\AskResponse
```

Agent-friendly permission check (Natural Language style)

POST /orgs/{orgId}/api/v1/agents/ask Body: {   \"action\": \"document.read\",   \"context\": {\"id\": \"123\"} }

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$askRequest = new \LumoAuth\ApiClient\Model\AskRequest(); // \LumoAuth\ApiClient\Model\AskRequest

try {
    $result = $apiInstance->ask($orgId, $askRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->ask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **askRequest** | [**\LumoAuth\ApiClient\Model\AskRequest**](../Model/AskRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AskResponse**](../Model/AskResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `attest()`

```php
attest($orgId, $agentId, $attestRequest): \LumoAuth\ApiClient\Model\AttestResponse
```

Workload attestation: exchange a cloud OIDC token for an agent access token

Public (the attestation token is the credential). The agent runtime presents a cloud-issued OIDC token (GitHub Actions, GCP, AWS IRSA, Kubernetes, Azure, SPIFFE, …); its signature is verified against the issuer JWKS and its subject against the agent's registered workload identity binding. Rate limited per IP and per agent; every rejection is the same generic 401.

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string
$attestRequest = new \LumoAuth\ApiClient\Model\AttestRequest(); // \LumoAuth\ApiClient\Model\AttestRequest

try {
    $result = $apiInstance->attest($orgId, $agentId, $attestRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->attest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |
| **attestRequest** | [**\LumoAuth\ApiClient\Model\AttestRequest**](../Model/AttestRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AttestResponse**](../Model/AttestResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `authorizeMcp()`

```php
authorizeMcp($orgId, $authorizeMcpRequest): \LumoAuth\ApiClient\Model\AuthorizeMcpResponse
```

Per-MCP-tool authorization for the authenticated agent (dx B3).

The real request-path caller of {@see \\McpToolAuthorizationService::canInvoke()} — the piece that connects MCP authorization to agent identity. An MCP gateway/server asks \"may THIS agent invoke <server>/<tool>?\" and gets a Zanzibar-backed allow/deny (tool-level or server-wide grant). Denials and grants are both audited, closing the MCP-authorization audit blind spot.  POST /orgs/{orgId}/api/v1/agents/me/mcp/authorize Body: { \"server_id\": \"invoices\", \"tool\": \"send_payment_reminder\" }

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$authorizeMcpRequest = new \LumoAuth\ApiClient\Model\AuthorizeMcpRequest(); // \LumoAuth\ApiClient\Model\AuthorizeMcpRequest

try {
    $result = $apiInstance->authorizeMcp($orgId, $authorizeMcpRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->authorizeMcp: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **authorizeMcpRequest** | [**\LumoAuth\ApiClient\Model\AuthorizeMcpRequest**](../Model/AuthorizeMcpRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AuthorizeMcpResponse**](../Model/AuthorizeMcpResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createApproval()`

```php
createApproval($orgId, $createApprovalRequest): \LumoAuth\ApiClient\Model\CreateApprovalResponse
```



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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$createApprovalRequest = new \LumoAuth\ApiClient\Model\CreateApprovalRequest(); // \LumoAuth\ApiClient\Model\CreateApprovalRequest

try {
    $result = $apiInstance->createApproval($orgId, $createApprovalRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->createApproval: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **createApprovalRequest** | [**\LumoAuth\ApiClient\Model\CreateApprovalRequest**](../Model/CreateApprovalRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\CreateApprovalResponse**](../Model/CreateApprovalResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAgentCard()`

```php
getAgentCard($orgId, $agentId): \LumoAuth\ApiClient\Model\SignedAgentCard
```

Signed A2A agent card

Public. Returns the JWS-signed A2A AgentCard of an active agent that has published an A2A endpoint. Cacheable (Cache-Control: public, max-age=300).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$agentId = 'agentId_example'; // string

try {
    $result = $apiInstance->getAgentCard($orgId, $agentId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->getAgentCard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **agentId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\SignedAgentCard**](../Model/SignedAgentCard.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getApprovalStatus()`

```php
getApprovalStatus($orgId, $token): \LumoAuth\ApiClient\Model\GetApprovalStatusResponse
```



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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$token = 'token_example'; // string

try {
    $result = $apiInstance->getApprovalStatus($orgId, $token);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->getApprovalStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **token** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetApprovalStatusResponse**](../Model/GetApprovalStatusResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getCurrentAgent()`

```php
getCurrentAgent($orgId): \LumoAuth\ApiClient\Model\GetCurrentAgentResponse
```

Get details about the currently authenticated agent

GET /orgs/{orgId}/api/v1/agents/me

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getCurrentAgent($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->getCurrentAgent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetCurrentAgentResponse**](../Model/GetCurrentAgentResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `registerAgent()`

```php
registerAgent($orgId): \LumoAuth\ApiClient\Model\RegisterAgentResponse
```

Register (or re-register) an agent

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->registerAgent($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->registerAgent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RegisterAgentResponse**](../Model/RegisterAgentResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyAgentCard()`

```php
verifyAgentCard($orgId, $requestBody): \LumoAuth\ApiClient\Model\VerifyAgentCardResponse
```

Verify a signed A2A agent card

Authenticated (user, agent or API key of this organization). The body is the signed card itself, or {\"card\": {...}, \"jwks_uri\": \"https://...\"} to verify against an external issuer's key set (SSRF-guarded); by default the organization's own JWKS is used.

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


$apiInstance = new LumoAuth\ApiClient\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$requestBody = NULL; // array<string,mixed>

try {
    $result = $apiInstance->verifyAgentCard($orgId, $requestBody);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->verifyAgentCard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestBody** | [**array<string,mixed>**](../Model/mixed.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\VerifyAgentCardResponse**](../Model/VerifyAgentCardResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
