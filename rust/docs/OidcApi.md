# \OidcApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_session**](OidcApi.md#check_session) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | 
[**logout**](OidcApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | 
[**logout_post**](OidcApi.md#logout_post) | **POST** /orgs/{orgId}/api/v1/oauth/logout | 
[**userinfo**](OidcApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint
[**userinfo_post**](OidcApi.md#userinfo_post) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint



## check_session

> check_session(org_id)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## logout

> logout(org_id)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## logout_post

> logout_post(org_id)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userinfo

> userinfo(org_id)
OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userinfo_post

> userinfo_post(org_id)
OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

