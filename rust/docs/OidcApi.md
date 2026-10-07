# \OidcApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_session**](OidcApi.md#check_session) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0)
[**logout**](OidcApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0)
[**logout_post**](OidcApi.md#logout_post) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission)
[**userinfo**](OidcApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint
[**userinfo_post**](OidcApi.md#userinfo_post) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST)



## check_session

> String check_session(org_id)
OP session-check iframe (OIDC Session Management 1.0)

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage \"<client_id> <session_state>\" to learn whether the OP session changed. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## logout

> String logout(org_id)
RP-initiated logout (OIDC RP-Initiated Logout 1.0)

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session's clients. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## logout_post

> String logout_post(org_id)
RP-initiated logout (confirmation submission)

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userinfo

> models::UserinfoResponse userinfo(org_id)
OpenID Connect UserInfo endpoint

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userinfo_post

> models::UserinfoResponse userinfo_post(org_id)
OpenID Connect UserInfo endpoint (POST)

Identical to GET.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

