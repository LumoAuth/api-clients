# \McpApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_protected_resource_metadata**](McpApi.md#get_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)
[**get_protected_resource_metadata_root**](McpApi.md#get_protected_resource_metadata_root) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)
[**get_server**](McpApi.md#get_server) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
[**get_server_challenge**](McpApi.md#get_server_challenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge
[**list_servers**](McpApi.md#list_servers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
[**post_server_challenge**](McpApi.md#post_server_challenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)



## get_protected_resource_metadata

> models::ProtectedResourceMetadata get_protected_resource_metadata(org_id, server_id)
MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_protected_resource_metadata_root

> models::GetProtectedResourceMetadataRoot200Response get_protected_resource_metadata_root(org_id)
Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetProtectedResourceMetadataRoot200Response**](getProtectedResourceMetadataRoot_200_response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_server

> models::GetServerResponse get_server(org_id, server_id)
REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_server_challenge

> models::GetServerChallengeResponse get_server_challenge(org_id, server_id)
Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server's protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_servers

> models::ListServersResponse list_servers(org_id)
REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ListServersResponse**](ListServersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_server_challenge

> models::GetServerChallengeResponse post_server_challenge(org_id, server_id)
Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**server_id** | **String** |  | [required] |

### Return type

[**models::GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

