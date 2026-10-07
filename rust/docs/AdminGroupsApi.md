# \AdminGroupsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_groups_add_members**](AdminGroupsApi.md#admin_groups_add_members) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group
[**admin_groups_add_role**](AdminGroupsApi.md#admin_groups_add_role) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
[**admin_groups_create**](AdminGroupsApi.md#admin_groups_create) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group
[**admin_groups_delete**](AdminGroupsApi.md#admin_groups_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
[**admin_groups_get**](AdminGroupsApi.md#admin_groups_get) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
[**admin_groups_get_members**](AdminGroupsApi.md#admin_groups_get_members) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
[**admin_groups_groups_get_roles**](AdminGroupsApi.md#admin_groups_groups_get_roles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
[**admin_groups_list**](AdminGroupsApi.md#admin_groups_list) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
[**admin_groups_remove_member**](AdminGroupsApi.md#admin_groups_remove_member) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group
[**admin_groups_remove_role**](AdminGroupsApi.md#admin_groups_remove_role) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
[**admin_groups_update_roles**](AdminGroupsApi.md#admin_groups_update_roles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
[**patch_admin_groups_update**](AdminGroupsApi.md#patch_admin_groups_update) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
[**put_admin_groups_update**](AdminGroupsApi.md#put_admin_groups_update) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group



## admin_groups_add_members

> models::AdminGroupsCreateResponse admin_groups_add_members(org_id, group_id)
Add member(s) to group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_add_role

> models::MessageResponse admin_groups_add_role(org_id, group_id)
Add a single role to a group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_create

> models::AdminGroupsCreateResponse admin_groups_create(org_id)
Create a new group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_delete

> models::MessageResponse admin_groups_delete(org_id, group_id)
Delete a group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_get

> models::AdminGroupsGetResponse admin_groups_get(org_id, group_id)
Get a single group by ID or slug

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsGetResponse**](AdminGroupsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_get_members

> models::AdminGroupsGetMembersResponse admin_groups_get_members(org_id, group_id)
Get group members

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsGetMembersResponse**](AdminGroupsGetMembersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_groups_get_roles

> models::AdminGroupsGroupsGetRolesResponse admin_groups_groups_get_roles(org_id, group_id)
Get group roles

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_list

> models::AdminGroupsListResponse admin_groups_list(org_id)
List all groups in the tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsListResponse**](AdminGroupsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_remove_member

> models::MessageResponse admin_groups_remove_member(org_id, group_id, user_id)
Remove member from group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_remove_role

> models::MessageResponse admin_groups_remove_role(org_id, group_id, role_id)
Remove a role from a group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_groups_update_roles

> models::AdminGroupsCreateResponse admin_groups_update_roles(org_id, group_id)
Update group roles (replaces all existing roles)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_groups_update

> models::AdminGroupsCreateResponse patch_admin_groups_update(org_id, group_id)
Update an existing group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_groups_update

> models::AdminGroupsCreateResponse put_admin_groups_update(org_id, group_id)
Update an existing group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

