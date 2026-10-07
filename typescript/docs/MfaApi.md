# MfaApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createMfaChallenge**](#createmfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge|
|[**deleteAuthenticator**](#deleteauthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator|
|[**enrollAuthenticator**](#enrollauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator|
|[**generateRecoveryCodes**](#generaterecoverycodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes|
|[**getMfaChallenge**](#getmfachallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status|
|[**getRecoveryCodeStatus**](#getrecoverycodestatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status|
|[**listMyAuthenticators**](#listmyauthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators|
|[**listTrustedDevices**](#listtrusteddevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices|
|[**revokeTrustedDevice**](#revoketrusteddevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device|
|[**updateAuthenticator**](#updateauthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default|
|[**verifyAuthenticator**](#verifyauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator|
|[**verifyMfaChallenge**](#verifymfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge|

# **createMfaChallenge**
> MfaChallenge createMfaChallenge()

Starts the user\'s default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

### Example

```typescript
import {
    MfaApi,
    Configuration,
    CreateMfaChallengeRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let createMfaChallengeRequest: CreateMfaChallengeRequest; // (optional)

const { status, data } = await apiInstance.createMfaChallenge(
    orgId,
    createMfaChallengeRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **createMfaChallengeRequest** | **CreateMfaChallengeRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**MfaChallenge**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Challenge issued |  -  |
|**404** | authenticator_not_found (no factor meets the tier) |  -  |
|**429** | mfa_locked / rate_limited / push_suspended |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthenticator**
> deleteAuthenticator()

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)
let xMFAChallenge: string; //Approved step_up challenge id (optional) (default to undefined)

const { status, data } = await apiInstance.deleteAuthenticator(
    orgId,
    id,
    xMFAChallenge
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|
| **xMFAChallenge** | [**string**] | Approved step_up challenge id | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Removed |  -  |
|**403** | step_up_required |  -  |
|**409** | last_factor_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enrollAuthenticator**
> EnrollAuthenticator201Response enrollAuthenticator()

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

### Example

```typescript
import {
    MfaApi,
    Configuration,
    EnrollAuthenticatorRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let type: 'totp' | 'sms_otp' | 'email_otp' | 'push' | 'passkey'; // (default to undefined)
let enrollAuthenticatorRequest: EnrollAuthenticatorRequest; // (optional)

const { status, data } = await apiInstance.enrollAuthenticator(
    orgId,
    type,
    enrollAuthenticatorRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **enrollAuthenticatorRequest** | **EnrollAuthenticatorRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **type** | [**&#39;totp&#39; | &#39;sms_otp&#39; | &#39;email_otp&#39; | &#39;push&#39; | &#39;passkey&#39;**]**Array<&#39;totp&#39; &#124; &#39;sms_otp&#39; &#124; &#39;email_otp&#39; &#124; &#39;push&#39; &#124; &#39;passkey&#39;>** |  | defaults to undefined|


### Return type

**EnrollAuthenticator201Response**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Pending authenticator and what the client needs to finish (shape depends on {type}) |  -  |
|**403** | factor_not_allowed or step_up_required |  -  |
|**422** | invalid_input (e.g. invalid phone number) |  -  |
|**429** | rate_limited |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateRecoveryCodes**
> GenerateRecoveryCodesResponse generateRecoveryCodes()

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.generateRecoveryCodes(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GenerateRecoveryCodesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Codes (shown once) |  -  |
|**403** | step_up_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaChallenge**
> MfaChallenge getMfaChallenge()

Poll this for push challenges; status turns approved / denied / expired.

### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.getMfaChallenge(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**MfaChallenge**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Challenge |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecoveryCodeStatus**
> GetRecoveryCodeStatusResponse getRecoveryCodeStatus()


### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getRecoveryCodeStatus(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetRecoveryCodeStatusResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Remaining count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyAuthenticators**
> ListMyAuthenticatorsResponse listMyAuthenticators()

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listMyAuthenticators(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListMyAuthenticatorsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authenticators |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrustedDevices**
> ListTrustedDevicesResponse listTrustedDevices()


### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.listTrustedDevices(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**ListTrustedDevicesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Trusted devices |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeTrustedDevice**
> revokeTrustedDevice()


### Example

```typescript
import {
    MfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)

const { status, data } = await apiInstance.revokeTrustedDevice(
    orgId,
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Revoked |  -  |
|**404** | Not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthenticator**
> MfaAuthenticator updateAuthenticator(updateAuthenticatorRequest)


### Example

```typescript
import {
    MfaApi,
    Configuration,
    UpdateAuthenticatorRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)
let updateAuthenticatorRequest: UpdateAuthenticatorRequest; //

const { status, data } = await apiInstance.updateAuthenticator(
    orgId,
    id,
    updateAuthenticatorRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **updateAuthenticatorRequest** | **UpdateAuthenticatorRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**MfaAuthenticator**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAuthenticator**
> MfaAuthenticator verifyAuthenticator()

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

### Example

```typescript
import {
    MfaApi,
    Configuration,
    VerifyMfaChallengeRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)
let verifyMfaChallengeRequest: VerifyMfaChallengeRequest; // (optional)

const { status, data } = await apiInstance.verifyAuthenticator(
    orgId,
    id,
    verifyMfaChallengeRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **verifyMfaChallengeRequest** | **VerifyMfaChallengeRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**MfaAuthenticator**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Active authenticator, or current push-enrollment state |  -  |
|**400** | invalid_code |  -  |
|**410** | Enrollment expired |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyMfaChallenge**
> MfaChallenge verifyMfaChallenge(verifyMfaChallengeRequest)

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app\'s offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

### Example

```typescript
import {
    MfaApi,
    Configuration,
    VerifyMfaChallengeRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new MfaApi(configuration);

let orgId: string; // (default to undefined)
let id: string; // (default to undefined)
let verifyMfaChallengeRequest: VerifyMfaChallengeRequest; //

const { status, data } = await apiInstance.verifyMfaChallenge(
    orgId,
    id,
    verifyMfaChallengeRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **verifyMfaChallengeRequest** | **VerifyMfaChallengeRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **id** | [**string**] |  | defaults to undefined|


### Return type

**MfaChallenge**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Approved |  -  |
|**400** | invalid_code (with attempts_remaining) |  -  |
|**403** | challenge_binding_mismatch |  -  |
|**410** | challenge_expired |  -  |
|**429** | mfa_locked |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

