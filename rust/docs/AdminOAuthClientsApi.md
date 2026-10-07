# \AdminOAuthClientsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](AdminOAuthClientsApi.md#create_client) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client
[**delete_client**](AdminOAuthClientsApi.md#delete_client) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
[**disable_client**](AdminOAuthClientsApi.md#disable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client
[**enable_client**](AdminOAuthClientsApi.md#enable_client) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client
[**get_client**](AdminOAuthClientsApi.md#get_client) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client
[**list_client_scopes**](AdminOAuthClientsApi.md#list_client_scopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client
[**list_clients**](AdminOAuthClientsApi.md#list_clients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients
[**patch_client**](AdminOAuthClientsApi.md#patch_client) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client
[**rotate_client_secret**](AdminOAuthClientsApi.md#rotate_client_secret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret
[**set_client_scopes**](AdminOAuthClientsApi.md#set_client_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client
[**update_client**](AdminOAuthClientsApi.md#update_client) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client



## create_client

> models::CreateClientResponse create_client(org_id)
Create an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::CreateClientResponse**](CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_client

> models::MessageResponse delete_client(org_id, client_id)
Delete an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disable_client

> models::UpdateClientResponse disable_client(org_id, client_id)
Disable an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enable_client

> models::UpdateClientResponse enable_client(org_id, client_id)
Enable an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_client

> models::GetClientResponse get_client(org_id, client_id)
Get an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::GetClientResponse**](GetClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_client_scopes

> models::ListClientScopesResponse list_client_scopes(org_id, client_id)
List the scopes granted to an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::ListClientScopesResponse**](ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_clients

> models::ListClientsResponse list_clients(org_id)
List OAuth clients

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ListClientsResponse**](ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_client

> models::UpdateClientResponse patch_client(org_id, client_id)
Update an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rotate_client_secret

> models::RotateClientSecretResponse rotate_client_secret(org_id, client_id)
Rotate an OAuth client secret

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::RotateClientSecretResponse**](RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_client_scopes

> models::SetClientScopesResponse set_client_scopes(org_id, client_id)
Replace the scopes granted to an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::SetClientScopesResponse**](SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_client

> models::UpdateClientResponse update_client(org_id, client_id)
Replace an OAuth client

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**client_id** | **String** |  | [required] |

### Return type

[**models::UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

