# \AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_sandbox_destroy**](AdminSandboxApi.md#admin_sandbox_destroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
[**admin_sandbox_list**](AdminSandboxApi.md#admin_sandbox_list) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller's sandbox tenants
[**admin_sandbox_spawn**](AdminSandboxApi.md#admin_sandbox_spawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant



## admin_sandbox_destroy

> models::MessageResponse admin_sandbox_destroy(org_id, sandbox_slug)
Destroy a sandbox tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**sandbox_slug** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_sandbox_list

> models::AdminSandboxListResponse admin_sandbox_list(org_id)
List the caller's sandbox tenants

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_sandbox_spawn

> models::AdminSandboxSpawnResponse admin_sandbox_spawn(org_id, admin_sandbox_spawn_request)
Spawn a sandbox tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**admin_sandbox_spawn_request** | Option<[**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md)> |  |  |

### Return type

[**models::AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

