# SsfApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createStreamConfig**](#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \&quot;delivery\&quot;: { \&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;...\&quot;,                 \&quot;authorization_token\&quot;: \&quot;...\&quot; },   \&quot;events_requested\&quot;: [\&quot;...uri...\&quot;],   \&quot;audience\&quot;: \&quot;https://receiver.example.com\&quot; }|
|[**deleteStreamConfig**](#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | |
|[**getStreamConfig**](#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). &#x60;?stream_id&#x3D;&#x60; returns a single config, otherwise all of the tenant\&#39;s streams are returned.|
|[**verifyStream**](#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \&quot;stream_id\&quot;: \&quot;ssf_...\&quot;, \&quot;state\&quot;: \&quot;optional-opaque-echo\&quot; }|

# **createStreamConfig**
> createStreamConfig()


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

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**0** |  |  -  |

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

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.deleteStreamConfig(
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
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStreamConfig**
> getStreamConfig()


### Example

```typescript
import {
    SsfApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new SsfApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getStreamConfig(
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
|**0** |  |  -  |

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
|**0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

