# \AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_mcp_servers_create**](AdminMcpApi.md#admin_mcp_servers_create) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**admin_mcp_servers_delete**](AdminMcpApi.md#admin_mcp_servers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**admin_mcp_servers_get**](AdminMcpApi.md#admin_mcp_servers_get) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**admin_mcp_servers_grants_list**](AdminMcpApi.md#admin_mcp_servers_grants_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server
[**admin_mcp_servers_grants_remove**](AdminMcpApi.md#admin_mcp_servers_grants_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server
[**admin_mcp_servers_grants_set**](AdminMcpApi.md#admin_mcp_servers_grants_set) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call
[**admin_mcp_servers_list**](AdminMcpApi.md#admin_mcp_servers_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers
[**patch_admin_mcp_servers_update**](AdminMcpApi.md#patch_admin_mcp_servers_update) | **PATCH** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server
[**put_admin_mcp_servers_update**](AdminMcpApi.md#put_admin_mcp_servers_update) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Update an MCP server (same as PATCH: only the fields that are sent change)



## admin_mcp_servers_create

> models::AdminMcpServersCreateResponse admin_mcp_servers_create(org_id, mcp_server_write)
Register an MCP server

The `resource_uri` is stored and returned in canonical form: lower-case scheme and host, no default port, no trailing slash, no dot segments. Token requests match it in any equivalent spelling.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  | [required] |

### Return type

[**models::AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_delete

> models::MessageResponse admin_mcp_servers_delete(org_id, server_id)
Delete an MCP server

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_get

> models::AdminMcpServersGetResponse admin_mcp_servers_get(org_id, server_id)
Get an MCP server

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::AdminMcpServersGetResponse**](AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_grants_list

> models::AdminMcpServersGrantsListResponse admin_mcp_servers_grants_list(org_id, server_id, agent_id)
List the agents allowed to call tools of an MCP server

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |
**agent_id** | Option<**String**> | Only the grants of this agent (agentId or numeric id). |  |

### Return type

[**models::AdminMcpServersGrantsListResponse**](AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_grants_remove

> models::AdminMcpServersGrantsRemoveResponse admin_mcp_servers_grants_remove(org_id, server_id, agent_id)
Remove every grant of an agent on an MCP server

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminMcpServersGrantsRemoveResponse**](AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_grants_set

> models::AdminMcpServersGrantsSetResponse admin_mcp_servers_grants_set(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)
Set the tools of an MCP server that an agent may call

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |
**admin_mcp_servers_grants_set_request** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md) |  | [required] |

### Return type

[**models::AdminMcpServersGrantsSetResponse**](AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_mcp_servers_list

> models::AdminMcpServersListResponse admin_mcp_servers_list(org_id)
List MCP servers

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminMcpServersListResponse**](AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_mcp_servers_update

> models::AdminMcpServersCreateResponse patch_admin_mcp_servers_update(org_id, server_id, mcp_server_write)
Update an MCP server

Only the fields that are sent change; each is judged as on create. `resource_uri` cannot be changed (400): register a new server for another address. Changes apply to the next token request.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |
**mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  | [required] |

### Return type

[**models::AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_mcp_servers_update

> models::AdminMcpServersCreateResponse put_admin_mcp_servers_update(org_id, server_id, mcp_server_write)
Update an MCP server (same as PATCH: only the fields that are sent change)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |
**mcp_server_write** | [**McpServerWrite**](McpServerWrite.md) |  | [required] |

### Return type

[**models::AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

