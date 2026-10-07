# \SsfApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_stream_config**](SsfApi.md#create_stream_config) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create an SSF stream
[**delete_stream_config**](SsfApi.md#delete_stream_config) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | Delete an SSF stream
[**get_stream_config**](SsfApi.md#get_stream_config) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read SSF stream configuration(s)
[**verify_stream**](SsfApi.md#verify_stream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | Request a stream verification event



## create_stream_config

> models::SsfStream create_stream_config(org_id)
Create an SSF stream

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::SsfStream**](SsfStream.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_stream_config

> delete_stream_config(stream_id, org_id)
Delete an SSF stream

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**stream_id** | **String** |  | [required] |
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_stream_config

> models::GetStreamConfig200Response get_stream_config(org_id, stream_id)
Read SSF stream configuration(s)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**stream_id** | Option<**String**> |  |  |

### Return type

[**models::GetStreamConfig200Response**](getStreamConfig_200_response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_stream

> verify_stream(org_id)
Request a stream verification event

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

