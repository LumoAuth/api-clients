# AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**adminWebhooksCreate**](#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook|
|[**adminWebhooksDelete**](#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook|
|[**adminWebhooksDeliveriesList**](#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries|
|[**adminWebhooksDeliveryReplay**](#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery|
|[**adminWebhooksDeliveryShow**](#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery|
|[**adminWebhooksEvents**](#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types|
|[**adminWebhooksGet**](#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook|
|[**adminWebhooksList**](#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks|
|[**adminWebhooksRotateSecret**](#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret|
|[**adminWebhooksTest**](#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery|
|[**adminWebhooksTunnelStart**](#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel|
|[**adminWebhooksTunnelStop**](#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel|
|[**adminWebhooksTunnelStream**](#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)|
|[**adminWebhooksWebhooksDisable**](#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook|
|[**adminWebhooksWebhooksEnable**](#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook|
|[**patchAdminWebhooksUpdate**](#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook|
|[**putAdminWebhooksUpdate**](#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook|

# **adminWebhooksCreate**
> AdminWebhooksCreateResponse adminWebhooksCreate()

Accepts `url`, `events`, `isActive` (also as `active` or `enabled`), `type` and `configuration`. The signing secret is generated server-side and returned once in this response only: a `secret` in the request, an unknown field and an event name that is not in the catalogue are refused with 400.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksCreate(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksCreateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Webhook created; the secret is shown once |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDelete**
> MessageResponse adminWebhooksDelete()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksDelete(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**MessageResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Webhook deleted |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveriesList**
> AdminWebhooksDeliveriesListResponse adminWebhooksDeliveriesList()

Most recent delivery attempts for the webhook (single page, newest first). Optional `status` filter (pending|success|failed|dead_lettered) and `limit` (1-200, default 50).

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksDeliveriesList(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksDeliveriesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Deliveries |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryReplay**
> AdminWebhooksDeliveryReplayResponse adminWebhooksDeliveryReplay()

Queues a new delivery with the same event and payload and returns its id. The original delivery is not changed. A disabled webhook sends nothing, so the call answers 409 until the webhook is enabled.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)
let deliveryId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksDeliveryReplay(
    orgId,
    webhookId,
    deliveryId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|
| **deliveryId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksDeliveryReplayResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Replay queued |  -  |
|**404** | Webhook or delivery not found |  -  |
|**409** | The webhook is disabled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryShow**
> AdminWebhooksDeliveryShowResponse adminWebhooksDeliveryShow()

A single delivery including the event payload and the per-attempt history.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)
let deliveryId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksDeliveryShow(
    orgId,
    webhookId,
    deliveryId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|
| **deliveryId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksDeliveryShowResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Delivery with payload and attempts |  -  |
|**404** | Webhook or delivery not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksEvents**
> AdminWebhooksEventsResponse adminWebhooksEvents()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksEvents(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksEventsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Event types keyed by name, with a human-readable description |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksGet**
> AdminWebhooksGetResponse adminWebhooksGet()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksGet(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksList**
> AdminWebhooksListResponse adminWebhooksList()

Paginated list of the tenant\'s webhooks (summary shape, without `configuration`). Filter with `isActive`, `event`; sort with `sortBy` (createdAt|isActive) and `sortDir`.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksList(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Webhooks |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksRotateSecret**
> AdminWebhooksRotateSecretResponse adminWebhooksRotateSecret()

Generates a new HMAC secret and returns it once. For 24 hours every delivery also carries `X-LumoAuth-Signature-Previous`, signed with the secret that was replaced, so the receiver can be updated without losing events. The `kid` of `X-LumoAuth-Signature` changes with every rotation.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksRotateSecret(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksRotateSecretResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Secret rotated; the new secret is shown once |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTest**
> AdminWebhooksTestResponse adminWebhooksTest()

Sends one `webhook.test` event to the webhook URL now, with the same body, headers and signature as any event, and records it in the delivery history. A receiver answer outside 2xx still yields HTTP 200 with `success: false`; when no answer was received (connection or TLS error) the endpoint answers 502. A failed test is not retried.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksTest(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksTestResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Test result |  -  |
|**404** | Webhook not found |  -  |
|**502** | Failed to deliver test webhook |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStart**
> AdminWebhooksTunnelStartResponse adminWebhooksTunnelStart()

Creates a transient `tunnel://` webhook subscribed to every event (`*`) for `lumo tunnel`. Deliveries are stored instead of sent, and can be consumed from the stream endpoint.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksTunnelStart(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksTunnelStartResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tunnel started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStop**
> MessageResponse adminWebhooksTunnelStop()

Deletes the tunnel webhook and its pending deliveries. Only `tunnel://` webhooks can be stopped here.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksTunnelStop(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**MessageResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Tunnel closed |  -  |
|**400** | Not a tunnel webhook |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStream**
> string adminWebhooksTunnelStream()

Long-lived Server-Sent Events stream of deliveries recorded for a tunnel webhook. The stream polls every 2 seconds and closes after 10 minutes; clients should reconnect.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksTunnelStream(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**string**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Server-Sent Events stream. Opens with the comment line &#x60;: connected&#x60;, then emits one &#x60;event: webhook&#x60; message per delivery whose &#x60;data:&#x60; line is a JSON object &#x60;{delivery_id, event_name, payload, received_at}&#x60; (&#x60;received_at&#x60; is RFC 3339). A &#x60;: heartbeat&#x60; comment is sent roughly every 15 seconds while idle. |  -  |
|**400** | Not a tunnel webhook |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksDisable**
> AdminWebhooksWebhooksDisableResponse adminWebhooksWebhooksDisable()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksWebhooksDisable(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksWebhooksDisableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Webhook disabled |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksEnable**
> AdminWebhooksWebhooksEnableResponse adminWebhooksWebhooksEnable()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.adminWebhooksWebhooksEnable(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**AdminWebhooksWebhooksEnableResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Webhook enabled |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminWebhooksUpdate**
> PutAdminWebhooksUpdateResponse patchAdminWebhooksUpdate()


### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.patchAdminWebhooksUpdate(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminWebhooksUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminWebhooksUpdate**
> PutAdminWebhooksUpdateResponse putAdminWebhooksUpdate()

Changes only the fields that are sent: `url`, `events`, `isActive` (also as `active` or `enabled`), `type`, `configuration`, `rotateSecret`. A new `url` for a webhook that has a signing secret needs `rotateSecret: true`; the response then carries the new `secret` once. Unknown fields, `secret` and event names that are not in the catalogue are refused with 400.

### Example

```typescript
import {
    AdminWebhooksApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminWebhooksApi(configuration);

let orgId: string; // (default to undefined)
let webhookId: string; // (default to undefined)

const { status, data } = await apiInstance.putAdminWebhooksUpdate(
    orgId,
    webhookId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **webhookId** | [**string**] |  | defaults to undefined|


### Return type

**PutAdminWebhooksUpdateResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
|**404** | Webhook not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

