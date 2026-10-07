# \AdminIdentityProvidersApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_social_providers_available**](AdminIdentityProvidersApi.md#admin_social_providers_available) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types
[**admin_social_providers_callback_urls**](AdminIdentityProvidersApi.md#admin_social_providers_callback_urls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider
[**admin_social_providers_create**](AdminIdentityProvidersApi.md#admin_social_providers_create) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider
[**admin_social_providers_delete**](AdminIdentityProvidersApi.md#admin_social_providers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
[**admin_social_providers_disable**](AdminIdentityProvidersApi.md#admin_social_providers_disable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
[**admin_social_providers_enable**](AdminIdentityProvidersApi.md#admin_social_providers_enable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
[**admin_social_providers_get**](AdminIdentityProvidersApi.md#admin_social_providers_get) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider
[**admin_social_providers_list**](AdminIdentityProvidersApi.md#admin_social_providers_list) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers
[**admin_social_providers_types**](AdminIdentityProvidersApi.md#admin_social_providers_types) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types
[**patch_admin_social_providers_update**](AdminIdentityProvidersApi.md#patch_admin_social_providers_update) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider
[**put_admin_social_providers_update**](AdminIdentityProvidersApi.md#put_admin_social_providers_update) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider



## admin_social_providers_available

> models::AdminSocialProvidersAvailableResponse admin_social_providers_available(org_id)
List the available social login provider types

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_callback_urls

> models::AdminSocialProvidersCallbackUrlsResponse admin_social_providers_callback_urls(org_id)
Get the OAuth callback URL of every configured provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCallbackUrlsResponse**](AdminSocialProvidersCallbackUrlsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_create

> models::AdminSocialProvidersCreateResponse admin_social_providers_create(org_id)
Create a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_delete

> models::MessageResponse admin_social_providers_delete(org_id, provider_id)
Delete a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_disable

> models::AdminSocialProvidersCreateResponse admin_social_providers_disable(org_id, provider_id)
Disable a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_enable

> models::AdminSocialProvidersCreateResponse admin_social_providers_enable(org_id, provider_id)
Enable a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_get

> models::AdminSocialProvidersGetResponse admin_social_providers_get(org_id, provider_id)
Get a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersGetResponse**](AdminSocialProvidersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_list

> models::AdminSocialProvidersListResponse admin_social_providers_list(org_id)
List social login providers

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersListResponse**](AdminSocialProvidersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_social_providers_types

> models::AdminSocialProvidersAvailableResponse admin_social_providers_types(org_id)
List the available social login provider types

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_social_providers_update

> models::AdminSocialProvidersCreateResponse patch_admin_social_providers_update(org_id, provider_id)
Update a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_social_providers_update

> models::AdminSocialProvidersCreateResponse put_admin_social_providers_update(org_id, provider_id)
Create or replace a social login provider

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**provider_id** | **String** |  | [required] |

### Return type

[**models::AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

