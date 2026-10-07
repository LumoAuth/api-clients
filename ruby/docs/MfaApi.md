# LumoAuthApiClient::MfaApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_mfa_challenge**](MfaApi.md#create_mfa_challenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge |
| [**delete_authenticator**](MfaApi.md#delete_authenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator |
| [**enroll_authenticator**](MfaApi.md#enroll_authenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator |
| [**generate_recovery_codes**](MfaApi.md#generate_recovery_codes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes |
| [**get_mfa_challenge**](MfaApi.md#get_mfa_challenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status |
| [**get_recovery_code_status**](MfaApi.md#get_recovery_code_status) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status |
| [**list_my_authenticators**](MfaApi.md#list_my_authenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators |
| [**list_trusted_devices**](MfaApi.md#list_trusted_devices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices |
| [**revoke_trusted_device**](MfaApi.md#revoke_trusted_device) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device |
| [**update_authenticator**](MfaApi.md#update_authenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default |
| [**verify_authenticator**](MfaApi.md#verify_authenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator |
| [**verify_mfa_challenge**](MfaApi.md#verify_mfa_challenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge |


## create_mfa_challenge

> <MfaChallenge> create_mfa_challenge(org_id, opts)

Start an MFA challenge

Starts the user's default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
opts = {
  create_mfa_challenge_request: LumoAuthApiClient::CreateMfaChallengeRequest.new # CreateMfaChallengeRequest | 
}

begin
  # Start an MFA challenge
  result = api_instance.create_mfa_challenge(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->create_mfa_challenge: #{e}"
end
```

#### Using the create_mfa_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MfaChallenge>, Integer, Hash)> create_mfa_challenge_with_http_info(org_id, opts)

```ruby
begin
  # Start an MFA challenge
  data, status_code, headers = api_instance.create_mfa_challenge_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MfaChallenge>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->create_mfa_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **create_mfa_challenge_request** | [**CreateMfaChallengeRequest**](CreateMfaChallengeRequest.md) |  | [optional] |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_authenticator

> delete_authenticator(org_id, id, opts)

Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 
opts = {
  x_mfa_challenge: 'x_mfa_challenge_example' # String | Approved step_up challenge id
}

begin
  # Remove an authenticator
  api_instance.delete_authenticator(org_id, id, opts)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->delete_authenticator: #{e}"
end
```

#### Using the delete_authenticator_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_authenticator_with_http_info(org_id, id, opts)

```ruby
begin
  # Remove an authenticator
  data, status_code, headers = api_instance.delete_authenticator_with_http_info(org_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->delete_authenticator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |
| **x_mfa_challenge** | **String** | Approved step_up challenge id | [optional] |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enroll_authenticator

> <EnrollAuthenticator201Response> enroll_authenticator(org_id, type, opts)

Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
type = 'totp' # String | 
opts = {
  enroll_authenticator_request: LumoAuthApiClient::EnrollAuthenticatorRequest.new # EnrollAuthenticatorRequest | 
}

begin
  # Start enrolling an authenticator
  result = api_instance.enroll_authenticator(org_id, type, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->enroll_authenticator: #{e}"
end
```

#### Using the enroll_authenticator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollAuthenticator201Response>, Integer, Hash)> enroll_authenticator_with_http_info(org_id, type, opts)

```ruby
begin
  # Start enrolling an authenticator
  data, status_code, headers = api_instance.enroll_authenticator_with_http_info(org_id, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollAuthenticator201Response>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->enroll_authenticator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  |  |
| **enroll_authenticator_request** | [**EnrollAuthenticatorRequest**](EnrollAuthenticatorRequest.md) |  | [optional] |

### Return type

[**EnrollAuthenticator201Response**](EnrollAuthenticator201Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_recovery_codes

> <GenerateRecoveryCodesResponse> generate_recovery_codes(org_id)

Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 

begin
  # Generate recovery codes
  result = api_instance.generate_recovery_codes(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->generate_recovery_codes: #{e}"
end
```

#### Using the generate_recovery_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateRecoveryCodesResponse>, Integer, Hash)> generate_recovery_codes_with_http_info(org_id)

```ruby
begin
  # Generate recovery codes
  data, status_code, headers = api_instance.generate_recovery_codes_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateRecoveryCodesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->generate_recovery_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GenerateRecoveryCodesResponse**](GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mfa_challenge

> <MfaChallenge> get_mfa_challenge(org_id, id)

Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get challenge status
  result = api_instance.get_mfa_challenge(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->get_mfa_challenge: #{e}"
end
```

#### Using the get_mfa_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MfaChallenge>, Integer, Hash)> get_mfa_challenge_with_http_info(org_id, id)

```ruby
begin
  # Get challenge status
  data, status_code, headers = api_instance.get_mfa_challenge_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MfaChallenge>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->get_mfa_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recovery_code_status

> <GetRecoveryCodeStatusResponse> get_recovery_code_status(org_id)

Recovery-code status

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 

begin
  # Recovery-code status
  result = api_instance.get_recovery_code_status(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->get_recovery_code_status: #{e}"
end
```

#### Using the get_recovery_code_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecoveryCodeStatusResponse>, Integer, Hash)> get_recovery_code_status_with_http_info(org_id)

```ruby
begin
  # Recovery-code status
  data, status_code, headers = api_instance.get_recovery_code_status_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecoveryCodeStatusResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->get_recovery_code_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetRecoveryCodeStatusResponse**](GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_my_authenticators

> <ListMyAuthenticatorsResponse> list_my_authenticators(org_id)

List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 

begin
  # List my authenticators
  result = api_instance.list_my_authenticators(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->list_my_authenticators: #{e}"
end
```

#### Using the list_my_authenticators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMyAuthenticatorsResponse>, Integer, Hash)> list_my_authenticators_with_http_info(org_id)

```ruby
begin
  # List my authenticators
  data, status_code, headers = api_instance.list_my_authenticators_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMyAuthenticatorsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->list_my_authenticators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListMyAuthenticatorsResponse**](ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_trusted_devices

> <ListTrustedDevicesResponse> list_trusted_devices(org_id)

List trusted devices

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 

begin
  # List trusted devices
  result = api_instance.list_trusted_devices(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->list_trusted_devices: #{e}"
end
```

#### Using the list_trusted_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrustedDevicesResponse>, Integer, Hash)> list_trusted_devices_with_http_info(org_id)

```ruby
begin
  # List trusted devices
  data, status_code, headers = api_instance.list_trusted_devices_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrustedDevicesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->list_trusted_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListTrustedDevicesResponse**](ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_trusted_device

> revoke_trusted_device(org_id, id)

Revoke a trusted device

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Revoke a trusted device
  api_instance.revoke_trusted_device(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->revoke_trusted_device: #{e}"
end
```

#### Using the revoke_trusted_device_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_trusted_device_with_http_info(org_id, id)

```ruby
begin
  # Revoke a trusted device
  data, status_code, headers = api_instance.revoke_trusted_device_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->revoke_trusted_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_authenticator

> <MfaAuthenticator> update_authenticator(org_id, id, update_authenticator_request)

Rename an authenticator or make it the default

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 
update_authenticator_request = LumoAuthApiClient::UpdateAuthenticatorRequest.new # UpdateAuthenticatorRequest | 

begin
  # Rename an authenticator or make it the default
  result = api_instance.update_authenticator(org_id, id, update_authenticator_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->update_authenticator: #{e}"
end
```

#### Using the update_authenticator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MfaAuthenticator>, Integer, Hash)> update_authenticator_with_http_info(org_id, id, update_authenticator_request)

```ruby
begin
  # Rename an authenticator or make it the default
  data, status_code, headers = api_instance.update_authenticator_with_http_info(org_id, id, update_authenticator_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MfaAuthenticator>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->update_authenticator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |
| **update_authenticator_request** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md) |  |  |

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_authenticator

> <MfaAuthenticator> verify_authenticator(org_id, id, opts)

Verify a pending authenticator

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 
opts = {
  verify_mfa_challenge_request: LumoAuthApiClient::VerifyMfaChallengeRequest.new # VerifyMfaChallengeRequest | 
}

begin
  # Verify a pending authenticator
  result = api_instance.verify_authenticator(org_id, id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->verify_authenticator: #{e}"
end
```

#### Using the verify_authenticator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MfaAuthenticator>, Integer, Hash)> verify_authenticator_with_http_info(org_id, id, opts)

```ruby
begin
  # Verify a pending authenticator
  data, status_code, headers = api_instance.verify_authenticator_with_http_info(org_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MfaAuthenticator>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->verify_authenticator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |
| **verify_mfa_challenge_request** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  | [optional] |

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_mfa_challenge

> <MfaChallenge> verify_mfa_challenge(org_id, id, verify_mfa_challenge_request)

Answer a challenge

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app's offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::MfaApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 
verify_mfa_challenge_request = LumoAuthApiClient::VerifyMfaChallengeRequest.new # VerifyMfaChallengeRequest | 

begin
  # Answer a challenge
  result = api_instance.verify_mfa_challenge(org_id, id, verify_mfa_challenge_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->verify_mfa_challenge: #{e}"
end
```

#### Using the verify_mfa_challenge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MfaChallenge>, Integer, Hash)> verify_mfa_challenge_with_http_info(org_id, id, verify_mfa_challenge_request)

```ruby
begin
  # Answer a challenge
  data, status_code, headers = api_instance.verify_mfa_challenge_with_http_info(org_id, id, verify_mfa_challenge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MfaChallenge>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling MfaApi->verify_mfa_challenge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |
| **verify_mfa_challenge_request** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  |  |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

