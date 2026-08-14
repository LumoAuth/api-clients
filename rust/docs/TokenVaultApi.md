# \TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_connection_token**](TokenVaultApi.md#get_connection_token) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection.
[**list_connections**](TokenVaultApi.md#list_connections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the connections this agent may use, with grant status. No secrets.



## get_connection_token

> get_connection_token(org_id, connection_id)
Fetch a live third-party access token for a connection.

POST /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token Body (optional): {\"user_id\": \"<uuid or email>\"} for user-delegated grants.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**connection_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_connections

> list_connections(org_id)
List the connections this agent may use, with grant status. No secrets.

GET /orgs/{orgId}/api/v1/agents/me/connections

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

