# \IdentityApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_me**](IdentityApi.md#get_me) | **GET** /orgs/{orgId}/api/v1/me | Who am I



## get_me

> models::GetMeResponse get_me(org_id)
Who am I

Returns the authenticated principal (user or agent). Use the `subject_type` field to discriminate.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetMeResponse**](GetMeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

