# \AdminAgentsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_agents_activate**](AdminAgentsApi.md#admin_agents_activate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
[**admin_agents_agents_disable**](AdminAgentsApi.md#admin_agents_agents_disable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
[**admin_agents_agents_enable**](AdminAgentsApi.md#admin_agents_agents_enable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
[**admin_agents_agents_rotate_key**](AdminAgentsApi.md#admin_agents_agents_rotate_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
[**admin_agents_create**](AdminAgentsApi.md#admin_agents_create) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
[**admin_agents_deactivate**](AdminAgentsApi.md#admin_agents_deactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
[**admin_agents_delete**](AdminAgentsApi.md#admin_agents_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
[**admin_agents_generate_token**](AdminAgentsApi.md#admin_agents_generate_token) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
[**admin_agents_get**](AdminAgentsApi.md#admin_agents_get) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
[**admin_agents_get_scopes**](AdminAgentsApi.md#admin_agents_get_scopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
[**admin_agents_list**](AdminAgentsApi.md#admin_agents_list) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
[**admin_agents_revoke_key**](AdminAgentsApi.md#admin_agents_revoke_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
[**admin_agents_rotate_credentials**](AdminAgentsApi.md#admin_agents_rotate_credentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
[**admin_agents_set_scopes**](AdminAgentsApi.md#admin_agents_set_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
[**patch_admin_agents_update**](AdminAgentsApi.md#patch_admin_agents_update) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
[**put_admin_agents_update**](AdminAgentsApi.md#put_admin_agents_update) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent



## admin_agents_activate

> models::AdminAgentsActivateResponse admin_agents_activate(org_id, agent_id)
Activate an agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_agents_disable

> models::AdminAgentsAgentsDisableResponse admin_agents_agents_disable(org_id, agent_id)
Disable agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_agents_enable

> models::AdminAgentsAgentsEnableResponse admin_agents_agents_enable(org_id, agent_id)
Enable agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_agents_rotate_key

> models::AdminAgentsAgentsRotateKeyResponse admin_agents_agents_rotate_key(org_id, agent_id)
Rotate agent API key

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_create

> models::AdminAgentsCreateResponse admin_agents_create(org_id, admin_agents_create_request)
Create a new agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**admin_agents_create_request** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md) |  | [required] |

### Return type

[**models::AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_deactivate

> models::AdminAgentsDeactivateResponse admin_agents_deactivate(org_id, agent_id)
Deactivate an agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_delete

> models::MessageResponse admin_agents_delete(org_id, agent_id)
Delete an agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_generate_token

> models::AdminAgentsGenerateTokenResponse admin_agents_generate_token(org_id, agent_id, admin_agents_generate_token_request)
Generate a token for the agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |
**admin_agents_generate_token_request** | Option<[**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md)> |  |  |

### Return type

[**models::AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_get

> models::AdminAgentsGetResponse admin_agents_get(org_id, agent_id)
Get a single agent by ID or agentId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_get_scopes

> models::AdminAgentsGetScopesResponse admin_agents_get_scopes(org_id, agent_id)
Get agent scopes/capabilities

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_list

> models::AdminAgentsListResponse admin_agents_list(org_id)
List all agents in the tenant

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_revoke_key

> models::AdminAgentsRevokeKeyResponse admin_agents_revoke_key(org_id, agent_id)
Revoke agent API key (nullify it so it can no longer authenticate)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_rotate_credentials

> models::AdminAgentsRotateCredentialsResponse admin_agents_rotate_credentials(org_id, agent_id)
Rotate agent credentials

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_agents_set_scopes

> models::AdminAgentsSetScopesResponse admin_agents_set_scopes(org_id, agent_id, admin_agents_set_scopes_request)
Update agent scopes/capabilities

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |
**admin_agents_set_scopes_request** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md) |  | [required] |

### Return type

[**models::AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_agents_update

> models::PutAdminAgentsUpdateResponse patch_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
Update an existing agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |
**put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_agents_update

> models::PutAdminAgentsUpdateResponse put_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
Update an existing agent

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**agent_id** | **String** |  | [required] |
**put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

