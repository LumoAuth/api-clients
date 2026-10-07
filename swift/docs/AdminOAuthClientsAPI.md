# AdminOAuthClientsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClient**](AdminOAuthClientsAPI.md#createclient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client
[**deleteClient**](AdminOAuthClientsAPI.md#deleteclient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client
[**disableClient**](AdminOAuthClientsAPI.md#disableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client
[**enableClient**](AdminOAuthClientsAPI.md#enableclient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client
[**getClient**](AdminOAuthClientsAPI.md#getclient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client
[**listClientScopes**](AdminOAuthClientsAPI.md#listclientscopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client
[**listClients**](AdminOAuthClientsAPI.md#listclients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients
[**patchClient**](AdminOAuthClientsAPI.md#patchclient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client
[**rotateClientSecret**](AdminOAuthClientsAPI.md#rotateclientsecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret
[**setClientScopes**](AdminOAuthClientsAPI.md#setclientscopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client
[**updateClient**](AdminOAuthClientsAPI.md#updateclient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Replace an OAuth client


# **createClient**
```swift
    open class func createClient(orgId: String, completion: @escaping (_ data: CreateClientResponse?, _ error: Error?) -> Void)
```

Create an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create an OAuth client
AdminOAuthClientsAPI.createClient(orgId: orgId) { (response, error) in
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

[**CreateClientResponse**](CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClient**
```swift
    open class func deleteClient(orgId: String, clientId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Delete an OAuth client
AdminOAuthClientsAPI.deleteClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableClient**
```swift
    open class func disableClient(orgId: String, clientId: String, completion: @escaping (_ data: UpdateClientResponse?, _ error: Error?) -> Void)
```

Disable an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Disable an OAuth client
AdminOAuthClientsAPI.disableClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableClient**
```swift
    open class func enableClient(orgId: String, clientId: String, completion: @escaping (_ data: UpdateClientResponse?, _ error: Error?) -> Void)
```

Enable an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Enable an OAuth client
AdminOAuthClientsAPI.enableClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClient**
```swift
    open class func getClient(orgId: String, clientId: String, completion: @escaping (_ data: GetClientResponse?, _ error: Error?) -> Void)
```

Get an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Get an OAuth client
AdminOAuthClientsAPI.getClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**GetClientResponse**](GetClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClientScopes**
```swift
    open class func listClientScopes(orgId: String, clientId: String, completion: @escaping (_ data: ListClientScopesResponse?, _ error: Error?) -> Void)
```

List the scopes granted to an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// List the scopes granted to an OAuth client
AdminOAuthClientsAPI.listClientScopes(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**ListClientScopesResponse**](ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listClients**
```swift
    open class func listClients(orgId: String, completion: @escaping (_ data: ListClientsResponse?, _ error: Error?) -> Void)
```

List OAuth clients

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List OAuth clients
AdminOAuthClientsAPI.listClients(orgId: orgId) { (response, error) in
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

[**ListClientsResponse**](ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchClient**
```swift
    open class func patchClient(orgId: String, clientId: String, completion: @escaping (_ data: UpdateClientResponse?, _ error: Error?) -> Void)
```

Update an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Update an OAuth client
AdminOAuthClientsAPI.patchClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateClientSecret**
```swift
    open class func rotateClientSecret(orgId: String, clientId: String, completion: @escaping (_ data: RotateClientSecretResponse?, _ error: Error?) -> Void)
```

Rotate an OAuth client secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Rotate an OAuth client secret
AdminOAuthClientsAPI.rotateClientSecret(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**RotateClientSecretResponse**](RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setClientScopes**
```swift
    open class func setClientScopes(orgId: String, clientId: String, completion: @escaping (_ data: SetClientScopesResponse?, _ error: Error?) -> Void)
```

Replace the scopes granted to an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Replace the scopes granted to an OAuth client
AdminOAuthClientsAPI.setClientScopes(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**SetClientScopesResponse**](SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClient**
```swift
    open class func updateClient(orgId: String, clientId: String, completion: @escaping (_ data: UpdateClientResponse?, _ error: Error?) -> Void)
```

Replace an OAuth client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Replace an OAuth client
AdminOAuthClientsAPI.updateClient(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

