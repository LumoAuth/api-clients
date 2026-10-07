# \MfaApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_mfa_challenge**](MfaApi.md#create_mfa_challenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge
[**delete_authenticator**](MfaApi.md#delete_authenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator
[**enroll_authenticator**](MfaApi.md#enroll_authenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator
[**generate_recovery_codes**](MfaApi.md#generate_recovery_codes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes
[**get_mfa_challenge**](MfaApi.md#get_mfa_challenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status
[**get_recovery_code_status**](MfaApi.md#get_recovery_code_status) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status
[**list_my_authenticators**](MfaApi.md#list_my_authenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators
[**list_trusted_devices**](MfaApi.md#list_trusted_devices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices
[**revoke_trusted_device**](MfaApi.md#revoke_trusted_device) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device
[**update_authenticator**](MfaApi.md#update_authenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default
[**verify_authenticator**](MfaApi.md#verify_authenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator
[**verify_mfa_challenge**](MfaApi.md#verify_mfa_challenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge



## create_mfa_challenge

> models::MfaChallenge create_mfa_challenge(org_id, create_mfa_challenge_request)
Start an MFA challenge

Starts the user's default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**create_mfa_challenge_request** | Option<[**CreateMfaChallengeRequest**](CreateMfaChallengeRequest.md)> |  |  |

### Return type

[**models::MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_authenticator

> delete_authenticator(org_id, id, x_mfa_challenge)
Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |
**x_mfa_challenge** | Option<**String**> | Approved step_up challenge id |  |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enroll_authenticator

> models::EnrollAuthenticator201Response enroll_authenticator(org_id, r#type, enroll_authenticator_request)
Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**r#type** | **String** |  | [required] |
**enroll_authenticator_request** | Option<[**EnrollAuthenticatorRequest**](EnrollAuthenticatorRequest.md)> |  |  |

### Return type

[**models::EnrollAuthenticator201Response**](enrollAuthenticator_201_response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generate_recovery_codes

> models::GenerateRecoveryCodesResponse generate_recovery_codes(org_id)
Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GenerateRecoveryCodesResponse**](GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_mfa_challenge

> models::MfaChallenge get_mfa_challenge(org_id, id)
Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_recovery_code_status

> models::GetRecoveryCodeStatusResponse get_recovery_code_status(org_id)
Recovery-code status

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetRecoveryCodeStatusResponse**](GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_my_authenticators

> models::ListMyAuthenticatorsResponse list_my_authenticators(org_id)
List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ListMyAuthenticatorsResponse**](ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_trusted_devices

> models::ListTrustedDevicesResponse list_trusted_devices(org_id)
List trusted devices

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::ListTrustedDevicesResponse**](ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revoke_trusted_device

> revoke_trusted_device(org_id, id)
Revoke a trusted device

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_authenticator

> models::MfaAuthenticator update_authenticator(org_id, id, update_authenticator_request)
Rename an authenticator or make it the default

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |
**update_authenticator_request** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md) |  | [required] |

### Return type

[**models::MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_authenticator

> models::MfaAuthenticator verify_authenticator(org_id, id, verify_mfa_challenge_request)
Verify a pending authenticator

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |
**verify_mfa_challenge_request** | Option<[**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md)> |  |  |

### Return type

[**models::MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verify_mfa_challenge

> models::MfaChallenge verify_mfa_challenge(org_id, id, verify_mfa_challenge_request)
Answer a challenge

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app's offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |
**verify_mfa_challenge_request** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | [required] |

### Return type

[**models::MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

