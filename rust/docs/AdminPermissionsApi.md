# \AdminPermissionsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_permissions_create**](AdminPermissionsApi.md#admin_permissions_create) | **POST** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant
[**admin_permissions_delete**](AdminPermissionsApi.md#admin_permissions_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission
[**admin_permissions_get**](AdminPermissionsApi.md#admin_permissions_get) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission
[**admin_permissions_list**](AdminPermissionsApi.md#admin_permissions_list) | **GET** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant
[**admin_permissions_update**](AdminPermissionsApi.md#admin_permissions_update) | **PATCH** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission
[**admin_permissions_usage**](AdminPermissionsApi.md#admin_permissions_usage) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission)
[**admin_scopes_create**](AdminPermissionsApi.md#admin_scopes_create) | **POST** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope
[**admin_scopes_delete**](AdminPermissionsApi.md#admin_scopes_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope
[**admin_scopes_list**](AdminPermissionsApi.md#admin_scopes_list) | **GET** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes



## admin_permissions_create

> models::AdminPermissionsCreateResponse admin_permissions_create(org_id)
Create a custom permission for the tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_permissions_delete

> models::MessageResponse admin_permissions_delete(org_id, permission_id)
Delete a custom permission

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_permissions_get

> models::AdminPermissionsGetResponse admin_permissions_get(org_id, permission_id)
Get a single permission

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::AdminPermissionsGetResponse**](AdminPermissionsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_permissions_list

> models::AdminPermissionsListResponse admin_permissions_list(org_id)
List all available permissions for the tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminPermissionsListResponse**](AdminPermissionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_permissions_update

> models::AdminPermissionsCreateResponse admin_permissions_update(org_id, permission_id)
Update a permission

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_permissions_usage

> models::AdminPermissionsUsageResponse admin_permissions_usage(org_id, permission_id)
Get permission usage (roles assigned to this permission)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::AdminPermissionsUsageResponse**](AdminPermissionsUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_scopes_create

> models::AdminScopesCreateResponse admin_scopes_create(org_id)
Create a custom OAuth scope

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminScopesCreateResponse**](AdminScopesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_scopes_delete

> models::MessageResponse admin_scopes_delete(org_id, scope_id)
Delete a custom OAuth scope

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**scope_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_scopes_list

> models::AdminScopesListResponse admin_scopes_list(org_id)
List OAuth scopes

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminScopesListResponse**](AdminScopesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

