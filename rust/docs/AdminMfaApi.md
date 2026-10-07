# \AdminMfaApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_authenticator**](AdminMfaApi.md#delete_user_authenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user's authenticators
[**get_mfa_coverage_report**](AdminMfaApi.md#get_mfa_coverage_report) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
[**get_mfa_policy**](AdminMfaApi.md#get_mfa_policy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
[**issue_temporary_access_code**](AdminMfaApi.md#issue_temporary_access_code) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
[**list_user_authenticators**](AdminMfaApi.md#list_user_authenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user's authenticators
[**update_mfa_policy**](AdminMfaApi.md#update_mfa_policy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy



## delete_user_authenticator

> models::DeleteUserAuthenticatorResponse delete_user_authenticator(org_id, user_id, authenticator_id)
Remove one of a user's authenticators

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**authenticator_id** | **String** |  | [required] |

### Return type

[**models::DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_mfa_coverage_report

> models::GetMfaCoverageReportResponse get_mfa_coverage_report(org_id)
MFA enrollment coverage

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_mfa_policy

> models::GetMfaPolicyResponse get_mfa_policy(org_id)
Get the MFA policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## issue_temporary_access_code

> models::IssueTemporaryAccessCodeResponse issue_temporary_access_code(org_id, user_id, issue_temporary_access_code_request)
Issue a temporary access code

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**issue_temporary_access_code_request** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md) |  | [required] |

### Return type

[**models::IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_user_authenticators

> models::ListUserAuthenticatorsResponse list_user_authenticators(org_id, user_id)
List a user's authenticators

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |

### Return type

[**models::ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_mfa_policy

> models::UpdateMfaPolicyResponse update_mfa_policy(org_id, mfa_policy)
Update the MFA policy

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user's next authentication (POL-004).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**mfa_policy** | [**MfaPolicy**](MfaPolicy.md) |  | [required] |

### Return type

[**models::UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

