# \AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_analytics_dashboard**](AdminSettingsApi.md#admin_analytics_dashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics
[**admin_analytics_logins**](AdminSettingsApi.md#admin_analytics_logins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics
[**admin_analytics_users**](AdminSettingsApi.md#admin_analytics_users) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics
[**admin_initial_access_tokens_create**](AdminSettingsApi.md#admin_initial_access_tokens_create) | **POST** /orgs/{orgId}/api/v1/admin/settings/authentication/initial-access-tokens | Create an initial access token for dynamic client registration
[**admin_initial_access_tokens_delete**](AdminSettingsApi.md#admin_initial_access_tokens_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/settings/authentication/initial-access-tokens/{tokenId} | Delete an initial access token of dynamic client registration
[**admin_initial_access_tokens_list**](AdminSettingsApi.md#admin_initial_access_tokens_list) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication/initial-access-tokens | List the initial access tokens of dynamic client registration
[**admin_organization_get**](AdminSettingsApi.md#admin_organization_get) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization profile
[**admin_settings_all**](AdminSettingsApi.md#admin_settings_all) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined)
[**admin_settings_auth_get**](AdminSettingsApi.md#admin_settings_auth_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings
[**admin_settings_authentication_get**](AdminSettingsApi.md#admin_settings_authentication_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth)
[**admin_settings_branding_get**](AdminSettingsApi.md#admin_settings_branding_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings
[**admin_settings_email_get**](AdminSettingsApi.md#admin_settings_email_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings
[**admin_settings_general_get**](AdminSettingsApi.md#admin_settings_general_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings
[**admin_settings_scim_get**](AdminSettingsApi.md#admin_settings_scim_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings
[**admin_settings_security_get**](AdminSettingsApi.md#admin_settings_security_get) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings
[**admin_tenant_get**](AdminSettingsApi.md#admin_tenant_get) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization profile
[**patch_admin_organization_update**](AdminSettingsApi.md#patch_admin_organization_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update the organization's name and settings
[**patch_admin_settings_auth_update**](AdminSettingsApi.md#patch_admin_settings_auth_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**patch_admin_settings_authentication_update**](AdminSettingsApi.md#patch_admin_settings_authentication_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**patch_admin_settings_branding_update**](AdminSettingsApi.md#patch_admin_settings_branding_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**patch_admin_settings_email_update**](AdminSettingsApi.md#patch_admin_settings_email_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**patch_admin_settings_general_update**](AdminSettingsApi.md#patch_admin_settings_general_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**patch_admin_settings_scim_update**](AdminSettingsApi.md#patch_admin_settings_scim_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**patch_admin_settings_security_update**](AdminSettingsApi.md#patch_admin_settings_security_update) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**patch_admin_tenant_update**](AdminSettingsApi.md#patch_admin_tenant_update) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update the organization's name and settings
[**put_admin_organization_update**](AdminSettingsApi.md#put_admin_organization_update) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update the organization's name and settings
[**put_admin_settings_auth_update**](AdminSettingsApi.md#put_admin_settings_auth_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings
[**put_admin_settings_authentication_update**](AdminSettingsApi.md#put_admin_settings_authentication_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth)
[**put_admin_settings_branding_update**](AdminSettingsApi.md#put_admin_settings_branding_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings
[**put_admin_settings_email_update**](AdminSettingsApi.md#put_admin_settings_email_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings
[**put_admin_settings_general_update**](AdminSettingsApi.md#put_admin_settings_general_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings
[**put_admin_settings_scim_update**](AdminSettingsApi.md#put_admin_settings_scim_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings
[**put_admin_settings_security_update**](AdminSettingsApi.md#put_admin_settings_security_update) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings
[**put_admin_tenant_update**](AdminSettingsApi.md#put_admin_tenant_update) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update the organization's name and settings



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


## admin_initial_access_tokens_create

> models::AdminInitialAccessTokensCreateResponse admin_initial_access_tokens_create(org_id)
Create an initial access token for dynamic client registration

Generates a token and adds it to the organization's list; the other tokens stay valid. The token is returned once, in this answer. A client presents it as `Authorization: Bearer <token>` at the registration endpoint. Needs `settings.manage`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminInitialAccessTokensCreateResponse**](AdminInitialAccessTokensCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_initial_access_tokens_delete

> models::MessageResponse admin_initial_access_tokens_delete(org_id, token_id)
Delete an initial access token of dynamic client registration

The token stops working at once; clients that it registered stay. Needs `settings.manage`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**token_id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_initial_access_tokens_list

> models::AdminInitialAccessTokensListResponse admin_initial_access_tokens_list(org_id)
List the initial access tokens of dynamic client registration

Ids only; a token is shown once, when it is created. Needs `settings.manage`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AdminInitialAccessTokensListResponse**](AdminInitialAccessTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_organization_get

> models::AdminTenantGetResponse admin_organization_get(org_id)
Get organization profile

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

Needs `settings.view`. The `branding` part is returned only to a caller who also holds `branding.view` (for an API key, its creator), as for GET /settings/branding and the portal's branding page; without it the key is left out.

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

Shows who sends the organization's mail: its own mail provider (set up in the portal) with the From address, From name and Reply-To stored there, or LumoAuth with LumoAuth's sender.

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
Get organization profile

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

> models::PutAdminTenantUpdateResponse patch_admin_organization_update(org_id, put_admin_tenant_update_request)
Update the organization's name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_tenant_update_request** | [**PutAdminTenantUpdateRequest**](PutAdminTenantUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_auth_update

> models::PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_auth_update(org_id, authentication_settings)
Update authentication settings

The login flow switches of the sign-in settings page (magic_link_enabled, magic_link_only, magic_link_expiry, email_first_mode) are stored with the sign-in page settings: read and change them with GET and PUT|PATCH /admin/settings/branding.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**authentication_settings** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_authentication_update

> models::PutAdminSettingsAuthenticationUpdateResponse patch_admin_settings_authentication_update(org_id, authentication_settings)
Update authentication settings (alias for settings/auth)

The login flow switches of the sign-in settings page (magic_link_enabled, magic_link_only, magic_link_expiry, email_first_mode) are stored with the sign-in page settings: read and change them with GET and PUT|PATCH /admin/settings/branding.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**authentication_settings** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_branding_update

> models::PutAdminSettingsBrandingUpdateResponse patch_admin_settings_branding_update(org_id, branding_settings)
Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**branding_settings** | [**BrandingSettings**](BrandingSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_email_update

> models::PutAdminSettingsEmailUpdateResponse patch_admin_settings_email_update(org_id, put_admin_settings_email_update_request)
Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_email_update_request** | Option<[**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md)> |  |  |

### Return type

[**models::PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_general_update

> models::PutAdminSettingsGeneralUpdateResponse patch_admin_settings_general_update(org_id, put_admin_settings_general_update_request)
Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_general_update_request** | Option<[**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md)> |  |  |

### Return type

[**models::PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_scim_update

> models::PutAdminSettingsScimUpdateResponse patch_admin_settings_scim_update(org_id, scim_settings)
Update SCIM settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**scim_settings** | [**ScimSettings**](ScimSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_settings_security_update

> models::PutAdminSettingsSecurityUpdateResponse patch_admin_settings_security_update(org_id, put_admin_settings_security_update_request)
Update security settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_security_update_request** | [**PutAdminSettingsSecurityUpdateRequest**](PutAdminSettingsSecurityUpdateRequest.md) | Free-form dictionary; keys merge with the stored ones. dpop_require_nonce is the only key that the server reads. | [required] |

### Return type

[**models::PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_admin_tenant_update

> models::PutAdminTenantUpdateResponse patch_admin_tenant_update(org_id, put_admin_tenant_update_request)
Update the organization's name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_tenant_update_request** | [**PutAdminTenantUpdateRequest**](PutAdminTenantUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_organization_update

> models::PutAdminTenantUpdateResponse put_admin_organization_update(org_id, put_admin_tenant_update_request)
Update the organization's name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_tenant_update_request** | [**PutAdminTenantUpdateRequest**](PutAdminTenantUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_auth_update

> models::PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_auth_update(org_id, authentication_settings)
Update authentication settings

The login flow switches of the sign-in settings page (magic_link_enabled, magic_link_only, magic_link_expiry, email_first_mode) are stored with the sign-in page settings: read and change them with GET and PUT|PATCH /admin/settings/branding.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**authentication_settings** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_authentication_update

> models::PutAdminSettingsAuthenticationUpdateResponse put_admin_settings_authentication_update(org_id, authentication_settings)
Update authentication settings (alias for settings/auth)

The login flow switches of the sign-in settings page (magic_link_enabled, magic_link_only, magic_link_expiry, email_first_mode) are stored with the sign-in page settings: read and change them with GET and PUT|PATCH /admin/settings/branding.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**authentication_settings** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_branding_update

> models::PutAdminSettingsBrandingUpdateResponse put_admin_settings_branding_update(org_id, branding_settings)
Update branding/login page settings

Changes the login page settings that are live on the hosted pages. Values go through the same validation as the portal form; keys that the validation does not know are not stored, and the keys whose value it refused are listed in rejected. A change is kept as a published version (restorable in the portal) and recorded in the audit log as branding.login_page_updated. Setting custom_css, custom_html or show_powered_by: false needs a plan that includes it; sending back a stored value, or clearing it, is never refused. A draft that is being edited in the portal is not changed. PUT and PATCH behave the same: keys that are not sent keep their value.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**branding_settings** | [**BrandingSettings**](BrandingSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_email_update

> models::PutAdminSettingsEmailUpdateResponse put_admin_settings_email_update(org_id, put_admin_settings_email_update_request)
Update email settings

Changes the sender of the mail that the organization's own mail provider sends: fromEmail, fromName and replyToEmail. The provider itself (credentials, host, on/off) is set up in the portal. Without a provider the mail is sent by LumoAuth with LumoAuth's sender, and a write is refused with 400. PATCH changes the fields sent; PUT replaces the three fields as a set (fromEmail is then required). The caller needs settings.manage and users.delete; an access token must come from a sign-in of the last 10 minutes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_email_update_request** | Option<[**PutAdminSettingsEmailUpdateRequest**](PutAdminSettingsEmailUpdateRequest.md)> |  |  |

### Return type

[**models::PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_general_update

> models::PutAdminSettingsGeneralUpdateResponse put_admin_settings_general_update(org_id, put_admin_settings_general_update_request)
Update general settings

Changes the name of the organization and the default language of the hosted pages. name, tenantName, display_name and displayName are four spellings of the one name: send one of them, or the same text in each. timezone is not a setting (dates are shown in UTC) and is refused with 400. Other keys are ignored. PUT and PATCH behave the same. The caller needs settings.manage, as for PATCH /admin/organization, which changes the same name; changing locale also needs branding.edit.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_general_update_request** | Option<[**PutAdminSettingsGeneralUpdateRequest**](PutAdminSettingsGeneralUpdateRequest.md)> |  |  |

### Return type

[**models::PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_scim_update

> models::PutAdminSettingsScimUpdateResponse put_admin_settings_scim_update(org_id, scim_settings)
Update SCIM settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**scim_settings** | [**ScimSettings**](ScimSettings.md) |  | [required] |

### Return type

[**models::PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_settings_security_update

> models::PutAdminSettingsSecurityUpdateResponse put_admin_settings_security_update(org_id, put_admin_settings_security_update_request)
Update security settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_settings_security_update_request** | [**PutAdminSettingsSecurityUpdateRequest**](PutAdminSettingsSecurityUpdateRequest.md) | Free-form dictionary; keys merge with the stored ones. dpop_require_nonce is the only key that the server reads. | [required] |

### Return type

[**models::PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_admin_tenant_update

> models::PutAdminTenantUpdateResponse put_admin_tenant_update(org_id, put_admin_tenant_update_request)
Update the organization's name and settings

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**put_admin_tenant_update_request** | [**PutAdminTenantUpdateRequest**](PutAdminTenantUpdateRequest.md) |  | [required] |

### Return type

[**models::PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

