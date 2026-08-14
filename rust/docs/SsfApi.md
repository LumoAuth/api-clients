# \SsfApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_stream_config**](SsfApi.md#create_stream_config) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
[**delete_stream_config**](SsfApi.md#delete_stream_config) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream | 
[**get_stream_config**](SsfApi.md#get_stream_config) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
[**verify_stream**](SsfApi.md#verify_stream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }



## create_stream_config

> create_stream_config(org_id)
Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }

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


## delete_stream_config

> delete_stream_config(org_id)


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


## get_stream_config

> get_stream_config(org_id)
Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.

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


## verify_stream

> verify_stream(org_id)
SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }

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

