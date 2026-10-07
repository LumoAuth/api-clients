# LumoAuthApiClient::AdminMfaApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user_authenticator**](AdminMfaApi.md#delete_user_authenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators |
| [**get_mfa_coverage_report**](AdminMfaApi.md#get_mfa_coverage_report) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage |
| [**get_mfa_policy**](AdminMfaApi.md#get_mfa_policy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy |
| [**issue_temporary_access_code**](AdminMfaApi.md#issue_temporary_access_code) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code |
| [**list_user_authenticators**](AdminMfaApi.md#list_user_authenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators |
| [**update_mfa_policy**](AdminMfaApi.md#update_mfa_policy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy |


## delete_user_authenticator

> <DeleteUserAuthenticatorResponse> delete_user_authenticator(org_id, user_id, authenticator_id)

Remove one of a user's authenticators

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
authenticator_id = 'authenticator_id_example' # String | 

begin
  # Remove one of a user's authenticators
  result = api_instance.delete_user_authenticator(org_id, user_id, authenticator_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->delete_user_authenticator: #{e}"
end
```

#### Using the delete_user_authenticator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteUserAuthenticatorResponse>, Integer, Hash)> delete_user_authenticator_with_http_info(org_id, user_id, authenticator_id)

```ruby
begin
  # Remove one of a user's authenticators
  data, status_code, headers = api_instance.delete_user_authenticator_with_http_info(org_id, user_id, authenticator_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteUserAuthenticatorResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->delete_user_authenticator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **authenticator_id** | **String** |  |  |

### Return type

[**DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mfa_coverage_report

> <GetMfaCoverageReportResponse> get_mfa_coverage_report(org_id)

MFA enrollment coverage

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 

begin
  # MFA enrollment coverage
  result = api_instance.get_mfa_coverage_report(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->get_mfa_coverage_report: #{e}"
end
```

#### Using the get_mfa_coverage_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMfaCoverageReportResponse>, Integer, Hash)> get_mfa_coverage_report_with_http_info(org_id)

```ruby
begin
  # MFA enrollment coverage
  data, status_code, headers = api_instance.get_mfa_coverage_report_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMfaCoverageReportResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->get_mfa_coverage_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mfa_policy

> <GetMfaPolicyResponse> get_mfa_policy(org_id)

Get the MFA policy

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 

begin
  # Get the MFA policy
  result = api_instance.get_mfa_policy(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->get_mfa_policy: #{e}"
end
```

#### Using the get_mfa_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMfaPolicyResponse>, Integer, Hash)> get_mfa_policy_with_http_info(org_id)

```ruby
begin
  # Get the MFA policy
  data, status_code, headers = api_instance.get_mfa_policy_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMfaPolicyResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->get_mfa_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## issue_temporary_access_code

> <IssueTemporaryAccessCodeResponse> issue_temporary_access_code(org_id, user_id, issue_temporary_access_code_request)

Issue a temporary access code

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
issue_temporary_access_code_request = LumoAuthApiClient::IssueTemporaryAccessCodeRequest.new({reason: 'User lost phone; identity verified by video call'}) # IssueTemporaryAccessCodeRequest | 

begin
  # Issue a temporary access code
  result = api_instance.issue_temporary_access_code(org_id, user_id, issue_temporary_access_code_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->issue_temporary_access_code: #{e}"
end
```

#### Using the issue_temporary_access_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueTemporaryAccessCodeResponse>, Integer, Hash)> issue_temporary_access_code_with_http_info(org_id, user_id, issue_temporary_access_code_request)

```ruby
begin
  # Issue a temporary access code
  data, status_code, headers = api_instance.issue_temporary_access_code_with_http_info(org_id, user_id, issue_temporary_access_code_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueTemporaryAccessCodeResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->issue_temporary_access_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **issue_temporary_access_code_request** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md) |  |  |

### Return type

[**IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_authenticators

> <ListUserAuthenticatorsResponse> list_user_authenticators(org_id, user_id)

List a user's authenticators

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # List a user's authenticators
  result = api_instance.list_user_authenticators(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->list_user_authenticators: #{e}"
end
```

#### Using the list_user_authenticators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUserAuthenticatorsResponse>, Integer, Hash)> list_user_authenticators_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's authenticators
  data, status_code, headers = api_instance.list_user_authenticators_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUserAuthenticatorsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->list_user_authenticators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

[**ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mfa_policy

> <UpdateMfaPolicyResponse> update_mfa_policy(org_id, mfa_policy)

Update the MFA policy

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user's next authentication (POL-004).

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

api_instance = LumoAuthApiClient::AdminMfaApi.new
org_id = 'org_id_example' # String | 
mfa_policy = LumoAuthApiClient::MfaPolicy.new # MfaPolicy | 

begin
  # Update the MFA policy
  result = api_instance.update_mfa_policy(org_id, mfa_policy)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->update_mfa_policy: #{e}"
end
```

#### Using the update_mfa_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateMfaPolicyResponse>, Integer, Hash)> update_mfa_policy_with_http_info(org_id, mfa_policy)

```ruby
begin
  # Update the MFA policy
  data, status_code, headers = api_instance.update_mfa_policy_with_http_info(org_id, mfa_policy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateMfaPolicyResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminMfaApi->update_mfa_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **mfa_policy** | [**MfaPolicy**](MfaPolicy.md) |  |  |

### Return type

[**UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

