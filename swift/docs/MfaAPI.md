# MfaAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMfaChallenge**](MfaAPI.md#createmfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge
[**deleteAuthenticator**](MfaAPI.md#deleteauthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator
[**enrollAuthenticator**](MfaAPI.md#enrollauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator
[**generateRecoveryCodes**](MfaAPI.md#generaterecoverycodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes
[**getMfaChallenge**](MfaAPI.md#getmfachallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status
[**getRecoveryCodeStatus**](MfaAPI.md#getrecoverycodestatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status
[**listMyAuthenticators**](MfaAPI.md#listmyauthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators
[**listTrustedDevices**](MfaAPI.md#listtrusteddevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices
[**revokeTrustedDevice**](MfaAPI.md#revoketrusteddevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device
[**updateAuthenticator**](MfaAPI.md#updateauthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default
[**verifyAuthenticator**](MfaAPI.md#verifyauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator
[**verifyMfaChallenge**](MfaAPI.md#verifymfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge


# **createMfaChallenge**
```swift
    open class func createMfaChallenge(orgId: String, createMfaChallengeRequest: CreateMfaChallengeRequest? = nil, completion: @escaping (_ data: MfaChallenge?, _ error: Error?) -> Void)
```

Start an MFA challenge

Starts the user's default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let createMfaChallengeRequest = CreateMfaChallengeRequest(purpose: "purpose_example", authenticatorId: "authenticatorId_example", minTier: 123, actionDescription: "actionDescription_example") // CreateMfaChallengeRequest |  (optional)

// Start an MFA challenge
MfaAPI.createMfaChallenge(orgId: orgId, createMfaChallengeRequest: createMfaChallengeRequest) { (response, error) in
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
 **createMfaChallengeRequest** | [**CreateMfaChallengeRequest**](CreateMfaChallengeRequest.md) |  | [optional] 

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthenticator**
```swift
    open class func deleteAuthenticator(orgId: String, id: String, xMFAChallenge: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 
let xMFAChallenge = "xMFAChallenge_example" // String | Approved step_up challenge id (optional)

// Remove an authenticator
MfaAPI.deleteAuthenticator(orgId: orgId, id: id, xMFAChallenge: xMFAChallenge) { (response, error) in
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
 **id** | **String** |  | 
 **xMFAChallenge** | **String** | Approved step_up challenge id | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enrollAuthenticator**
```swift
    open class func enrollAuthenticator(orgId: String, type: ModelType_enrollAuthenticator, enrollAuthenticatorRequest: EnrollAuthenticatorRequest? = nil, completion: @escaping (_ data: EnrollAuthenticator201Response?, _ error: Error?) -> Void)
```

Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 
let enrollAuthenticatorRequest = EnrollAuthenticatorRequest(phone: "phone_example", country: "country_example") // EnrollAuthenticatorRequest |  (optional)

// Start enrolling an authenticator
MfaAPI.enrollAuthenticator(orgId: orgId, type: type, enrollAuthenticatorRequest: enrollAuthenticatorRequest) { (response, error) in
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
 **type** | **String** |  | 
 **enrollAuthenticatorRequest** | [**EnrollAuthenticatorRequest**](EnrollAuthenticatorRequest.md) |  | [optional] 

### Return type

[**EnrollAuthenticator201Response**](EnrollAuthenticator201Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateRecoveryCodes**
```swift
    open class func generateRecoveryCodes(orgId: String, completion: @escaping (_ data: GenerateRecoveryCodesResponse?, _ error: Error?) -> Void)
```

Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Generate recovery codes
MfaAPI.generateRecoveryCodes(orgId: orgId) { (response, error) in
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

[**GenerateRecoveryCodesResponse**](GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMfaChallenge**
```swift
    open class func getMfaChallenge(orgId: String, id: String, completion: @escaping (_ data: MfaChallenge?, _ error: Error?) -> Void)
```

Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Get challenge status
MfaAPI.getMfaChallenge(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecoveryCodeStatus**
```swift
    open class func getRecoveryCodeStatus(orgId: String, completion: @escaping (_ data: GetRecoveryCodeStatusResponse?, _ error: Error?) -> Void)
```

Recovery-code status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Recovery-code status
MfaAPI.getRecoveryCodeStatus(orgId: orgId) { (response, error) in
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

[**GetRecoveryCodeStatusResponse**](GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyAuthenticators**
```swift
    open class func listMyAuthenticators(orgId: String, completion: @escaping (_ data: ListMyAuthenticatorsResponse?, _ error: Error?) -> Void)
```

List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List my authenticators
MfaAPI.listMyAuthenticators(orgId: orgId) { (response, error) in
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

[**ListMyAuthenticatorsResponse**](ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTrustedDevices**
```swift
    open class func listTrustedDevices(orgId: String, completion: @escaping (_ data: ListTrustedDevicesResponse?, _ error: Error?) -> Void)
```

List trusted devices

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List trusted devices
MfaAPI.listTrustedDevices(orgId: orgId) { (response, error) in
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

[**ListTrustedDevicesResponse**](ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeTrustedDevice**
```swift
    open class func revokeTrustedDevice(orgId: String, id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a trusted device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Revoke a trusted device
MfaAPI.revokeTrustedDevice(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthenticator**
```swift
    open class func updateAuthenticator(orgId: String, id: String, updateAuthenticatorRequest: UpdateAuthenticatorRequest, completion: @escaping (_ data: MfaAuthenticator?, _ error: Error?) -> Void)
```

Rename an authenticator or make it the default

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 
let updateAuthenticatorRequest = UpdateAuthenticatorRequest(displayName: "displayName_example", isDefault: false) // UpdateAuthenticatorRequest | 

// Rename an authenticator or make it the default
MfaAPI.updateAuthenticator(orgId: orgId, id: id, updateAuthenticatorRequest: updateAuthenticatorRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateAuthenticatorRequest** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md) |  | 

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAuthenticator**
```swift
    open class func verifyAuthenticator(orgId: String, id: String, verifyMfaChallengeRequest: VerifyMfaChallengeRequest? = nil, completion: @escaping (_ data: MfaAuthenticator?, _ error: Error?) -> Void)
```

Verify a pending authenticator

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 
let verifyMfaChallengeRequest = VerifyMfaChallengeRequest(code: "code_example", credential: 123) // VerifyMfaChallengeRequest |  (optional)

// Verify a pending authenticator
MfaAPI.verifyAuthenticator(orgId: orgId, id: id, verifyMfaChallengeRequest: verifyMfaChallengeRequest) { (response, error) in
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
 **id** | **String** |  | 
 **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | [optional] 

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyMfaChallenge**
```swift
    open class func verifyMfaChallenge(orgId: String, id: String, verifyMfaChallengeRequest: VerifyMfaChallengeRequest, completion: @escaping (_ data: MfaChallenge?, _ error: Error?) -> Void)
```

Answer a challenge

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app's offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 
let verifyMfaChallengeRequest = VerifyMfaChallengeRequest(code: "code_example", credential: 123) // VerifyMfaChallengeRequest | 

// Answer a challenge
MfaAPI.verifyMfaChallenge(orgId: orgId, id: id, verifyMfaChallengeRequest: verifyMfaChallengeRequest) { (response, error) in
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
 **id** | **String** |  | 
 **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | 

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

