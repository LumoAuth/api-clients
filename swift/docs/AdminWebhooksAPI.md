# AdminWebhooksAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminWebhooksCreate**](AdminWebhooksAPI.md#adminwebhookscreate) | **POST** /orgs/{orgId}/api/v1/admin/webhooks | Create a new webhook
[**adminWebhooksDelete**](AdminWebhooksAPI.md#adminwebhooksdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Delete a webhook
[**adminWebhooksDeliveriesList**](AdminWebhooksAPI.md#adminwebhooksdeliverieslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries | List recent delivery attempts for a webhook.
[**adminWebhooksDeliveryReplay**](AdminWebhooksAPI.md#adminwebhooksdeliveryreplay) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId}/replay | Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
[**adminWebhooksDeliveryShow**](AdminWebhooksAPI.md#adminwebhooksdeliveryshow) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/deliveries/{deliveryId} | Get a single delivery, including the per-attempt history (the &#x60;attempts&#x60; JSON column) for diagnosis.
[**adminWebhooksEvents**](AdminWebhooksAPI.md#adminwebhooksevents) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/events | Get available webhook event types
[**adminWebhooksGet**](AdminWebhooksAPI.md#adminwebhooksget) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Get a single webhook by ID
[**adminWebhooksList**](AdminWebhooksAPI.md#adminwebhookslist) | **GET** /orgs/{orgId}/api/v1/admin/webhooks | List all webhooks in the tenant
[**adminWebhooksRotateSecret**](AdminWebhooksAPI.md#adminwebhooksrotatesecret) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/rotate-secret | Rotate webhook secret
[**adminWebhooksTest**](AdminWebhooksAPI.md#adminwebhookstest) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/test | Test a webhook by sending a test payload
[**adminWebhooksTunnelStart**](AdminWebhooksAPI.md#adminwebhookstunnelstart) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/start | 
[**adminWebhooksTunnelStop**](AdminWebhooksAPI.md#adminwebhookstunnelstop) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stop | 
[**adminWebhooksTunnelStream**](AdminWebhooksAPI.md#adminwebhookstunnelstream) | **GET** /orgs/{orgId}/api/v1/admin/webhooks/tunnel/{webhookId}/stream | 
[**adminWebhooksWebhooksDisable**](AdminWebhooksAPI.md#adminwebhookswebhooksdisable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/disable | Disable webhook
[**adminWebhooksWebhooksEnable**](AdminWebhooksAPI.md#adminwebhookswebhooksenable) | **POST** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId}/enable | Enable webhook
[**patchAdminWebhooksUpdate**](AdminWebhooksAPI.md#patchadminwebhooksupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook
[**putAdminWebhooksUpdate**](AdminWebhooksAPI.md#putadminwebhooksupdate) | **PUT** /orgs/{orgId}/api/v1/admin/webhooks/{webhookId} | Update an existing webhook


# **adminWebhooksCreate**
```swift
    open class func adminWebhooksCreate(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a new webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a new webhook
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDelete**
```swift
    open class func adminWebhooksDelete(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveriesList**
```swift
    open class func adminWebhooksDeliveriesList(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List recent delivery attempts for a webhook.

Optional query params: - status: filter by `pending|success|failed|dead_lettered` - limit: 1–200, default 50

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// List recent delivery attempts for a webhook.
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryReplay**
```swift
    open class func adminWebhooksDeliveryReplay(orgId: String, webhookId: String, deliveryId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage

Resets the delivery's failure state but preserves the attempt history, then dispatches a fresh DispatchWebhookMessage that the handler will pick up. Idempotent on already-pending rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 
let deliveryId = "deliveryId_example" // String | 

// Manually re-enqueue a delivery. Useful when:   - a receiver was misconfigured and is now ready to accept   - a dead-lettered event needs a one-off replay after triage
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksDeliveryShow**
```swift
    open class func adminWebhooksDeliveryShow(orgId: String, webhookId: String, deliveryId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 
let deliveryId = "deliveryId_example" // String | 

// Get a single delivery, including the per-attempt history (the `attempts` JSON column) for diagnosis.
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksEvents**
```swift
    open class func adminWebhooksEvents(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get available webhook event types

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get available webhook event types
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksGet**
```swift
    open class func adminWebhooksGet(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a single webhook by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Get a single webhook by ID
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksList**
```swift
    open class func adminWebhooksList(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List all webhooks in the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List all webhooks in the tenant
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksRotateSecret**
```swift
    open class func adminWebhooksRotateSecret(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rotate webhook secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Rotate webhook secret
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTest**
```swift
    open class func adminWebhooksTest(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Test a webhook by sending a test payload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Test a webhook by sending a test payload
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStart**
```swift
    open class func adminWebhooksTunnelStart(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStop**
```swift
    open class func adminWebhooksTunnelStop(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksTunnelStream**
```swift
    open class func adminWebhooksTunnelStream(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksDisable**
```swift
    open class func adminWebhooksWebhooksDisable(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Disable webhook
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminWebhooksWebhooksEnable**
```swift
    open class func adminWebhooksWebhooksEnable(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Enable webhook
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminWebhooksUpdate**
```swift
    open class func patchAdminWebhooksUpdate(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an existing webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Update an existing webhook
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminWebhooksUpdate**
```swift
    open class func putAdminWebhooksUpdate(orgId: String, webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an existing webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let webhookId = "webhookId_example" // String | 

// Update an existing webhook
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

