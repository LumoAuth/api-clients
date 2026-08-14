# \AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_sandbox_destroy**](AdminSandboxApi.md#admin_sandbox_destroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
[**admin_sandbox_list**](AdminSandboxApi.md#admin_sandbox_list) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller's active sandbox tenants (their own only).
[**admin_sandbox_spawn**](AdminSandboxApi.md#admin_sandbox_spawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}



## admin_sandbox_destroy

> admin_sandbox_destroy(org_id, sandbox_slug)
POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**sandbox_slug** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_sandbox_list

> admin_sandbox_list(org_id)
GET / Lists the caller's active sandbox tenants (their own only).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_sandbox_spawn

> admin_sandbox_spawn(org_id)
POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

