# \AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_analytics_dashboard**](AdminSettingsApi.md#admin_analytics_dashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
[**admin_analytics_logins**](AdminSettingsApi.md#admin_analytics_logins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
[**admin_analytics_users**](AdminSettingsApi.md#admin_analytics_users) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
[**admin_organization_get**](AdminSettingsApi.md#admin_organization_get) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile
[**admin_settings_all**](AdminSettingsApi.md#admin_settings_all) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
[**admin_settings_auth_get**](AdminSettingsApi.md#admin_settings_auth_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
[**admin_settings_authentication_get**](AdminSettingsApi.md#admin_settings_authentication_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
[**admin_settings_branding_get**](AdminSettingsApi.md#admin_settings_branding_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
[**admin_settings_email_get**](AdminSettingsApi.md#admin_settings_email_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
[**admin_settings_general_get**](AdminSettingsApi.md#admin_settings_general_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
[**admin_settings_scim_get**](AdminSettingsApi.md#admin_settings_scim_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
[**admin_settings_security_get**](AdminSettingsApi.md#admin_settings_security_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
[**admin_tenant_get**](AdminSettingsApi.md#admin_tenant_get) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile
[**patch_admin_organization_update**](AdminSettingsApi.md#patch_admin_organization_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**patch_admin_settings_auth_update**](AdminSettingsApi.md#patch_admin_settings_auth_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**patch_admin_settings_authentication_update**](AdminSettingsApi.md#patch_admin_settings_authentication_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**patch_admin_settings_branding_update**](AdminSettingsApi.md#patch_admin_settings_branding_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**patch_admin_settings_email_update**](AdminSettingsApi.md#patch_admin_settings_email_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**patch_admin_settings_general_update**](AdminSettingsApi.md#patch_admin_settings_general_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**patch_admin_settings_scim_update**](AdminSettingsApi.md#patch_admin_settings_scim_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**patch_admin_settings_security_update**](AdminSettingsApi.md#patch_admin_settings_security_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**patch_admin_tenant_update**](AdminSettingsApi.md#patch_admin_tenant_update) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings
[**put_admin_organization_update**](AdminSettingsApi.md#put_admin_organization_update) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings
[**put_admin_settings_auth_update**](AdminSettingsApi.md#put_admin_settings_auth_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**put_admin_settings_authentication_update**](AdminSettingsApi.md#put_admin_settings_authentication_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**put_admin_settings_branding_update**](AdminSettingsApi.md#put_admin_settings_branding_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**put_admin_settings_email_update**](AdminSettingsApi.md#put_admin_settings_email_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**put_admin_settings_general_update**](AdminSettingsApi.md#put_admin_settings_general_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**put_admin_settings_scim_update**](AdminSettingsApi.md#put_admin_settings_scim_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**put_admin_settings_security_update**](AdminSettingsApi.md#put_admin_settings_security_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**put_admin_tenant_update**](AdminSettingsApi.md#put_admin_tenant_update) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings



## admin_analytics_dashboard

> models::AdminAnalyticsDashboardResponse admin_analytics_dashboard(org_id)
Get dashboard analytics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_analytics_logins

> models::AdminAnalyticsLoginsResponse admin_analytics_logins(org_id, days)
Get login analytics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**days** | Option<**i32**> | Window in days (1-90, default 30). |  |[default to 30]

### Return type

[**models::AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_analytics_users

> models::AdminAnalyticsUsersResponse admin_analytics_users(org_id, days)
Get user growth analytics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**days** | Option<**i32**> | Window in days (1-90, default 30). |  |[default to 30]

### Return type

[**models::AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_organization_get

> models::AdminTenantGetResponse admin_organization_get(org_id)
Get organization (tenant) profile

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_all

> models::AdminSettingsAllResponse admin_settings_all(org_id)
Get all settings (combined)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_auth_get

> models::AdminSettingsAuthenticationGetResponse admin_settings_auth_get(org_id)
Get authentication settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_authentication_get

> models::AdminSettingsAuthenticationGetResponse admin_settings_authentication_get(org_id)
Get authentication settings (alias for settings/auth)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_branding_get

> models::AdminSettingsBrandingGetResponse admin_settings_branding_get(org_id)
Get branding/login page settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_email_get

> models::AdminSettingsEmailGetResponse admin_settings_email_get(org_id)
Get email settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_general_get

> models::AdminSettingsGeneralGetResponse admin_settings_general_get(org_id)
Get general settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_scim_get

> models::AdminSettingsScimGetResponse admin_settings_scim_get(org_id)
Get SCIM settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_settings_security_get

> models::AdminSettingsSecurityGetResponse admin_settings_security_get(org_id)
Get security settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_tenant_get

> models::AdminTenantGetResponse admin_tenant_get(org_id)
Get organization (tenant) profile

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_organization_update

> models::PutAdminTenantUpdateResponse patch_admin_organization_update(org_id)
Update organization (tenant) name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_auth_update

> models::PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_auth_update(org_id)
Update authentication settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_authentication_update

> models::PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_authentication_update(org_id)
Update authentication settings (alias for settings/auth)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_branding_update

> models::PutAdminSettingsBrandingUpdateResponse patch_admin_settings_branding_update(org_id)
Update branding/login page settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_email_update

> models::PutAdminSettingsEmailUpdateResponse patch_admin_settings_email_update(org_id)
Update email settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_general_update

> models::PutAdminSettingsGeneralUpdateResponse patch_admin_settings_general_update(org_id)
Update general settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_scim_update

> models::PutAdminSettingsScimUpdateResponse patch_admin_settings_scim_update(org_id)
Update SCIM settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_security_update

> models::PutAdminSettingsSecurityUpdateResponse patch_admin_settings_security_update(org_id)
Update security settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_tenant_update

> models::PutAdminTenantUpdateResponse patch_admin_tenant_update(org_id)
Update organization (tenant) name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_organization_update

> models::PutAdminTenantUpdateResponse put_admin_organization_update(org_id)
Update organization (tenant) name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_auth_update

> models::PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_auth_update(org_id)
Update authentication settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_authentication_update

> models::PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_authentication_update(org_id)
Update authentication settings (alias for settings/auth)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_branding_update

> models::PutAdminSettingsBrandingUpdateResponse put_admin_settings_branding_update(org_id)
Update branding/login page settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_email_update

> models::PutAdminSettingsEmailUpdateResponse put_admin_settings_email_update(org_id)
Update email settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_general_update

> models::PutAdminSettingsGeneralUpdateResponse put_admin_settings_general_update(org_id)
Update general settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_scim_update

> models::PutAdminSettingsScimUpdateResponse put_admin_settings_scim_update(org_id)
Update SCIM settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_security_update

> models::PutAdminSettingsSecurityUpdateResponse put_admin_settings_security_update(org_id)
Update security settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_tenant_update

> models::PutAdminTenantUpdateResponse put_admin_tenant_update(org_id)
Update organization (tenant) name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

