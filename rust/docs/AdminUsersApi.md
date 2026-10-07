# \AdminUsersApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_group**](AdminUsersApi.md#add_user_group) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group
[**add_user_permission**](AdminUsersApi.md#add_user_permission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user
[**add_user_role**](AdminUsersApi.md#add_user_role) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user
[**admin_identities_legacy_saml_relink**](AdminUsersApi.md#admin_identities_legacy_saml_relink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP
[**admin_identities_legacy_saml_report**](AdminUsersApi.md#admin_identities_legacy_saml_report) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report
[**admin_identities_link**](AdminUsersApi.md#admin_identities_link) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user
[**admin_identities_list**](AdminUsersApi.md#admin_identities_list) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user's federated identity links
[**admin_identities_unlink**](AdminUsersApi.md#admin_identities_unlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user's SAML, LDAP or social identity
[**block_user**](AdminUsersApi.md#block_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user
[**create_user**](AdminUsersApi.md#create_user) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user
[**delete_user**](AdminUsersApi.md#delete_user) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user
[**get_user**](AdminUsersApi.md#get_user) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user
[**list_user_groups**](AdminUsersApi.md#list_user_groups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user's groups
[**list_user_permissions**](AdminUsersApi.md#list_user_permissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user's direct permissions
[**list_user_roles**](AdminUsersApi.md#list_user_roles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user's roles
[**list_users**](AdminUsersApi.md#list_users) | **GET** /orgs/{orgId}/api/v1/admin/users | List users
[**mark_user_verified**](AdminUsersApi.md#mark_user_verified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user's email as verified
[**patch_user**](AdminUsersApi.md#patch_user) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**remove_user_group**](AdminUsersApi.md#remove_user_group) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group
[**remove_user_permission**](AdminUsersApi.md#remove_user_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user
[**remove_user_role**](AdminUsersApi.md#remove_user_role) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user
[**reset_user_mfa**](AdminUsersApi.md#reset_user_mfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)
[**send_user_verification_email**](AdminUsersApi.md#send_user_verification_email) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email
[**set_user_password**](AdminUsersApi.md#set_user_password) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user's password
[**set_user_password_post**](AdminUsersApi.md#set_user_password_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user's password
[**trigger_user_password_reset**](AdminUsersApi.md#trigger_user_password_reset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email
[**unblock_user**](AdminUsersApi.md#unblock_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user
[**update_user**](AdminUsersApi.md#update_user) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**update_user_groups**](AdminUsersApi.md#update_user_groups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user's groups
[**update_user_roles**](AdminUsersApi.md#update_user_roles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user's roles



## add_user_group

> models::AddUserGroupResponse add_user_group(org_id, user_id)
Add a user to a group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AddUserGroupResponse**](AddUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_user_permission

> models::AddUserPermissionResponse add_user_permission(org_id, user_id)
Assign a permission to a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AddUserPermissionResponse**](AddUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_user_role

> models::AddUserRoleResponse add_user_role(org_id, user_id)
Assign a role to a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AddUserRoleResponse**](AddUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_identities_legacy_saml_relink

> models::AdminIdentitiesLegacySamlRelinkResponse admin_identities_legacy_saml_relink(org_id, admin_identities_legacy_saml_relink_request)
Relink legacy SAML users to an IdP

Rebinds legacy bare-NameID users to `idp_id`, keeping their NameID: either `user_ids`, or every legacy user whose email domain the IdP's allowed email domains claim (`all_matching_domains: true`). Users the caller does not outrank, or whose NameID is already linked at that IdP, are skipped. `dry_run` (default true) only reports what would change. A real run revokes each relinked user's sessions, notifies them and is audited (identity.link.created per user, identity.link.bulk_relinked once); signed-in admins need fresh MFA.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**admin_identities_legacy_saml_relink_request** | [**AdminIdentitiesLegacySamlRelinkRequest**](AdminIdentitiesLegacySamlRelinkRequest.md) |  | [required] |

### Return type

[**models::AdminIdentitiesLegacySamlRelinkResponse**](AdminIdentitiesLegacySamlRelinkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_identities_legacy_saml_report

> models::AdminIdentitiesLegacySamlReportResponse admin_identities_legacy_saml_report(org_id, idp_id)
Legacy SAML bindings report

Users still bound by a bare NameID (from before SAML links were scoped to their IdP). While the organization has more than one SAML IdP (`ambiguous: true`) these users are refused at SAML sign-in until relinked. Each user lists the IdPs whose allowed email domains claim their address; `suggested_idp_id` is set when exactly one does. Filter with `idp_id`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**idp_id** | Option<**i32**> |  |  |

### Return type

[**models::AdminIdentitiesLegacySamlReportResponse**](AdminIdentitiesLegacySamlReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_identities_link

> models::AdminAgentsGetResponse admin_identities_link(org_id, user_id, admin_identities_link_request)
Link a SAML or LDAP identity to a user

Sets (or replaces) the user's SAML binding (`idp_id` + `name_id`) or LDAP binding (`ldap_config_id` + `dn`; omit `dn` to look the entry up in the directory by the user's email / username). Refused with 409 when another user already holds that identity, or when the user is linked to a different federated source (unlink it first). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.created. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**admin_identities_link_request** | [**AdminIdentitiesLinkRequest**](AdminIdentitiesLinkRequest.md) |  | [required] |

### Return type

[**models::AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_identities_list

> models::AdminIdentitiesListResponse admin_identities_list(org_id, user_id)
List a user's federated identity links

SAML (IdP + NameID), LDAP (directory + DN), and social / OIDC provider links. A SAML link with `legacy: true` stores a bare NameID and is refused at sign-in while the organization has more than one SAML IdP.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AdminIdentitiesListResponse**](AdminIdentitiesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## admin_identities_unlink

> models::AdminAgentsGetResponse admin_identities_unlink(r#type, org_id, user_id)
Unlink a user's SAML, LDAP or social identity

Removes the binding of the given type (`saml`, `ldap` or `social`). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.removed. Unlinking LDAP also clears LDAP-only. Same step-up rule as linking.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**r#type** | **String** |  | [required] |
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## block_user

> models::BlockUserResponse block_user(org_id, user_id)
Block a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::BlockUserResponse**](BlockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_user

> models::CreateUserResponse create_user(org_id)
Create a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::CreateUserResponse**](CreateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_user

> models::DeleteUserResponse delete_user(org_id, user_id)
Delete a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_user

> models::GetUserResponse get_user(org_id, user_id)
Get a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::GetUserResponse**](GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_user_groups

> models::AdminGroupsGroupsGetRolesResponse list_user_groups(org_id, user_id)
List a user's groups

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_user_permissions

> models::AdminRolesGetPermissionsResponse list_user_permissions(org_id, user_id)
List a user's direct permissions

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_user_roles

> models::AdminGroupsGroupsGetRolesResponse list_user_roles(org_id, user_id)
List a user's roles

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_users

> models::ListUsersResponse list_users(org_id)
List users

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ListUsersResponse**](ListUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mark_user_verified

> models::MarkUserVerifiedResponse mark_user_verified(org_id, user_id)
Mark a user's email as verified

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::MarkUserVerifiedResponse**](MarkUserVerifiedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_user

> models::UpdateUserResponse patch_user(org_id, user_id)
Update a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_user_group

> models::RemoveUserGroupResponse remove_user_group(org_id, user_id, group_id)
Remove a user from a group

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**group_id** | **String** |  | [required] |

### Return type

[**models::RemoveUserGroupResponse**](RemoveUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_user_permission

> models::RemoveUserPermissionResponse remove_user_permission(org_id, user_id, permission_id)
Remove a permission from a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**permission_id** | **String** |  | [required] |

### Return type

[**models::RemoveUserPermissionResponse**](RemoveUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_user_role

> models::RemoveUserRoleResponse remove_user_role(org_id, user_id, role_id)
Remove a role from a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**role_id** | **String** |  | [required] |

### Return type

[**models::RemoveUserRoleResponse**](RemoveUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reset_user_mfa

> reset_user_mfa(org_id, user_id)
Reset MFA (removed)

Removed: admins cannot disable a user's MFA. Issue a temporary access code with POST /users/{userId}/temporary-access-code instead, or remove a single lost authenticator with DELETE /users/{userId}/authenticators/{authenticatorId}.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## send_user_verification_email

> models::SendUserVerificationEmailResponse send_user_verification_email(org_id, user_id)
Send a verification email

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::SendUserVerificationEmailResponse**](SendUserVerificationEmailResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_user_password

> models::SetUserPasswordPostResponse set_user_password(org_id, user_id)
Set a user's password

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_user_password_post

> models::SetUserPasswordPostResponse set_user_password_post(org_id, user_id)
Set a user's password

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## trigger_user_password_reset

> models::TriggerUserPasswordResetResponse trigger_user_password_reset(org_id, user_id)
Send a password reset email

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::TriggerUserPasswordResetResponse**](TriggerUserPasswordResetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unblock_user

> models::UnblockUserResponse unblock_user(org_id, user_id)
Unblock a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::UnblockUserResponse**](UnblockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_user

> models::UpdateUserResponse update_user(org_id, user_id)
Update a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_user_groups

> models::UpdateUserGroupsResponse update_user_groups(org_id, user_id)
Replace a user's groups

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::UpdateUserGroupsResponse**](UpdateUserGroupsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_user_roles

> models::UpdateUserRolesResponse update_user_roles(org_id, user_id)
Replace a user's roles

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::UpdateUserRolesResponse**](UpdateUserRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

