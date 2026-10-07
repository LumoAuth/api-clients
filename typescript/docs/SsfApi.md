# SsfApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createStreamConfig**](#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream|
|[**deleteStreamConfig**](#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream|
|[**getStreamConfig**](#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)|
|[**verifyStream**](#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event|

# **createStreamConfig**
> SsfStream createStreamConfig()


### Example

```typescript
import {
    SsfApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new SsfApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.createStreamConfig(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**SsfStream**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Stream configuration |  -  |
|**400** | Unsupported delivery method or missing field |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStreamConfig**
> deleteStreamConfig()


### Example

```typescript
import {
    SsfApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new SsfApi(configuration);

let streamId: string; // (default to undefined)
let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.deleteStreamConfig(
    streamId,
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **streamId** | [**string**] |  | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Stream deleted |  -  |
|**400** | Missing stream_id |  -  |
|**404** | Stream not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStreamConfig**
> GetStreamConfig200Response getStreamConfig()


### Example

```typescript
import {
    SsfApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new SsfApi(configuration);

let orgId: string; // (default to undefined)
let streamId: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.getStreamConfig(
    orgId,
    streamId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **streamId** | [**string**] |  | (optional) defaults to undefined|


### Return type

**GetStreamConfig200Response**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | A single stream (with stream_id) or all of the tenant\&#39;s streams |  -  |
|**404** | Stream not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyStream**
> verifyStream()


### Example

```typescript
import {
    SsfApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new SsfApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.verifyStream(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Verification event queued |  -  |
|**400** | Missing stream_id |  -  |
|**404** | Stream not found |  -  |
|**409** | Stream is not enabled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

