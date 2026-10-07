# AdminMfaApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**deleteUserAuthenticator**](#deleteuserauthenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user\&#39;s authenticators|
|[**getMfaCoverageReport**](#getmfacoveragereport) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage|
|[**getMfaPolicy**](#getmfapolicy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy|
|[**issueTemporaryAccessCode**](#issuetemporaryaccesscode) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code|
|[**listUserAuthenticators**](#listuserauthenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user\&#39;s authenticators|
|[**updateMfaPolicy**](#updatemfapolicy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy|

# **deleteUserAuthenticator**
> DeleteUserAuthenticatorResponse deleteUserAuthenticator()

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

### Example

```typescript
import {
    AdminMfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let authenticatorId: string; // (default to undefined)

const { status, data } = await apiInstance.deleteUserAuthenticator(
    orgId,
    userId,
    authenticatorId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|
| **authenticatorId** | [**string**] |  | defaults to undefined|


### Return type

**DeleteUserAuthenticatorResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Removed |  -  |
|**404** | User or authenticator not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaCoverageReport**
> GetMfaCoverageReportResponse getMfaCoverageReport()

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

### Example

```typescript
import {
    AdminMfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getMfaCoverageReport(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetMfaCoverageReportResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Coverage report |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaPolicy**
> GetMfaPolicyResponse getMfaPolicy()


### Example

```typescript
import {
    AdminMfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.getMfaPolicy(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**GetMfaPolicyResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | MFA policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueTemporaryAccessCode**
> IssueTemporaryAccessCodeResponse issueTemporaryAccessCode(issueTemporaryAccessCodeRequest)

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example

```typescript
import {
    AdminMfaApi,
    Configuration,
    IssueTemporaryAccessCodeRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let issueTemporaryAccessCodeRequest: IssueTemporaryAccessCodeRequest; //

const { status, data } = await apiInstance.issueTemporaryAccessCode(
    orgId,
    userId,
    issueTemporaryAccessCodeRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **issueTemporaryAccessCodeRequest** | **IssueTemporaryAccessCodeRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**IssueTemporaryAccessCodeResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Issued — the code is returned once |  -  |
|**403** | step_up_required |  -  |
|**422** | Reason missing |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserAuthenticators**
> ListUserAuthenticatorsResponse listUserAuthenticators()

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

### Example

```typescript
import {
    AdminMfaApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.listUserAuthenticators(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**ListUserAuthenticatorsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Authenticators |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMfaPolicy**
> UpdateMfaPolicyResponse updateMfaPolicy(mfaPolicy)

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user\'s next authentication (POL-004).

### Example

```typescript
import {
    AdminMfaApi,
    Configuration,
    MfaPolicy
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminMfaApi(configuration);

let orgId: string; // (default to undefined)
let mfaPolicy: MfaPolicy; //

const { status, data } = await apiInstance.updateMfaPolicy(
    orgId,
    mfaPolicy
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **mfaPolicy** | **MfaPolicy**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateMfaPolicyResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Updated policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

