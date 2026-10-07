# AdminMfaAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserAuthenticator**](AdminMfaAPI.md#deleteuserauthenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators
[**getMfaCoverageReport**](AdminMfaAPI.md#getmfacoveragereport) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
[**getMfaPolicy**](AdminMfaAPI.md#getmfapolicy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
[**issueTemporaryAccessCode**](AdminMfaAPI.md#issuetemporaryaccesscode) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
[**listUserAuthenticators**](AdminMfaAPI.md#listuserauthenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators
[**updateMfaPolicy**](AdminMfaAPI.md#updatemfapolicy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy


# **deleteUserAuthenticator**
```swift
    open class func deleteUserAuthenticator(orgId: String, userId: String, authenticatorId: String, completion: @escaping (_ data: DeleteUserAuthenticatorResponse?, _ error: Error?) -> Void)
```

Remove one of a user's authenticators

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let authenticatorId = "authenticatorId_example" // String | 

// Remove one of a user's authenticators
AdminMfaAPI.deleteUserAuthenticator(orgId: orgId, userId: userId, authenticatorId: authenticatorId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **authenticatorId** | **String** |  | 

### Return type

[**DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaCoverageReport**
```swift
    open class func getMfaCoverageReport(orgId: String, completion: @escaping (_ data: GetMfaCoverageReportResponse?, _ error: Error?) -> Void)
```

MFA enrollment coverage

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// MFA enrollment coverage
AdminMfaAPI.getMfaCoverageReport(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaPolicy**
```swift
    open class func getMfaPolicy(orgId: String, completion: @escaping (_ data: GetMfaPolicyResponse?, _ error: Error?) -> Void)
```

Get the MFA policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get the MFA policy
AdminMfaAPI.getMfaPolicy(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueTemporaryAccessCode**
```swift
    open class func issueTemporaryAccessCode(orgId: String, userId: String, issueTemporaryAccessCodeRequest: IssueTemporaryAccessCodeRequest, completion: @escaping (_ data: IssueTemporaryAccessCodeResponse?, _ error: Error?) -> Void)
```

Issue a temporary access code

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let issueTemporaryAccessCodeRequest = IssueTemporaryAccessCodeRequest(reason: "reason_example", ttlMinutes: 123, singleUse: false) // IssueTemporaryAccessCodeRequest | 

// Issue a temporary access code
AdminMfaAPI.issueTemporaryAccessCode(orgId: orgId, userId: userId, issueTemporaryAccessCodeRequest: issueTemporaryAccessCodeRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **issueTemporaryAccessCodeRequest** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md) |  | 

### Return type

[**IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserAuthenticators**
```swift
    open class func listUserAuthenticators(orgId: String, userId: String, completion: @escaping (_ data: ListUserAuthenticatorsResponse?, _ error: Error?) -> Void)
```

List a user's authenticators

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's authenticators
AdminMfaAPI.listUserAuthenticators(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMfaPolicy**
```swift
    open class func updateMfaPolicy(orgId: String, mfaPolicy: MfaPolicy, completion: @escaping (_ data: UpdateMfaPolicyResponse?, _ error: Error?) -> Void)
```

Update the MFA policy

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user's next authentication (POL-004).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let mfaPolicy = MfaPolicy(requirement: "requirement_example", allowedFactors: ["allowedFactors_example"], minTierLogin: 123, minTierStepUp: 123, passwordlessPasskey: false, requiredFactorCount: 123, gracePeriodDays: 123, remindIntervalDays: 123, trustedDeviceDays: 123, emailOtpCountsAsMfa: false, smsBlockVoip: false, smsCountryAllowlist: ["smsCountryAllowlist_example"], smsCountryDenylist: ["smsCountryDenylist_example"], nudgeIntervalDays: 123, stepUpMaxAgeSeconds: 123, requiredSince: 123) // MfaPolicy | 

// Update the MFA policy
AdminMfaAPI.updateMfaPolicy(orgId: orgId, mfaPolicy: mfaPolicy) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **mfaPolicy** | [**MfaPolicy**](MfaPolicy.md) |  | 

### Return type

[**UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

