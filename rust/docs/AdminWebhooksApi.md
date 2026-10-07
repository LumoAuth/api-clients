# \AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_webhooks_create**](AdminWebhooksApi.md#admin_webhooks_create) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook
[**admin_webhooks_delete**](AdminWebhooksApi.md#admin_webhooks_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
[**admin_webhooks_deliveries_list**](AdminWebhooksApi.md#admin_webhooks_deliveries_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries
[**admin_webhooks_delivery_replay**](AdminWebhooksApi.md#admin_webhooks_delivery_replay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery
[**admin_webhooks_delivery_show**](AdminWebhooksApi.md#admin_webhooks_delivery_show) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery
[**admin_webhooks_events**](AdminWebhooksApi.md#admin_webhooks_events) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types
[**admin_webhooks_get**](AdminWebhooksApi.md#admin_webhooks_get) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook
[**admin_webhooks_list**](AdminWebhooksApi.md#admin_webhooks_list) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks
[**admin_webhooks_rotate_secret**](AdminWebhooksApi.md#admin_webhooks_rotate_secret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret
[**admin_webhooks_test**](AdminWebhooksApi.md#admin_webhooks_test) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery
[**admin_webhooks_tunnel_start**](AdminWebhooksApi.md#admin_webhooks_tunnel_start) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel
[**admin_webhooks_tunnel_stop**](AdminWebhooksApi.md#admin_webhooks_tunnel_stop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel
[**admin_webhooks_tunnel_stream**](AdminWebhooksApi.md#admin_webhooks_tunnel_stream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)
[**admin_webhooks_webhooks_disable**](AdminWebhooksApi.md#admin_webhooks_webhooks_disable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook
[**admin_webhooks_webhooks_enable**](AdminWebhooksApi.md#admin_webhooks_webhooks_enable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook
[**patch_admin_webhooks_update**](AdminWebhooksApi.md#patch_admin_webhooks_update) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook
[**put_admin_webhooks_update**](AdminWebhooksApi.md#put_admin_webhooks_update) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook



## admin_webhooks_create

> models::AdminWebhooksCreateResponse admin_webhooks_create(org_id)
Create a webhook

The signing secret is generated server-side and returned once in this response only.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksCreateResponse**](AdminWebhooksCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_delete

> models::MessageResponse admin_webhooks_delete(org_id, webhook_id)
Delete a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_deliveries_list

> models::AdminWebhooksDeliveriesListResponse admin_webhooks_deliveries_list(org_id, webhook_id)
List recent deliveries

Most recent delivery attempts for the webhook (single page, newest first). Optional `status` filter (pending|success|failed|dead_lettered) and `limit` (1-200, default 50).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksDeliveriesListResponse**](AdminWebhooksDeliveriesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_delivery_replay

> models::AdminWebhooksDeliveryReplayResponse admin_webhooks_delivery_replay(org_id, webhook_id, delivery_id)
Replay a delivery

Resets the delivery's failure state (attempt history is preserved) and re-enqueues it. Idempotent on already-pending rows.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |
**delivery_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksDeliveryReplayResponse**](AdminWebhooksDeliveryReplayResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_delivery_show

> models::AdminWebhooksDeliveryShowResponse admin_webhooks_delivery_show(org_id, webhook_id, delivery_id)
Get a delivery

A single delivery including the event payload and the per-attempt history.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |
**delivery_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksDeliveryShowResponse**](AdminWebhooksDeliveryShowResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_events

> models::AdminWebhooksEventsResponse admin_webhooks_events(org_id)
List available webhook event types

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksEventsResponse**](AdminWebhooksEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_get

> models::AdminWebhooksGetResponse admin_webhooks_get(org_id, webhook_id)
Get a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksGetResponse**](AdminWebhooksGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_list

> models::AdminWebhooksListResponse admin_webhooks_list(org_id)
List webhooks

Paginated list of the tenant's webhooks (summary shape, without `configuration`). Filter with `isActive`, `event`; sort with `sortBy` (createdAt|isActive) and `sortDir`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksListResponse**](AdminWebhooksListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_rotate_secret

> models::AdminWebhooksRotateSecretResponse admin_webhooks_rotate_secret(org_id, webhook_id)
Rotate the signing secret

Generates a new HMAC secret and keeps the previous one for a grace window. The new secret is returned once.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksRotateSecretResponse**](AdminWebhooksRotateSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_test

> models::AdminWebhooksTestResponse admin_webhooks_test(org_id, webhook_id)
Send a test delivery

POSTs a signed `test.webhook` payload to the webhook URL and reports the receiver's status. A non-2xx receiver response still yields HTTP 200 with `success: false`; a transport failure yields 502.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksTestResponse**](AdminWebhooksTestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_tunnel_start

> models::AdminWebhooksTunnelStartResponse admin_webhooks_tunnel_start(org_id)
Start a webhook tunnel

Creates a transient `tunnel://` webhook subscribed to every event (`*`) for `lumo tunnel`. Deliveries are stored instead of sent, and can be consumed from the stream endpoint.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksTunnelStartResponse**](AdminWebhooksTunnelStartResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_tunnel_stop

> models::MessageResponse admin_webhooks_tunnel_stop(org_id, webhook_id)
Stop a webhook tunnel

Deletes the tunnel webhook and its pending deliveries. Only `tunnel://` webhooks can be stopped here.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_tunnel_stream

> String admin_webhooks_tunnel_stream(org_id, webhook_id)
Stream tunnel deliveries (SSE)

Long-lived Server-Sent Events stream of deliveries recorded for a tunnel webhook. The stream polls every 2 seconds and closes after 10 minutes; clients should reconnect.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_webhooks_disable

> models::AdminWebhooksWebhooksDisableResponse admin_webhooks_webhooks_disable(org_id, webhook_id)
Disable a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksWebhooksDisableResponse**](AdminWebhooksWebhooksDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_webhooks_webhooks_enable

> models::AdminWebhooksWebhooksEnableResponse admin_webhooks_webhooks_enable(org_id, webhook_id)
Enable a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::AdminWebhooksWebhooksEnableResponse**](AdminWebhooksWebhooksEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_webhooks_update

> models::PutAdminWebhooksUpdateResponse patch_admin_webhooks_update(org_id, webhook_id)
Partially update a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_webhooks_update

> models::PutAdminWebhooksUpdateResponse put_admin_webhooks_update(org_id, webhook_id)
Update a webhook

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**webhook_id** | **String** |  | [required] |

### Return type

[**models::PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

