# AdminWebhooksApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminWebhooksCreate**](AdminWebhooksApi.md#adminWebhooksCreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook |
| [**adminWebhooksDelete**](AdminWebhooksApi.md#adminWebhooksDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook |
| [**adminWebhooksDeliveriesList**](AdminWebhooksApi.md#adminWebhooksDeliveriesList) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries |
| [**adminWebhooksDeliveryReplay**](AdminWebhooksApi.md#adminWebhooksDeliveryReplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery |
| [**adminWebhooksDeliveryShow**](AdminWebhooksApi.md#adminWebhooksDeliveryShow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery |
| [**adminWebhooksEvents**](AdminWebhooksApi.md#adminWebhooksEvents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types |
| [**adminWebhooksGet**](AdminWebhooksApi.md#adminWebhooksGet) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook |
| [**adminWebhooksList**](AdminWebhooksApi.md#adminWebhooksList) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks |
| [**adminWebhooksRotateSecret**](AdminWebhooksApi.md#adminWebhooksRotateSecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret |
| [**adminWebhooksTest**](AdminWebhooksApi.md#adminWebhooksTest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery |
| [**adminWebhooksTunnelStart**](AdminWebhooksApi.md#adminWebhooksTunnelStart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel |
| [**adminWebhooksTunnelStop**](AdminWebhooksApi.md#adminWebhooksTunnelStop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel |
| [**adminWebhooksTunnelStream**](AdminWebhooksApi.md#adminWebhooksTunnelStream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE) |
| [**adminWebhooksWebhooksDisable**](AdminWebhooksApi.md#adminWebhooksWebhooksDisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook |
| [**adminWebhooksWebhooksEnable**](AdminWebhooksApi.md#adminWebhooksWebhooksEnable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook |
| [**patchAdminWebhooksUpdate**](AdminWebhooksApi.md#patchAdminWebhooksUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook |
| [**putAdminWebhooksUpdate**](AdminWebhooksApi.md#putAdminWebhooksUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook |


<a id="adminWebhooksCreate"></a>
# **adminWebhooksCreate**
> AdminWebhooksCreateResponse adminWebhooksCreate(orgId)

Create a webhook

The signing secret is generated server-side and returned once in this response only.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminWebhooksCreateResponse result = apiInstance.adminWebhooksCreate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksCreate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**AdminWebhooksCreateResponse**](AdminWebhooksCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Webhook created; the secret is shown once |  -  |

<a id="adminWebhooksDelete"></a>
# **adminWebhooksDelete**
> MessageResponse adminWebhooksDelete(orgId, webhookId)

Delete a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminWebhooksDelete(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksDelete");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhook deleted |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksDeliveriesList"></a>
# **adminWebhooksDeliveriesList**
> AdminWebhooksDeliveriesListResponse adminWebhooksDeliveriesList(orgId, webhookId)

List recent deliveries

Most recent delivery attempts for the webhook (single page, newest first). Optional &#x60;status&#x60; filter (pending|success|failed|dead_lettered) and &#x60;limit&#x60; (1-200, default 50).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksDeliveriesListResponse result = apiInstance.adminWebhooksDeliveriesList(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksDeliveriesList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksDeliveriesListResponse**](AdminWebhooksDeliveriesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Deliveries |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksDeliveryReplay"></a>
# **adminWebhooksDeliveryReplay**
> AdminWebhooksDeliveryReplayResponse adminWebhooksDeliveryReplay(orgId, webhookId, deliveryId)

Replay a delivery

Resets the delivery&#39;s failure state (attempt history is preserved) and re-enqueues it. Idempotent on already-pending rows.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    String deliveryId = "deliveryId_example"; // String | 
    try {
      AdminWebhooksDeliveryReplayResponse result = apiInstance.adminWebhooksDeliveryReplay(orgId, webhookId, deliveryId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksDeliveryReplay");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |
| **deliveryId** | **String**|  | |

### Return type

[**AdminWebhooksDeliveryReplayResponse**](AdminWebhooksDeliveryReplayResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Delivery re-enqueued |  -  |
| **404** | Webhook or delivery not found |  -  |

<a id="adminWebhooksDeliveryShow"></a>
# **adminWebhooksDeliveryShow**
> AdminWebhooksDeliveryShowResponse adminWebhooksDeliveryShow(orgId, webhookId, deliveryId)

Get a delivery

A single delivery including the event payload and the per-attempt history.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    String deliveryId = "deliveryId_example"; // String | 
    try {
      AdminWebhooksDeliveryShowResponse result = apiInstance.adminWebhooksDeliveryShow(orgId, webhookId, deliveryId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksDeliveryShow");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |
| **deliveryId** | **String**|  | |

### Return type

[**AdminWebhooksDeliveryShowResponse**](AdminWebhooksDeliveryShowResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Delivery with payload and attempts |  -  |
| **404** | Webhook or delivery not found |  -  |

<a id="adminWebhooksEvents"></a>
# **adminWebhooksEvents**
> AdminWebhooksEventsResponse adminWebhooksEvents(orgId)

List available webhook event types

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminWebhooksEventsResponse result = apiInstance.adminWebhooksEvents(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksEvents");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**AdminWebhooksEventsResponse**](AdminWebhooksEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Event types keyed by name, with a human-readable description |  -  |

<a id="adminWebhooksGet"></a>
# **adminWebhooksGet**
> AdminWebhooksGetResponse adminWebhooksGet(orgId, webhookId)

Get a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksGetResponse result = apiInstance.adminWebhooksGet(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksGetResponse**](AdminWebhooksGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksList"></a>
# **adminWebhooksList**
> AdminWebhooksListResponse adminWebhooksList(orgId)

List webhooks

Paginated list of the tenant&#39;s webhooks (summary shape, without &#x60;configuration&#x60;). Filter with &#x60;isActive&#x60;, &#x60;event&#x60;; sort with &#x60;sortBy&#x60; (createdAt|isActive) and &#x60;sortDir&#x60;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminWebhooksListResponse result = apiInstance.adminWebhooksList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**AdminWebhooksListResponse**](AdminWebhooksListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhooks |  -  |

<a id="adminWebhooksRotateSecret"></a>
# **adminWebhooksRotateSecret**
> AdminWebhooksRotateSecretResponse adminWebhooksRotateSecret(orgId, webhookId)

Rotate the signing secret

Generates a new HMAC secret and keeps the previous one for a grace window. The new secret is returned once.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksRotateSecretResponse result = apiInstance.adminWebhooksRotateSecret(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksRotateSecret");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksRotateSecretResponse**](AdminWebhooksRotateSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Secret rotated; the new secret is shown once |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksTest"></a>
# **adminWebhooksTest**
> AdminWebhooksTestResponse adminWebhooksTest(orgId, webhookId)

Send a test delivery

POSTs a signed &#x60;test.webhook&#x60; payload to the webhook URL and reports the receiver&#39;s status. A non-2xx receiver response still yields HTTP 200 with &#x60;success: false&#x60;; a transport failure yields 502.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksTestResponse result = apiInstance.adminWebhooksTest(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksTest");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksTestResponse**](AdminWebhooksTestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Test result |  -  |
| **404** | Webhook not found |  -  |
| **502** | Failed to deliver test webhook |  -  |

<a id="adminWebhooksTunnelStart"></a>
# **adminWebhooksTunnelStart**
> AdminWebhooksTunnelStartResponse adminWebhooksTunnelStart(orgId)

Start a webhook tunnel

Creates a transient &#x60;tunnel://&#x60; webhook subscribed to every event (&#x60;*&#x60;) for &#x60;lumo tunnel&#x60;. Deliveries are stored instead of sent, and can be consumed from the stream endpoint.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminWebhooksTunnelStartResponse result = apiInstance.adminWebhooksTunnelStart(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksTunnelStart");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

### Return type

[**AdminWebhooksTunnelStartResponse**](AdminWebhooksTunnelStartResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tunnel started |  -  |

<a id="adminWebhooksTunnelStop"></a>
# **adminWebhooksTunnelStop**
> MessageResponse adminWebhooksTunnelStop(orgId, webhookId)

Stop a webhook tunnel

Deletes the tunnel webhook and its pending deliveries. Only &#x60;tunnel://&#x60; webhooks can be stopped here.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminWebhooksTunnelStop(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksTunnelStop");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tunnel closed |  -  |
| **400** | Not a tunnel webhook |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksTunnelStream"></a>
# **adminWebhooksTunnelStream**
> String adminWebhooksTunnelStream(orgId, webhookId)

Stream tunnel deliveries (SSE)

Long-lived Server-Sent Events stream of deliveries recorded for a tunnel webhook. The stream polls every 2 seconds and closes after 10 minutes; clients should reconnect.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      String result = apiInstance.adminWebhooksTunnelStream(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksTunnelStream");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Server-Sent Events stream. Opens with the comment line &#x60;: connected&#x60;, then emits one &#x60;event: webhook&#x60; message per delivery whose &#x60;data:&#x60; line is a JSON object &#x60;{delivery_id, event_name, payload, received_at}&#x60; (&#x60;received_at&#x60; is RFC 3339). A &#x60;: heartbeat&#x60; comment is sent roughly every 15 seconds while idle. |  -  |
| **400** | Not a tunnel webhook |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksWebhooksDisable"></a>
# **adminWebhooksWebhooksDisable**
> AdminWebhooksWebhooksDisableResponse adminWebhooksWebhooksDisable(orgId, webhookId)

Disable a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksWebhooksDisableResponse result = apiInstance.adminWebhooksWebhooksDisable(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksWebhooksDisable");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksWebhooksDisableResponse**](AdminWebhooksWebhooksDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhook disabled |  -  |
| **404** | Webhook not found |  -  |

<a id="adminWebhooksWebhooksEnable"></a>
# **adminWebhooksWebhooksEnable**
> AdminWebhooksWebhooksEnableResponse adminWebhooksWebhooksEnable(orgId, webhookId)

Enable a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      AdminWebhooksWebhooksEnableResponse result = apiInstance.adminWebhooksWebhooksEnable(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#adminWebhooksWebhooksEnable");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**AdminWebhooksWebhooksEnableResponse**](AdminWebhooksWebhooksEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Webhook enabled |  -  |
| **404** | Webhook not found |  -  |

<a id="patchAdminWebhooksUpdate"></a>
# **patchAdminWebhooksUpdate**
> PutAdminWebhooksUpdateResponse patchAdminWebhooksUpdate(orgId, webhookId)

Partially update a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      PutAdminWebhooksUpdateResponse result = apiInstance.patchAdminWebhooksUpdate(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#patchAdminWebhooksUpdate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
| **404** | Webhook not found |  -  |

<a id="putAdminWebhooksUpdate"></a>
# **putAdminWebhooksUpdate**
> PutAdminWebhooksUpdateResponse putAdminWebhooksUpdate(orgId, webhookId)

Update a webhook

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminWebhooksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    AdminWebhooksApi apiInstance = new AdminWebhooksApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String webhookId = "webhookId_example"; // String | 
    try {
      PutAdminWebhooksUpdateResponse result = apiInstance.putAdminWebhooksUpdate(orgId, webhookId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminWebhooksApi#putAdminWebhooksUpdate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **webhookId** | **String**|  | |

### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated webhook (detailed, includes &#x60;configuration&#x60;) |  -  |
| **404** | Webhook not found |  -  |

