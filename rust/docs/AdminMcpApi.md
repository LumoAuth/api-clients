# \AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_mcp_servers_create**](AdminMcpApi.md#admin_mcp_servers_create) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**admin_mcp_servers_delete**](AdminMcpApi.md#admin_mcp_servers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**admin_mcp_servers_get**](AdminMcpApi.md#admin_mcp_servers_get) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**admin_mcp_servers_list**](AdminMcpApi.md#admin_mcp_servers_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers



## admin_mcp_servers_create

> models::AdminMcpServersCreateResponse admin_mcp_servers_create(org_id)
Register an MCP server

Body: name (required) — display name resource_uri (required) — RFC 8707 canonical URI; must be http(s)://, no fragment endpoint_url (optional) — actual MCP endpoint description (optional) scopes_supported (optional) — array OR space/comma-separated string transport (optional) — defaults to \"http_streamable\" auth_mode (optional) — defaults to \"oauth\" token_lifetime (optional, default 3600) — clamped to [60, 86400] allowed_client_ids (optional) — array of this organization's OAuth client ids;     unknown ids are a 422 (never persisted as policy) require_pkce (optional, default true) require_resource_param (optional, default true) require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

