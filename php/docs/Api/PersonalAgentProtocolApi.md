# LumoAuth\ApiClient\PersonalAgentProtocolApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**endPoppySession()**](PersonalAgentProtocolApi.md#endPoppySession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session |
| [**getPoppyDocument()**](PersonalAgentProtocolApi.md#getPoppyDocument) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain |
| [**getPoppyProtectedResourceMetadata()**](PersonalAgentProtocolApi.md#getPoppyProtectedResourceMetadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain |
| [**getPoppySessionStatus()**](PersonalAgentProtocolApi.md#getPoppySessionStatus) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session |
| [**getPoppyTasks()**](PersonalAgentProtocolApi.md#getPoppyTasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9) |
| [**sendPoppyFeedback()**](PersonalAgentProtocolApi.md#sendPoppyFeedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3) |
| [**verifyPoppySession()**](PersonalAgentProtocolApi.md#verifyPoppySession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request |


## `endPoppySession()`

```php
endPoppySession($orgId, $endPoppySessionRequest): \LumoAuth\ApiClient\Model\EndPoppySessionResponse
```

End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$endPoppySessionRequest = new \LumoAuth\ApiClient\Model\EndPoppySessionRequest(); // \LumoAuth\ApiClient\Model\EndPoppySessionRequest

try {
    $result = $apiInstance->endPoppySession($orgId, $endPoppySessionRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->endPoppySession: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **endPoppySessionRequest** | [**\LumoAuth\ApiClient\Model\EndPoppySessionRequest**](../Model/EndPoppySessionRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\EndPoppySessionResponse**](../Model/EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPoppyDocument()`

```php
getPoppyDocument($domain, $orgId): \LumoAuth\ApiClient\Model\PoppyDocument
```

poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization's Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$domain = 'domain_example'; // string | A Company domain of the organization, such as example.com.
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getPoppyDocument($domain, $orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->getPoppyDocument: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **string**| A Company domain of the organization, such as example.com. | |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PoppyDocument**](../Model/PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPoppyProtectedResourceMetadata()`

```php
getPoppyProtectedResourceMetadata($domain, $orgId): \LumoAuth\ApiClient\Model\PoppyProtectedResourceMetadata
```

Protected resource metadata of a Company domain

The RFC 9728 document that names the organization's issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$domain = 'domain_example'; // string
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getPoppyProtectedResourceMetadata($domain, $orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->getPoppyProtectedResourceMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **domain** | **string**|  | |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PoppyProtectedResourceMetadata**](../Model/PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPoppySessionStatus()`

```php
getPoppySessionStatus($orgId, $endPoppySessionRequest): \LumoAuth\ApiClient\Model\GetPoppySessionStatusResponse
```

Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user's account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$endPoppySessionRequest = new \LumoAuth\ApiClient\Model\EndPoppySessionRequest(); // \LumoAuth\ApiClient\Model\EndPoppySessionRequest

try {
    $result = $apiInstance->getPoppySessionStatus($orgId, $endPoppySessionRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->getPoppySessionStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **endPoppySessionRequest** | [**\LumoAuth\ApiClient\Model\EndPoppySessionRequest**](../Model/EndPoppySessionRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\GetPoppySessionStatusResponse**](../Model/GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPoppyTasks()`

```php
getPoppyTasks($poppySession, $poppyVersion, $orgId): \LumoAuth\ApiClient\Model\PoppyTasksResponse
```

Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$poppySession = 'poppySession_example'; // string | The Session JWT of this request (specification 5.2).
$poppyVersion = 1.0; // string
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getPoppyTasks($poppySession, $poppyVersion, $orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->getPoppyTasks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **poppySession** | **string**| The Session JWT of this request (specification 5.2). | |
| **poppyVersion** | **string**|  | |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PoppyTasksResponse**](../Model/PoppyTasksResponse.md)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `sendPoppyFeedback()`

```php
sendPoppyFeedback($poppySession, $poppyVersion, $orgId, $sendPoppyFeedbackRequest)
```

Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: BearerAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$poppySession = 'poppySession_example'; // string
$poppyVersion = 1.0; // string
$orgId = 'orgId_example'; // string
$sendPoppyFeedbackRequest = new \LumoAuth\ApiClient\Model\SendPoppyFeedbackRequest(); // \LumoAuth\ApiClient\Model\SendPoppyFeedbackRequest

try {
    $apiInstance->sendPoppyFeedback($poppySession, $poppyVersion, $orgId, $sendPoppyFeedbackRequest);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->sendPoppyFeedback: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **poppySession** | **string**|  | |
| **poppyVersion** | **string**|  | |
| **orgId** | **string**|  | |
| **sendPoppyFeedbackRequest** | [**\LumoAuth\ApiClient\Model\SendPoppyFeedbackRequest**](../Model/SendPoppyFeedbackRequest.md)|  | |

### Return type

void (empty response body)

### Authorization

[BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `verifyPoppySession()`

```php
verifyPoppySession($orgId, $poppyVerifyRequest): \LumoAuth\ApiClient\Model\PoppyVerifyResult
```

Verify a Personal Agent's request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent's metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\PersonalAgentProtocolApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$poppyVerifyRequest = new \LumoAuth\ApiClient\Model\PoppyVerifyRequest(); // \LumoAuth\ApiClient\Model\PoppyVerifyRequest

try {
    $result = $apiInstance->verifyPoppySession($orgId, $poppyVerifyRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PersonalAgentProtocolApi->verifyPoppySession: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **poppyVerifyRequest** | [**\LumoAuth\ApiClient\Model\PoppyVerifyRequest**](../Model/PoppyVerifyRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PoppyVerifyResult**](../Model/PoppyVerifyResult.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
