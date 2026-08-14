# \AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_webhooks_create**](AdminWebhooksApi.md#admin_webhooks_create) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a new webhook
[**admin_webhooks_delete**](AdminWebhooksApi.md#admin_webhooks_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
[**admin_webhooks_deliveries_list**](AdminWebhooksApi.md#admin_webhooks_deliveries_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent delivery attempts for a webhook.
[**admin_webhooks_delivery_replay**](AdminWebhooksApi.md#admin_webhooks_delivery_replay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
[**admin_webhooks_delivery_show**](AdminWebhooksApi.md#admin_webhooks_delivery_show) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.
[**admin_webhooks_events**](AdminWebhooksApi.md#admin_webhooks_events) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | Get available webhook event types
[**admin_webhooks_get**](AdminWebhooksApi.md#admin_webhooks_get) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a single webhook by ID
[**admin_webhooks_list**](AdminWebhooksApi.md#admin_webhooks_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List all webhooks in the tenant
[**admin_webhooks_rotate_secret**](AdminWebhooksApi.md#admin_webhooks_rotate_secret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate webhook secret
[**admin_webhooks_test**](AdminWebhooksApi.md#admin_webhooks_test) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Test a webhook by sending a test payload
[**admin_webhooks_tunnel_start**](AdminWebhooksApi.md#admin_webhooks_tunnel_start) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | 
[**admin_webhooks_tunnel_stop**](AdminWebhooksApi.md#admin_webhooks_tunnel_stop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | 
[**admin_webhooks_tunnel_stream**](AdminWebhooksApi.md#admin_webhooks_tunnel_stream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | 
[**admin_webhooks_webhooks_disable**](AdminWebhooksApi.md#admin_webhooks_webhooks_disable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable webhook
[**admin_webhooks_webhooks_enable**](AdminWebhooksApi.md#admin_webhooks_webhooks_enable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable webhook
[**patch_admin_webhooks_update**](AdminWebhooksApi.md#patch_admin_webhooks_update) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook
[**put_admin_webhooks_update**](AdminWebhooksApi.md#put_admin_webhooks_update) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook



## admin_webhooks_create

> admin_webhooks_create(org_id)
Create a new webhook

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


## admin_webhooks_delete

> admin_webhooks_delete(org_id, webhook_id)
Delete a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_deliveries_list

> admin_webhooks_deliveries_list(org_id, webhook_id)
List recent delivery attempts for a webhook.

Optional query params: - status: filter by `pending|success|failed|dead_lettered` - limit: 1–200, default 50

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_delivery_replay

> admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)
Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage

Resets the delivery's failure state but preserves the attempt history, then dispatches a fresh DispatchWebhookMessage that the handler will pick up. Idempotent on already-pending rows.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |
**delivery_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_delivery_show

> admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)
Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |
**delivery_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_events

> admin_webhooks_events(org_id)
Get available webhook event types

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


## admin_webhooks_get

> admin_webhooks_get(org_id, webhook_id)
Get a single webhook by ID

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_list

> admin_webhooks_list(org_id)
List all webhooks in the tenant

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


## admin_webhooks_rotate_secret

> admin_webhooks_rotate_secret(org_id, webhook_id)
Rotate webhook secret

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_test

> admin_webhooks_test(org_id, webhook_id)
Test a webhook by sending a test payload

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_tunnel_start

> admin_webhooks_tunnel_start(org_id)


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


## admin_webhooks_tunnel_stop

> admin_webhooks_tunnel_stop(org_id, webhook_id)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_tunnel_stream

> admin_webhooks_tunnel_stream(org_id, webhook_id)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_webhooks_disable

> admin_webhooks_webhooks_disable(org_id, webhook_id)
Disable webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_webhooks_enable

> admin_webhooks_webhooks_enable(org_id, webhook_id)
Enable webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_webhooks_update

> patch_admin_webhooks_update(org_id, webhook_id)
Update an existing webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_webhooks_update

> put_admin_webhooks_update(org_id, webhook_id)
Update an existing webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

