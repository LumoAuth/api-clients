# \WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_server_metadata**](WellKnownApi.md#get_authorization_server_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414)
[**get_jwks**](WellKnownApi.md#get_jwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517)
[**get_openid_configuration**](WellKnownApi.md#get_openid_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0)
[**get_ssf_configuration**](WellKnownApi.md#get_ssf_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata



## get_authorization_server_metadata

> models::AuthorizationServerMetadata get_authorization_server_metadata(org_id)
OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AuthorizationServerMetadata**](AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_jwks

> models::JsonWebKeySet get_jwks(org_id)
JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::JsonWebKeySet**](JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_openid_configuration

> models::OpenIdConfiguration get_openid_configuration(org_id)
OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_ssf_configuration

> models::GetSsfConfigurationResponse get_ssf_configuration(org_id)
SSF transmitter configuration metadata

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetSsfConfigurationResponse**](GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

