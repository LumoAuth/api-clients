# SsfAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStreamConfig**](SsfAPI.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \&quot;delivery\&quot;: { \&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;...\&quot;,                 \&quot;authorization_token\&quot;: \&quot;...\&quot; },   \&quot;events_requested\&quot;: [\&quot;...uri...\&quot;],   \&quot;audience\&quot;: \&quot;https://receiver.example.com\&quot; }
[**deleteStreamConfig**](SsfAPI.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | 
[**getStreamConfig**](SsfAPI.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). &#x60;?stream_id&#x3D;&#x60; returns a single config, otherwise all of the tenant&#39;s streams are returned.
[**verifyStream**](SsfAPI.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \&quot;stream_id\&quot;: \&quot;ssf_...\&quot;, \&quot;state\&quot;: \&quot;optional-opaque-echo\&quot; }


# **createStreamConfig**
```swift
    open class func createStreamConfig(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
SsfAPI.createStreamConfig(orgId: orgId) { (response, error) in
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

# **deleteStreamConfig**
```swift
    open class func deleteStreamConfig(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

SsfAPI.deleteStreamConfig(orgId: orgId) { (response, error) in
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

# **getStreamConfig**
```swift
    open class func getStreamConfig(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
SsfAPI.getStreamConfig(orgId: orgId) { (response, error) in
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

# **verifyStream**
```swift
    open class func verifyStream(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }
SsfAPI.verifyStream(orgId: orgId) { (response, error) in
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

