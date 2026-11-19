# \AdminRolesApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_roles_add_permissions**](AdminRolesApi.md#admin_roles_add_permissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
[**admin_roles_add_user**](AdminRolesApi.md#admin_roles_add_user) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
[**admin_roles_create**](AdminRolesApi.md#admin_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role
[**admin_roles_delete**](AdminRolesApi.md#admin_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
[**admin_roles_get**](AdminRolesApi.md#admin_roles_get) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
[**admin_roles_get_permissions**](AdminRolesApi.md#admin_roles_get_permissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
[**admin_roles_get_users**](AdminRolesApi.md#admin_roles_get_users) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
[**admin_roles_list**](AdminRolesApi.md#admin_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
[**admin_roles_remove_permission**](AdminRolesApi.md#admin_roles_remove_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
[**admin_roles_remove_user**](AdminRolesApi.md#admin_roles_remove_user) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
[**admin_roles_update_permissions**](AdminRolesApi.md#admin_roles_update_permissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
[**patch_admin_roles_update**](AdminRolesApi.md#patch_admin_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
[**put_admin_roles_update**](AdminRolesApi.md#put_admin_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role



## admin_roles_add_permissions

> models::MessageResponse admin_roles_add_permissions(org_id, role_id)
Add permission(s) to a role

Needs `roles.assign-permissions` and `roles.edit`. Takes `permissionId` or a list `permissionIds`. Every id is judged before anything changes: an unknown id is 400 (`Unknown permission: <id>`), and a permission that the caller does not hold is 403. Either refusal adds nothing. A permission that the role already holds is left as it is. When the role starts to open the admin portal, each active holder that is not an administrator yet takes an admin seat; too few free seats refuse the whole request with 403 `plan_limit_reached`, and `requested` says how many seats it needs.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_add_user

> models::MessageResponse admin_roles_add_user(org_id, role_id)
Assign a user to a role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_create

> models::AdminRolesCreateResponse admin_roles_create(org_id)
Create a new role

Optional `permissions` is a list of permission slugs. Giving it needs `roles.assign-permissions` as well as `roles.create`, and every permission must be one that the caller holds; otherwise the answer is 403 and no role is created. An unknown slug is 400.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_delete

> models::MessageResponse admin_roles_delete(org_id, role_id)
Delete a role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_get

> models::AdminRolesGetResponse admin_roles_get(org_id, role_id)
Get a single role by ID or slug

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesGetResponse**](AdminRolesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_get_permissions

> models::AdminRolesGetPermissionsResponse admin_roles_get_permissions(org_id, role_id)
Get role permissions

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_get_users

> models::AdminRolesGetUsersResponse admin_roles_get_users(org_id, role_id)
Get users assigned to a role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesGetUsersResponse**](AdminRolesGetUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_list

> models::AdminRolesListResponse admin_roles_list(org_id)
List all roles in the tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesListResponse**](AdminRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_remove_permission

> models::MessageResponse admin_roles_remove_permission(org_id, role_id, permission_id)
Remove a permission from a role

Needs `roles.assign-permissions` and `roles.edit`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_remove_user

> models::MessageResponse admin_roles_remove_user(org_id, role_id, user_id)
Remove a user from a role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_roles_update_permissions

> models::AdminRolesCreateResponse admin_roles_update_permissions(org_id, role_id)
Update role permissions (replaces all)

Needs `roles.assign-permissions` and `roles.edit`. `permissions` is the full list of permission slugs that the role should grant. The whole list is judged before anything changes: an unknown slug is 400 (`Unknown permission: <slug>`), and a permission that the role does not hold yet must be one that the caller holds, otherwise 403. Either refusal changes nothing. Permissions on the role that the caller does not hold are kept, whether or not the list names them. When the role starts to open the admin portal, each active holder that is not an administrator yet takes an admin seat; too few free seats refuse the whole change with 403 `plan_limit_reached`, and `requested` says how many seats it needs.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_roles_update

> models::AdminRolesCreateResponse patch_admin_roles_update(org_id, role_id)
Update an existing role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_roles_update

> models::AdminRolesCreateResponse put_admin_roles_update(org_id, role_id)
Update an existing role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

