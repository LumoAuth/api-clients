# SsfAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStreamConfig**](SsfAPI.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream
[**deleteStreamConfig**](SsfAPI.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream
[**getStreamConfig**](SsfAPI.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)
[**verifyStream**](SsfAPI.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event


# **createStreamConfig**
```swift
    open class func createStreamConfig(orgId: String, completion: @escaping (_ data: SsfStream?, _ error: Error?) -> Void)
```

Create an SSF stream

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create an SSF stream
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

[**SsfStream**](SsfStream.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStreamConfig**
```swift
    open class func deleteStreamConfig(streamId: String, orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an SSF stream

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let streamId = "streamId_example" // String | 
let orgId = "orgId_example" // String | 

// Delete an SSF stream
SsfAPI.deleteStreamConfig(streamId: streamId, orgId: orgId) { (response, error) in
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
 **streamId** | **String** |  | 
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
    open class func getStreamConfig(orgId: String, streamId: String? = nil, completion: @escaping (_ data: GetStreamConfig200Response?, _ error: Error?) -> Void)
```

Read SSF stream configuration(s)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let streamId = "streamId_example" // String |  (optional)

// Read SSF stream configuration(s)
SsfAPI.getStreamConfig(orgId: orgId, streamId: streamId) { (response, error) in
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
 **streamId** | **String** |  | [optional] 

### Return type

[**GetStreamConfig200Response**](GetStreamConfig200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyStream**
```swift
    open class func verifyStream(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Request a stream verification event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Request a stream verification event
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

