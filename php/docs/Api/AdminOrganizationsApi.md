# LumoAuth\ApiClient\AdminOrganizationsApi

All URIs are relative to https://app.lumoauth.dev, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**adminOrgInvitationsCreate()**](AdminOrganizationsApi.md#adminOrgInvitationsCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization |
| [**adminOrgInvitationsList()**](AdminOrganizationsApi.md#adminOrgInvitationsList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations |
| [**adminOrgInvitationsResend()**](AdminOrganizationsApi.md#adminOrgInvitationsResend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation |
| [**adminOrgInvitationsRevoke()**](AdminOrganizationsApi.md#adminOrgInvitationsRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation |
| [**adminOrgMembersAdd()**](AdminOrganizationsApi.md#adminOrgMembersAdd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization |
| [**adminOrgMembersList()**](AdminOrganizationsApi.md#adminOrgMembersList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members |
| [**adminOrgMembersRemove()**](AdminOrganizationsApi.md#adminOrgMembersRemove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization |
| [**adminOrgRolesCreate()**](AdminOrganizationsApi.md#adminOrgRolesCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role |
| [**adminOrgRolesDelete()**](AdminOrganizationsApi.md#adminOrgRolesDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role |
| [**adminOrgRolesList()**](AdminOrganizationsApi.md#adminOrgRolesList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles |
| [**adminOrganizationsCreate()**](AdminOrganizationsApi.md#adminOrganizationsCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization |
| [**adminOrganizationsDelete()**](AdminOrganizationsApi.md#adminOrganizationsDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization |
| [**adminOrganizationsGet()**](AdminOrganizationsApi.md#adminOrganizationsGet) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization |
| [**adminOrganizationsList()**](AdminOrganizationsApi.md#adminOrganizationsList) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations |
| [**patchAdminOrgMembersUpdate()**](AdminOrganizationsApi.md#patchAdminOrgMembersUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**patchAdminOrgRolesUpdate()**](AdminOrganizationsApi.md#patchAdminOrgRolesUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**patchAdminOrganizationsUpdate()**](AdminOrganizationsApi.md#patchAdminOrganizationsUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |
| [**putAdminOrgMembersUpdate()**](AdminOrganizationsApi.md#putAdminOrgMembersUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**putAdminOrgRolesUpdate()**](AdminOrganizationsApi.md#putAdminOrgRolesUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**putAdminOrganizationsUpdate()**](AdminOrganizationsApi.md#putAdminOrganizationsUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |


## `adminOrgInvitationsCreate()`

```php
adminOrgInvitationsCreate($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgInvitationsCreateResponse
```

Invite a user to an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgInvitationsCreate($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgInvitationsCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgInvitationsCreateResponse**](../Model/AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrgInvitationsList()`

```php
adminOrgInvitationsList($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgInvitationsListResponse
```

List organization invitations

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgInvitationsList($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgInvitationsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgInvitationsListResponse**](../Model/AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrgInvitationsResend()`

```php
adminOrgInvitationsResend($orgId, $organizationId, $invId): \LumoAuth\ApiClient\Model\MessageResponse
```

Resend an invitation

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$invId = 'invId_example'; // string

try {
    $result = $apiInstance->adminOrgInvitationsResend($orgId, $organizationId, $invId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgInvitationsResend: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **invId** | **string**|  | |

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

## `adminOrgInvitationsRevoke()`

```php
adminOrgInvitationsRevoke($orgId, $organizationId, $invId): \LumoAuth\ApiClient\Model\MessageResponse
```

Revoke an invitation

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$invId = 'invId_example'; // string

try {
    $result = $apiInstance->adminOrgInvitationsRevoke($orgId, $organizationId, $invId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgInvitationsRevoke: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **invId** | **string**|  | |

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

## `adminOrgMembersAdd()`

```php
adminOrgMembersAdd($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgMembersAddResponse
```

Add a member to an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgMembersAdd($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgMembersAdd: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgMembersAddResponse**](../Model/AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrgMembersList()`

```php
adminOrgMembersList($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgMembersListResponse
```

List organization members

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgMembersList($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgMembersList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgMembersListResponse**](../Model/AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrgMembersRemove()`

```php
adminOrgMembersRemove($orgId, $organizationId, $userId): \LumoAuth\ApiClient\Model\MessageResponse
```

Remove a member from an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->adminOrgMembersRemove($orgId, $organizationId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgMembersRemove: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **userId** | **string**|  | |

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

## `adminOrgRolesCreate()`

```php
adminOrgRolesCreate($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse
```

Create an organization role

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgRolesCreate($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgRolesCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse**](../Model/AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrgRolesDelete()`

```php
adminOrgRolesDelete($orgId, $organizationId, $roleId): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an organization role

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$roleId = 'roleId_example'; // string

try {
    $result = $apiInstance->adminOrgRolesDelete($orgId, $organizationId, $roleId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgRolesDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **roleId** | **string**|  | |

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

## `adminOrgRolesList()`

```php
adminOrgRolesList($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrgRolesListResponse
```

List organization roles

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrgRolesList($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrgRolesList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgRolesListResponse**](../Model/AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrganizationsCreate()`

```php
adminOrganizationsCreate($orgId): \LumoAuth\ApiClient\Model\AdminOrganizationsCreateResponse
```

Create an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminOrganizationsCreate($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrganizationsCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrganizationsCreateResponse**](../Model/AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrganizationsDelete()`

```php
adminOrganizationsDelete($orgId, $organizationId): \LumoAuth\ApiClient\Model\MessageResponse
```

Delete an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrganizationsDelete($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrganizationsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

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

## `adminOrganizationsGet()`

```php
adminOrganizationsGet($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse
```

Get an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->adminOrganizationsGet($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrganizationsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse**](../Model/AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `adminOrganizationsList()`

```php
adminOrganizationsList($orgId): \LumoAuth\ApiClient\Model\AdminOrganizationsListResponse
```

List organizations

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string

try {
    $result = $apiInstance->adminOrganizationsList($orgId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->adminOrganizationsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrganizationsListResponse**](../Model/AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminOrgMembersUpdate()`

```php
patchAdminOrgMembersUpdate($orgId, $organizationId, $userId): \LumoAuth\ApiClient\Model\PutAdminOrgMembersUpdateResponse
```

Update a member's role or status

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->patchAdminOrgMembersUpdate($orgId, $organizationId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->patchAdminOrgMembersUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAdminOrgMembersUpdateResponse**](../Model/PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminOrgRolesUpdate()`

```php
patchAdminOrgRolesUpdate($orgId, $organizationId, $roleId): \LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse
```

Update an organization role

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$roleId = 'roleId_example'; // string

try {
    $result = $apiInstance->patchAdminOrgRolesUpdate($orgId, $organizationId, $roleId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->patchAdminOrgRolesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **roleId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse**](../Model/AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchAdminOrganizationsUpdate()`

```php
patchAdminOrganizationsUpdate($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse
```

Update an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->patchAdminOrganizationsUpdate($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->patchAdminOrganizationsUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse**](../Model/AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminOrgMembersUpdate()`

```php
putAdminOrgMembersUpdate($orgId, $organizationId, $userId): \LumoAuth\ApiClient\Model\PutAdminOrgMembersUpdateResponse
```

Update a member's role or status

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$userId = 'userId_example'; // string

try {
    $result = $apiInstance->putAdminOrgMembersUpdate($orgId, $organizationId, $userId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->putAdminOrgMembersUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **userId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\PutAdminOrgMembersUpdateResponse**](../Model/PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminOrgRolesUpdate()`

```php
putAdminOrgRolesUpdate($orgId, $organizationId, $roleId): \LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse
```

Update an organization role

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string
$roleId = 'roleId_example'; // string

try {
    $result = $apiInstance->putAdminOrgRolesUpdate($orgId, $organizationId, $roleId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->putAdminOrgRolesUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |
| **roleId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrgRolesCreateResponse**](../Model/AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putAdminOrganizationsUpdate()`

```php
putAdminOrganizationsUpdate($orgId, $organizationId): \LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse
```

Update an organization

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


$apiInstance = new LumoAuth\ApiClient\Api\AdminOrganizationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$orgId = 'orgId_example'; // string
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->putAdminOrganizationsUpdate($orgId, $organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AdminOrganizationsApi->putAdminOrganizationsUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **orgId** | **string**|  | |
| **organizationId** | **string**|  | |

### Return type

[**\LumoAuth\ApiClient\Model\AdminOrganizationsGetResponse**](../Model/AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth), [BearerAuth](../../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
