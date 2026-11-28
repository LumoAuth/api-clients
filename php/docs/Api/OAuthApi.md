# LumoAuth\ApiClient\OAuthApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**authorize()**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint |
| [**backchannelAuthorize()**](OAuthApi.md#backchannelAuthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request |
| [**checkEmailFirst()**](OAuthApi.md#checkEmailFirst) | **POST** /orgs/{orgId}/api/v1/oauth/check-email | Sign-in methods for an email-first form |
| [**deviceAuthorization()**](OAuthApi.md#deviceAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628) |
| [**getClientConfiguration()**](OAuthApi.md#getClientConfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4) |
| [**getDeviceVerification()**](OAuthApi.md#getDeviceVerification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3) |
| [**getOrgSelection()**](OAuthApi.md#getOrgSelection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page |
| [**introspect()**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662) |
| [**par()**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126) |
| [**registerClient()**](OAuthApi.md#registerClient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR) |
| [**requestMagicLink()**](OAuthApi.md#requestMagicLink) | **POST** /orgs/{orgId}/api/v1/oauth/magic-link | Request a sign-in link by email |
| [**revoke()**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009) |
| [**socialCallback()**](OAuthApi.md#socialCallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback |
| [**socialCallbackPost()**](OAuthApi.md#socialCallbackPost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post) |
| [**socialLogin()**](OAuthApi.md#socialLogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login |
| [**submitAuthorization()**](OAuthApi.md#submitAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission) |
| [**submitDeviceVerification()**](OAuthApi.md#submitDeviceVerification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification |
| [**submitLoginJson()**](OAuthApi.md#submitLoginJson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow |
| [**submitOrgSelection()**](OAuthApi.md#submitOrgSelection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection |
| [**token()**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint |


## `authorize()`

```php
authorize($orgId): string
```

OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client's redirect_uri in the requested response_mode. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->authorize($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->authorize: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `backchannelAuthorize()`

```php
backchannelAuthorize($orgId, $scope, $loginHint, $loginHintToken, $idTokenHint, $bindingMessage, $acrValues, $requestedExpiry, $clientNotificationToken, $authorizationDetails, $clientId, $clientSecret, $clientAssertionType, $clientAssertion): \LumoAuth\ApiClient\Model\BackchannelAuthorizeResponse
```

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$scope = 'scope_example'; // string
$loginHint = 'loginHint_example'; // string
$loginHintToken = 'loginHintToken_example'; // string
$idTokenHint = 'idTokenHint_example'; // string
$bindingMessage = 'bindingMessage_example'; // string
$acrValues = 'acrValues_example'; // string
$requestedExpiry = 56; // int | Seconds. An application's request: only shortens the lifetime, which is 120 s; at least 30. An agent-initiated request: 30 to 600, default 300. A value outside the range is moved into it, not refused.
$clientNotificationToken = 'clientNotificationToken_example'; // string
$authorizationDetails = 'authorizationDetails_example'; // string
$clientId = 'clientId_example'; // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead.
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)

try {
    $result = $apiInstance->backchannelAuthorize($orgId, $scope, $loginHint, $loginHintToken, $idTokenHint, $bindingMessage, $acrValues, $requestedExpiry, $clientNotificationToken, $authorizationDetails, $clientId, $clientSecret, $clientAssertionType, $clientAssertion);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->backchannelAuthorize: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **scope** | **string**|  | |
| **loginHint** | **string**|  | [optional] |
| **loginHintToken** | **string**|  | [optional] |
| **idTokenHint** | **string**|  | [optional] |
| **bindingMessage** | **string**|  | [optional] |
| **acrValues** | **string**|  | [optional] |
| **requestedExpiry** | **int**| Seconds. An application&#39;s request: only shortens the lifetime, which is 120 s; at least 30. An agent-initiated request: 30 to 600, default 300. A value outside the range is moved into it, not refused. | [optional] |
| **clientNotificationToken** | **string**|  | [optional] |
| **authorizationDetails** | **string**|  | [optional] |
| **clientId** | **string**| Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\BackchannelAuthorizeResponse**](../Model/BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `checkEmailFirst()`

```php
checkEmailFirst($orgId, $checkEmailFirstRequest): \LumoAuth\ApiClient\Model\CheckEmailFirstResponse
```

Sign-in methods for an email-first form

For applications that render their own sign-in form. Returns the sign-in methods that the organization offers, so that the form can show the next step after an address was typed. The answer does not depend on the address: `exists` is always `true`, and a known address and a new one get the same answer. Takes no credential and signs nobody in. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$checkEmailFirstRequest = new \LumoAuth\ApiClient\Model\CheckEmailFirstRequest(); // \LumoAuth\ApiClient\Model\CheckEmailFirstRequest

try {
    $result = $apiInstance->checkEmailFirst($orgId, $checkEmailFirstRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->checkEmailFirst: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **checkEmailFirstRequest** | [**\LumoAuth\ApiClient\Model\CheckEmailFirstRequest**](../Model/CheckEmailFirstRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\CheckEmailFirstResponse**](../Model/CheckEmailFirstResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deviceAuthorization()`

```php
deviceAuthorization($orgId, $clientId, $clientSecret, $clientAssertionType, $clientAssertion, $scope, $resource): \LumoAuth\ApiClient\Model\DeviceAuthorizationResponse
```

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code. RFC 9396 authorization_details is not read here, as at the authorization and pushed authorization endpoints: rich authorization requests are accepted for agents only (JIT permissions, agent-initiated CIBA); what the token may do is the scope.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead.
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)
$scope = 'scope_example'; // string | Space-separated scopes.
$resource = 'resource_example'; // string | RFC 8707 resource indicator (repeat the field for several): the API that the access token is for. Validated as at the authorization endpoint (absolute URI without a fragment, within the client's audience URIs; invalid_target otherwise). The access token of the device grant is issued for these resources; its token request may name a subset of them.

try {
    $result = $apiInstance->deviceAuthorization($orgId, $clientId, $clientSecret, $clientAssertionType, $clientAssertion, $scope, $resource);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->deviceAuthorization: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**| Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |
| **scope** | **string**| Space-separated scopes. | [optional] |
| **resource** | **string**| RFC 8707 resource indicator (repeat the field for several): the API that the access token is for. Validated as at the authorization endpoint (absolute URI without a fragment, within the client&#39;s audience URIs; invalid_target otherwise). The access token of the device grant is issued for these resources; its token request may name a subset of them. | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\DeviceAuthorizationResponse**](../Model/DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getClientConfiguration()`

```php
getClientConfiguration($orgId, $clientId): \LumoAuth\ApiClient\Model\RegisteredClientMetadata
```

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

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


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$clientId = 'clientId_example'; // string

try {
    $result = $apiInstance->getClientConfiguration($orgId, $clientId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->getClientConfiguration: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **clientId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RegisteredClientMetadata**](../Model/RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getDeviceVerification()`

```php
getDeviceVerification($orgId): string
```

Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getDeviceVerification($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->getDeviceVerification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOrgSelection()`

```php
getOrgSelection($orgId): string
```

Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->getOrgSelection($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->getOrgSelection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `introspect()`

```php
introspect($orgId, $token, $tokenTypeHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion): \LumoAuth\ApiClient\Model\IntrospectResponse
```

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$token = 'token_example'; // string
$tokenTypeHint = 'tokenTypeHint_example'; // string
$clientId = 'clientId_example'; // string | The calling client, with client_secret (client_secret_post), or an agent's id with its secret or assertion. Not needed with HTTP Basic or a client assertion. A public client cannot introspect (401 invalid_client).
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)

try {
    $result = $apiInstance->introspect($orgId, $token, $tokenTypeHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->introspect: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **token** | **string**|  | |
| **tokenTypeHint** | **string**|  | [optional] |
| **clientId** | **string**| The calling client, with client_secret (client_secret_post), or an agent&#39;s id with its secret or assertion. Not needed with HTTP Basic or a client assertion. A public client cannot introspect (401 invalid_client). | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\IntrospectResponse**](../Model/IntrospectResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `par()`

```php
par($orgId, $responseType, $redirectUri, $scope, $state, $nonce, $codeChallenge, $codeChallengeMethod, $request, $resource, $prompt, $loginHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion): \LumoAuth\ApiClient\Model\ParResponse
```

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$responseType = 'responseType_example'; // string
$redirectUri = 'redirectUri_example'; // string
$scope = 'scope_example'; // string
$state = 'state_example'; // string
$nonce = 'nonce_example'; // string
$codeChallenge = 'codeChallenge_example'; // string
$codeChallengeMethod = 'codeChallengeMethod_example'; // string
$request = 'request_example'; // string | A signed request object (JAR, RFC 9101).
$resource = 'resource_example'; // string
$prompt = 'prompt_example'; // string
$loginHint = 'loginHint_example'; // string
$clientId = 'clientId_example'; // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead.
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)

try {
    $result = $apiInstance->par($orgId, $responseType, $redirectUri, $scope, $state, $nonce, $codeChallenge, $codeChallengeMethod, $request, $resource, $prompt, $loginHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->par: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **responseType** | **string**|  | [optional] |
| **redirectUri** | **string**|  | [optional] |
| **scope** | **string**|  | [optional] |
| **state** | **string**|  | [optional] |
| **nonce** | **string**|  | [optional] |
| **codeChallenge** | **string**|  | [optional] |
| **codeChallengeMethod** | **string**|  | [optional] |
| **request** | **string**| A signed request object (JAR, RFC 9101). | [optional] |
| **resource** | **string**|  | [optional] |
| **prompt** | **string**|  | [optional] |
| **loginHint** | **string**|  | [optional] |
| **clientId** | **string**| Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\ParResponse**](../Model/ParResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `registerClient()`

```php
registerClient($orgId, $registerClientRequest): \LumoAuth\ApiClient\Model\RegisterClientResponse
```

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it. Refused with invalid_client_metadata: grant_types other than authorization_code and refresh_token, response_types other than code and none, subject_type other than public, sector_identifier_uri, request_uris, userinfo_signed_response_alg, an id_token_signed_response_alg other than the organization's signing algorithm, and every encryption member (id_token_encrypted_response_*, userinfo_encrypted_response_*, request_object_encryption_*, authorization_encrypted_response_*).

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


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$registerClientRequest = new \LumoAuth\ApiClient\Model\RegisterClientRequest(); // \LumoAuth\ApiClient\Model\RegisterClientRequest | RFC 7591 client metadata.

try {
    $result = $apiInstance->registerClient($orgId, $registerClientRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->registerClient: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **registerClientRequest** | [**\LumoAuth\ApiClient\Model\RegisterClientRequest**](../Model/RegisterClientRequest.md)| RFC 7591 client metadata. | |

### Return type

[**\LumoAuth\ApiClient\Model\RegisterClientResponse**](../Model/RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `requestMagicLink()`

```php
requestMagicLink($orgId, $requestMagicLinkRequest): \LumoAuth\ApiClient\Model\RequestMagicLinkResponse
```

Request a sign-in link by email

For applications that render their own sign-in form. Mails a single-use sign-in link to the address when it belongs to an account of the organization, and gives the same answer when it does not. Signs nobody in and mints no tokens: the person opens the link, confirms on the hosted page, and is then sent to `return_to`, where the application starts its normal authorization flow. A browser request must come from one of the allowed origins of the application named by `client_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$requestMagicLinkRequest = new \LumoAuth\ApiClient\Model\RequestMagicLinkRequest(); // \LumoAuth\ApiClient\Model\RequestMagicLinkRequest

try {
    $result = $apiInstance->requestMagicLink($orgId, $requestMagicLinkRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->requestMagicLink: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **requestMagicLinkRequest** | [**\LumoAuth\ApiClient\Model\RequestMagicLinkRequest**](../Model/RequestMagicLinkRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\RequestMagicLinkResponse**](../Model/RequestMagicLinkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `revoke()`

```php
revoke($orgId, $token, $tokenTypeHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion): object
```

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$token = 'token_example'; // string
$tokenTypeHint = 'tokenTypeHint_example'; // string
$clientId = 'clientId_example'; // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead.
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)

try {
    $result = $apiInstance->revoke($orgId, $token, $tokenTypeHint, $clientId, $clientSecret, $clientAssertionType, $clientAssertion);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->revoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **token** | **string**|  | |
| **tokenTypeHint** | **string**|  | [optional] |
| **clientId** | **string**| Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |

### Return type

**object**

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `socialCallback()`

```php
socialCallback($orgId, $provider)
```

Social / enterprise identity-provider callback

Receives the provider's authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$provider = 'provider_example'; // string

try {
    $apiInstance->socialCallback($orgId, $provider);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->socialCallback: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **provider** | **string**|  | |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `socialCallbackPost()`

```php
socialCallbackPost($orgId, $provider)
```

Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$provider = 'provider_example'; // string

try {
    $apiInstance->socialCallbackPost($orgId, $provider);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->socialCallbackPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **provider** | **string**|  | |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `socialLogin()`

```php
socialLogin($orgId, $provider)
```

Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider's authorization endpoint. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$provider = 'provider_example'; // string

try {
    $apiInstance->socialLogin($orgId, $provider);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->socialLogin: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **provider** | **string**|  | |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `submitAuthorization()`

```php
submitAuthorization($orgId): string
```

OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->submitAuthorization($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->submitAuthorization: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `submitDeviceVerification()`

```php
submitDeviceVerification($orgId): string
```

Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->submitDeviceVerification($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->submitDeviceVerification: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `submitLoginJson()`

```php
submitLoginJson($orgId, $submitLoginJsonRequest): \LumoAuth\ApiClient\Model\SubmitLoginJsonResponse
```

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string
$submitLoginJsonRequest = new \LumoAuth\ApiClient\Model\SubmitLoginJsonRequest(); // \LumoAuth\ApiClient\Model\SubmitLoginJsonRequest

try {
    $result = $apiInstance->submitLoginJson($orgId, $submitLoginJsonRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->submitLoginJson: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **submitLoginJsonRequest** | [**\LumoAuth\ApiClient\Model\SubmitLoginJsonRequest**](../Model/SubmitLoginJsonRequest.md)|  | |

### Return type

[**\LumoAuth\ApiClient\Model\SubmitLoginJsonResponse**](../Model/SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `submitOrgSelection()`

```php
submitOrgSelection($orgId): string
```

Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->submitOrgSelection($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->submitOrgSelection: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/html`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `token()`

```php
token($orgId, $grantType, $code, $redirectUri, $codeVerifier, $refreshToken, $deviceCode, $authReqId, $scope, $resource, $subjectToken, $subjectTokenType, $actorToken, $actorTokenType, $requestedTokenType, $assertion, $clientId, $clientSecret, $clientAssertionType, $clientAssertion): \LumoAuth\ApiClient\Model\TokenResponse
```

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: ClientAuth
$config = LumoAuth\ApiClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new LumoAuth\ApiClient\Api\OAuthApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$grantType = 'grantType_example'; // string
$code = 'code_example'; // string
$redirectUri = 'redirectUri_example'; // string
$codeVerifier = 'codeVerifier_example'; // string
$refreshToken = 'refreshToken_example'; // string
$deviceCode = 'deviceCode_example'; // string
$authReqId = 'authReqId_example'; // string | CIBA
$scope = 'scope_example'; // string
$resource = 'resource_example'; // string
$subjectToken = 'subjectToken_example'; // string | Token exchange (RFC 8693)
$subjectTokenType = 'subjectTokenType_example'; // string
$actorToken = 'actorToken_example'; // string
$actorTokenType = 'actorTokenType_example'; // string
$requestedTokenType = 'requestedTokenType_example'; // string
$assertion = 'assertion_example'; // string | JWT bearer / ID-JAG grant
$clientId = 'clientId_example'; // string | Required for a public client; a confidential client may authenticate with HTTP Basic instead.
$clientSecret = 'clientSecret_example'; // string | client_secret_post
$clientAssertionType = 'clientAssertionType_example'; // string
$clientAssertion = 'clientAssertion_example'; // string | private_key_jwt (RFC 7523)

try {
    $result = $apiInstance->token($orgId, $grantType, $code, $redirectUri, $codeVerifier, $refreshToken, $deviceCode, $authReqId, $scope, $resource, $subjectToken, $subjectTokenType, $actorToken, $actorTokenType, $requestedTokenType, $assertion, $clientId, $clientSecret, $clientAssertionType, $clientAssertion);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OAuthApi->token: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **grantType** | **string**|  | |
| **code** | **string**|  | [optional] |
| **redirectUri** | **string**|  | [optional] |
| **codeVerifier** | **string**|  | [optional] |
| **refreshToken** | **string**|  | [optional] |
| **deviceCode** | **string**|  | [optional] |
| **authReqId** | **string**| CIBA | [optional] |
| **scope** | **string**|  | [optional] |
| **resource** | **string**|  | [optional] |
| **subjectToken** | **string**| Token exchange (RFC 8693) | [optional] |
| **subjectTokenType** | **string**|  | [optional] |
| **actorToken** | **string**|  | [optional] |
| **actorTokenType** | **string**|  | [optional] |
| **requestedTokenType** | **string**|  | [optional] |
| **assertion** | **string**| JWT bearer / ID-JAG grant | [optional] |
| **clientId** | **string**| Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] |
| **clientSecret** | **string**| client_secret_post | [optional] |
| **clientAssertionType** | **string**|  | [optional] |
| **clientAssertion** | **string**| private_key_jwt (RFC 7523) | [optional] |

### Return type

[**\LumoAuth\ApiClient\Model\TokenResponse**](../Model/TokenResponse.md)

### Authorization

[ClientAuth](../../README.md#ClientAuth)

### HTTP request headers

- **Content-Type**: `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
