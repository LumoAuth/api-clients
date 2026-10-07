# AdminWebhooksAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminWebhooksCreate**](AdminWebhooksAPI.md#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a webhook
[**adminWebhooksDelete**](AdminWebhooksAPI.md#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
[**adminWebhooksDeliveriesList**](AdminWebhooksAPI.md#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent deliveries
[**adminWebhooksDeliveryReplay**](AdminWebhooksAPI.md#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Replay a delivery
[**adminWebhooksDeliveryShow**](AdminWebhooksAPI.md#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a delivery
[**adminWebhooksEvents**](AdminWebhooksAPI.md#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | List available webhook event types
[**adminWebhooksGet**](AdminWebhooksAPI.md#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a webhook
[**adminWebhooksList**](AdminWebhooksAPI.md#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List webhooks
[**adminWebhooksRotateSecret**](AdminWebhooksAPI.md#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate the signing secret
[**adminWebhooksTest**](AdminWebhooksAPI.md#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Send a test delivery
[**adminWebhooksTunnelStart**](AdminWebhooksAPI.md#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | Start a webhook tunnel
[**adminWebhooksTunnelStop**](AdminWebhooksAPI.md#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | Stop a webhook tunnel
[**adminWebhooksTunnelStream**](AdminWebhooksAPI.md#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | Stream tunnel deliveries (SSE)
[**adminWebhooksWebhooksDisable**](AdminWebhooksAPI.md#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable a webhook
[**adminWebhooksWebhooksEnable**](AdminWebhooksAPI.md#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable a webhook
[**patchAdminWebhooksUpdate**](AdminWebhooksAPI.md#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Partially update a webhook
[**putAdminWebhooksUpdate**](AdminWebhooksAPI.md#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update a webhook


# **adminWebhooksCreate**
```swift
    open class func adminWebhooksCreate(orgId: String, completion: @escaping (_ data: AdminWebhooksCreateResponse?, _ error: Error?) -> Void)
```

Create a webhook

The signing secret is generated server-side and returned once in this response only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a webhook
AdminWebhooksAPI.adminWebhooksCreate(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminWebhooksCreateResponse**](AdminWebhooksCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDelete**
```swift
    open class func adminWebhooksDelete(orgId: String, webhookId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Delete a webhook
AdminWebhooksAPI.adminWebhooksDelete(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveriesList**
```swift
    open class func adminWebhooksDeliveriesList(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksDeliveriesListResponse?, _ error: Error?) -> Void)
```

List recent deliveries

Most recent delivery attempts for the webhook (single page, newest first). Optional `status` filter (pending|success|failed|dead_lettered) and `limit` (1-200, default 50).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// List recent deliveries
AdminWebhooksAPI.adminWebhooksDeliveriesList(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksDeliveriesListResponse**](AdminWebhooksDeliveriesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryReplay**
```swift
    open class func adminWebhooksDeliveryReplay(orgId: String, webhookId: String, deliveryId: String, completion: @escaping (_ data: AdminWebhooksDeliveryReplayResponse?, _ error: Error?) -> Void)
```

Replay a delivery

Resets the delivery's failure state (attempt history is preserved) and re-enqueues it. Idempotent on already-pending rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 
let deliveryId = "deliveryId_example" // String | 

// Replay a delivery
AdminWebhooksAPI.adminWebhooksDeliveryReplay(orgId: orgId, webhookId: webhookId, deliveryId: deliveryId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 
 **deliveryId** | **String** |  | 

### Return type

[**AdminWebhooksDeliveryReplayResponse**](AdminWebhooksDeliveryReplayResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryShow**
```swift
    open class func adminWebhooksDeliveryShow(orgId: String, webhookId: String, deliveryId: String, completion: @escaping (_ data: AdminWebhooksDeliveryShowResponse?, _ error: Error?) -> Void)
```

Get a delivery

A single delivery including the event payload and the per-attempt history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 
let deliveryId = "deliveryId_example" // String | 

// Get a delivery
AdminWebhooksAPI.adminWebhooksDeliveryShow(orgId: orgId, webhookId: webhookId, deliveryId: deliveryId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 
 **deliveryId** | **String** |  | 

### Return type

[**AdminWebhooksDeliveryShowResponse**](AdminWebhooksDeliveryShowResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksEvents**
```swift
    open class func adminWebhooksEvents(orgId: String, completion: @escaping (_ data: AdminWebhooksEventsResponse?, _ error: Error?) -> Void)
```

List available webhook event types

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List available webhook event types
AdminWebhooksAPI.adminWebhooksEvents(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminWebhooksEventsResponse**](AdminWebhooksEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksGet**
```swift
    open class func adminWebhooksGet(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksGetResponse?, _ error: Error?) -> Void)
```

Get a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Get a webhook
AdminWebhooksAPI.adminWebhooksGet(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksGetResponse**](AdminWebhooksGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksList**
```swift
    open class func adminWebhooksList(orgId: String, completion: @escaping (_ data: AdminWebhooksListResponse?, _ error: Error?) -> Void)
```

List webhooks

Paginated list of the tenant's webhooks (summary shape, without `configuration`). Filter with `isActive`, `event`; sort with `sortBy` (createdAt|isActive) and `sortDir`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List webhooks
AdminWebhooksAPI.adminWebhooksList(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminWebhooksListResponse**](AdminWebhooksListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksRotateSecret**
```swift
    open class func adminWebhooksRotateSecret(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksRotateSecretResponse?, _ error: Error?) -> Void)
```

Rotate the signing secret

Generates a new HMAC secret and keeps the previous one for a grace window. The new secret is returned once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Rotate the signing secret
AdminWebhooksAPI.adminWebhooksRotateSecret(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksRotateSecretResponse**](AdminWebhooksRotateSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTest**
```swift
    open class func adminWebhooksTest(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksTestResponse?, _ error: Error?) -> Void)
```

Send a test delivery

POSTs a signed `test.webhook` payload to the webhook URL and reports the receiver's status. A non-2xx receiver response still yields HTTP 200 with `success: false`; a transport failure yields 502.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Send a test delivery
AdminWebhooksAPI.adminWebhooksTest(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksTestResponse**](AdminWebhooksTestResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStart**
```swift
    open class func adminWebhooksTunnelStart(orgId: String, completion: @escaping (_ data: AdminWebhooksTunnelStartResponse?, _ error: Error?) -> Void)
```

Start a webhook tunnel

Creates a transient `tunnel://` webhook subscribed to every event (`*`) for `lumo tunnel`. Deliveries are stored instead of sent, and can be consumed from the stream endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Start a webhook tunnel
AdminWebhooksAPI.adminWebhooksTunnelStart(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**AdminWebhooksTunnelStartResponse**](AdminWebhooksTunnelStartResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStop**
```swift
    open class func adminWebhooksTunnelStop(orgId: String, webhookId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Stop a webhook tunnel

Deletes the tunnel webhook and its pending deliveries. Only `tunnel://` webhooks can be stopped here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Stop a webhook tunnel
AdminWebhooksAPI.adminWebhooksTunnelStop(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStream**
```swift
    open class func adminWebhooksTunnelStream(orgId: String, webhookId: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Stream tunnel deliveries (SSE)

Long-lived Server-Sent Events stream of deliveries recorded for a tunnel webhook. The stream polls every 2 seconds and closes after 10 minutes; clients should reconnect.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Stream tunnel deliveries (SSE)
AdminWebhooksAPI.adminWebhooksTunnelStream(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksDisable**
```swift
    open class func adminWebhooksWebhooksDisable(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksWebhooksDisableResponse?, _ error: Error?) -> Void)
```

Disable a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Disable a webhook
AdminWebhooksAPI.adminWebhooksWebhooksDisable(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksWebhooksDisableResponse**](AdminWebhooksWebhooksDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksEnable**
```swift
    open class func adminWebhooksWebhooksEnable(orgId: String, webhookId: String, completion: @escaping (_ data: AdminWebhooksWebhooksEnableResponse?, _ error: Error?) -> Void)
```

Enable a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Enable a webhook
AdminWebhooksAPI.adminWebhooksWebhooksEnable(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**AdminWebhooksWebhooksEnableResponse**](AdminWebhooksWebhooksEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminWebhooksUpdate**
```swift
    open class func patchAdminWebhooksUpdate(orgId: String, webhookId: String, completion: @escaping (_ data: PutAdminWebhooksUpdateResponse?, _ error: Error?) -> Void)
```

Partially update a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Partially update a webhook
AdminWebhooksAPI.patchAdminWebhooksUpdate(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminWebhooksUpdate**
```swift
    open class func putAdminWebhooksUpdate(orgId: String, webhookId: String, completion: @escaping (_ data: PutAdminWebhooksUpdateResponse?, _ error: Error?) -> Void)
```

Update a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Update a webhook
AdminWebhooksAPI.putAdminWebhooksUpdate(orgId: orgId, webhookId: webhookId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **webhookId** | **String** |  | 

### Return type

[**PutAdminWebhooksUpdateResponse**](PutAdminWebhooksUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

