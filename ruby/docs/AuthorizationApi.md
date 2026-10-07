# LumoAuthApiClient::AuthorizationApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_abac**](AuthorizationApi.md#check_abac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller |
| [**check_abac_bulk**](AuthorizationApi.md#check_abac_bulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call |
| [**check_all_permissions**](AuthorizationApi.md#check_all_permissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions |
| [**check_any_permission**](AuthorizationApi.md#check_any_permission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions |
| [**check_permission**](AuthorizationApi.md#check_permission) | **POST** /api/v1/authz/check | Check one permission |
| [**check_permissions_bulk**](AuthorizationApi.md#check_permissions_bulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call |
| [**check_relation**](AuthorizationApi.md#check_relation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check |
| [**check_relation_scoped**](AuthorizationApi.md#check_relation_scoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check |
| [**evaluate**](AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation |
| [**evaluate_batch**](AuthorizationApi.md#evaluate_batch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations |
| [**expand_relation**](AuthorizationApi.md#expand_relation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites. |
| [**expand_relation_scoped**](AuthorizationApi.md#expand_relation_scoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope). |
| [**get_my_attributes**](AuthorizationApi.md#get_my_attributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller&#39;s ABAC subject attributes |
| [**get_resource_attributes**](AuthorizationApi.md#get_resource_attributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource |
| [**list_attribute_definitions**](AuthorizationApi.md#list_attribute_definitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization |
| [**list_permissions**](AuthorizationApi.md#list_permissions) | **GET** /api/v1/authz/permissions | List the caller&#39;s effective permissions |
| [**set_resource_attribute**](AuthorizationApi.md#set_resource_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute |
| [**set_user_attribute**](AuthorizationApi.md#set_user_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute |


## check_abac

> <CheckAbacResponse> check_abac(org_id)

Evaluate an ABAC policy decision for the caller

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Evaluate an ABAC policy decision for the caller
  result = api_instance.check_abac(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac: #{e}"
end
```

#### Using the check_abac_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAbacResponse>, Integer, Hash)> check_abac_with_http_info(org_id)

```ruby
begin
  # Evaluate an ABAC policy decision for the caller
  data, status_code, headers = api_instance.check_abac_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAbacResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**CheckAbacResponse**](CheckAbacResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_abac_bulk

> <CheckAbacBulkResponse> check_abac_bulk(org_id)

Evaluate up to 100 ABAC checks for the caller in one call

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Evaluate up to 100 ABAC checks for the caller in one call
  result = api_instance.check_abac_bulk(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_bulk: #{e}"
end
```

#### Using the check_abac_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAbacBulkResponse>, Integer, Hash)> check_abac_bulk_with_http_info(org_id)

```ruby
begin
  # Evaluate up to 100 ABAC checks for the caller in one call
  data, status_code, headers = api_instance.check_abac_bulk_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAbacBulkResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**CheckAbacBulkResponse**](CheckAbacBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_all_permissions

> <CheckAnyPermissionResponse> check_all_permissions

Check whether the subject holds all of the permissions

POST /api/v1/authz/check-all Body: {   \"permissions\": [\"document.edit\", \"document.publish\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check whether the subject holds all of the permissions
  result = api_instance.check_all_permissions
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_all_permissions: #{e}"
end
```

#### Using the check_all_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAnyPermissionResponse>, Integer, Hash)> check_all_permissions_with_http_info

```ruby
begin
  # Check whether the subject holds all of the permissions
  data, status_code, headers = api_instance.check_all_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAnyPermissionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_all_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_any_permission

> <CheckAnyPermissionResponse> check_any_permission

Check whether the subject holds any of the permissions

POST /api/v1/authz/check-any Body: {   \"permissions\": [\"document.edit\", \"document.view\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check whether the subject holds any of the permissions
  result = api_instance.check_any_permission
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_any_permission: #{e}"
end
```

#### Using the check_any_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAnyPermissionResponse>, Integer, Hash)> check_any_permission_with_http_info

```ruby
begin
  # Check whether the subject holds any of the permissions
  data, status_code, headers = api_instance.check_any_permission_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAnyPermissionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_any_permission_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_permission

> <CheckPermissionResponse> check_permission

Check one permission

POST /api/v1/authz/check Body: {   \"permission\": \"document.edit\",   \"context\": {\"document_id\": 123, \"owner_id\": 456},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — defaults to the caller }  All four check endpoints accept the optional `subject`. Naming a subject other than the caller requires the `authz.check` permission or the `authz:check` scope (403 `insufficient_permissions` otherwise) — see ThirdPartySubjectGuard.

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check one permission
  result = api_instance.check_permission
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permission: #{e}"
end
```

#### Using the check_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckPermissionResponse>, Integer, Hash)> check_permission_with_http_info

```ruby
begin
  # Check one permission
  data, status_code, headers = api_instance.check_permission_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckPermissionResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permission_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CheckPermissionResponse**](CheckPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_permissions_bulk

> <CheckPermissionsBulkResponse> check_permissions_bulk

Check up to 100 permissions in one call

POST /api/v1/authz/check-bulk Body: {   \"permissions\": [\"document.edit\", \"document.delete\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check up to 100 permissions in one call
  result = api_instance.check_permissions_bulk
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permissions_bulk: #{e}"
end
```

#### Using the check_permissions_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckPermissionsBulkResponse>, Integer, Hash)> check_permissions_bulk_with_http_info

```ruby
begin
  # Check up to 100 permissions in one call
  data, status_code, headers = api_instance.check_permissions_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckPermissionsBulkResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permissions_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CheckPermissionsBulkResponse**](CheckPermissionsBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_relation

> <CheckRelationResponse> check_relation

Zanzibar relationship check

POST /api/v1/authz/zanzibar/check Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\",   \"subject\": \"user:456\" }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Zanzibar relationship check
  result = api_instance.check_relation
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation: #{e}"
end
```

#### Using the check_relation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckRelationResponse>, Integer, Hash)> check_relation_with_http_info

```ruby
begin
  # Zanzibar relationship check
  data, status_code, headers = api_instance.check_relation_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckRelationResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CheckRelationResponse**](CheckRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_relation_scoped

> <CheckRelationScopedResponse> check_relation_scoped(org_id)

Zanzibar relationship check

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Zanzibar relationship check
  result = api_instance.check_relation_scoped(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_scoped: #{e}"
end
```

#### Using the check_relation_scoped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckRelationScopedResponse>, Integer, Hash)> check_relation_scoped_with_http_info(org_id)

```ruby
begin
  # Zanzibar relationship check
  data, status_code, headers = api_instance.check_relation_scoped_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckRelationScopedResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_scoped_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**CheckRelationScopedResponse**](CheckRelationScopedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## evaluate

> <AuthZenDecision> evaluate

AuthZEN 1.0 access evaluation

POST /api/v1/authz/v1/evaluation Body: {   \"subject\":  {\"type\": \"user\"|\"agent\", \"id\": \"...\"},   \"action\":   {\"name\": \"...\"},   \"resource\": {\"type\": \"...\", \"id\": \"...\"},   \"context\":  {...} } Response: {\"decision\": true|false, \"context\": {...}?}

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # AuthZEN 1.0 access evaluation
  result = api_instance.evaluate
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate: #{e}"
end
```

#### Using the evaluate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthZenDecision>, Integer, Hash)> evaluate_with_http_info

```ruby
begin
  # AuthZEN 1.0 access evaluation
  data, status_code, headers = api_instance.evaluate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthZenDecision>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthZenDecision**](AuthZenDecision.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## evaluate_batch

> <EvaluateBatchResponse> evaluate_batch

AuthZEN 1.0 boxcarred access evaluations

POST /api/v1/authz/v1/evaluations Body: {   \"subject\":  {...}?,   // optional defaults, overridden per item   \"action\":   {...}?,   \"resource\": {...}?,   \"context\":  {...}?,   \"evaluations\": [{...}, ...] } Response: {\"evaluations\": [{\"decision\": ...}, ...]} preserving order.

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # AuthZEN 1.0 boxcarred access evaluations
  result = api_instance.evaluate_batch
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_batch: #{e}"
end
```

#### Using the evaluate_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EvaluateBatchResponse>, Integer, Hash)> evaluate_batch_with_http_info

```ruby
begin
  # AuthZEN 1.0 boxcarred access evaluations
  data, status_code, headers = api_instance.evaluate_batch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EvaluateBatchResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_batch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EvaluateBatchResponse**](EvaluateBatchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## expand_relation

> <ExpandRelationResponse> expand_relation(expand_relation_request)

Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.

POST /api/v1/authz/zanzibar/expand Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\" } Response: {   \"tree\": {     \"type\": \"union\" | \"intersection\" | \"leaf\",     \"object\": \"document:123\",     \"relation\": \"viewer\",     \"children\": [ ...nested nodes... ],     \"subjects\": [ \"user:1\", \"group:2#member\" ]   } }  Expansion always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope) — there is no \"self\" variant.

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
expand_relation_request = LumoAuthApiClient::ExpandRelationRequest.new({object: 'document:123', relation: 'viewer'}) # ExpandRelationRequest | 

begin
  # Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.
  result = api_instance.expand_relation(expand_relation_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->expand_relation: #{e}"
end
```

#### Using the expand_relation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandRelationResponse>, Integer, Hash)> expand_relation_with_http_info(expand_relation_request)

```ruby
begin
  # Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.
  data, status_code, headers = api_instance.expand_relation_with_http_info(expand_relation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandRelationResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->expand_relation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expand_relation_request** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  |  |

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## expand_relation_scoped

> <ExpandRelationResponse> expand_relation_scoped(org_id, expand_relation_request)

Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).

Body: {\"object\": \"document:123\", \"relation\": \"viewer\"} Response: {\"tree\": {\"type\", \"object\", \"relation\", \"children\", \"subjects\"}}

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
expand_relation_request = LumoAuthApiClient::ExpandRelationRequest.new({object: 'document:123', relation: 'viewer'}) # ExpandRelationRequest | 

begin
  # Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).
  result = api_instance.expand_relation_scoped(org_id, expand_relation_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->expand_relation_scoped: #{e}"
end
```

#### Using the expand_relation_scoped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpandRelationResponse>, Integer, Hash)> expand_relation_scoped_with_http_info(org_id, expand_relation_request)

```ruby
begin
  # Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).
  data, status_code, headers = api_instance.expand_relation_scoped_with_http_info(org_id, expand_relation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpandRelationResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->expand_relation_scoped_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **expand_relation_request** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  |  |

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_my_attributes

> <GetMyAttributesResponse> get_my_attributes(org_id)

The caller's ABAC subject attributes

GET /api/v1/abac/my-attributes

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # The caller's ABAC subject attributes
  result = api_instance.get_my_attributes(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_my_attributes: #{e}"
end
```

#### Using the get_my_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMyAttributesResponse>, Integer, Hash)> get_my_attributes_with_http_info(org_id)

```ruby
begin
  # The caller's ABAC subject attributes
  data, status_code, headers = api_instance.get_my_attributes_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMyAttributesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_my_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetMyAttributesResponse**](GetMyAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_attributes

> <GetResourceAttributesResponse> get_resource_attributes(org_id, resource_type, resource_id)

Attributes stored for a resource

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
resource_type = 'resource_type_example' # String | 
resource_id = 'resource_id_example' # String | 

begin
  # Attributes stored for a resource
  result = api_instance.get_resource_attributes(org_id, resource_type, resource_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_resource_attributes: #{e}"
end
```

#### Using the get_resource_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetResourceAttributesResponse>, Integer, Hash)> get_resource_attributes_with_http_info(org_id, resource_type, resource_id)

```ruby
begin
  # Attributes stored for a resource
  data, status_code, headers = api_instance.get_resource_attributes_with_http_info(org_id, resource_type, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetResourceAttributesResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_resource_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_id** | **String** |  |  |

### Return type

[**GetResourceAttributesResponse**](GetResourceAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_attribute_definitions

> <ListAttributeDefinitionsResponse> list_attribute_definitions(org_id, opts)

Attribute definitions available to the organization

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
opts = {
  type: 'user' # String | 
}

begin
  # Attribute definitions available to the organization
  result = api_instance.list_attribute_definitions(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_attribute_definitions: #{e}"
end
```

#### Using the list_attribute_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAttributeDefinitionsResponse>, Integer, Hash)> list_attribute_definitions_with_http_info(org_id, opts)

```ruby
begin
  # Attribute definitions available to the organization
  data, status_code, headers = api_instance.list_attribute_definitions_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAttributeDefinitionsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_attribute_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **type** | **String** |  | [optional] |

### Return type

[**ListAttributeDefinitionsResponse**](ListAttributeDefinitionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_permissions

> <ListPermissionsResponse> list_permissions

List the caller's effective permissions

GET /api/v1/authz/permissions

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # List the caller's effective permissions
  result = api_instance.list_permissions
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_permissions: #{e}"
end
```

#### Using the list_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPermissionsResponse>, Integer, Hash)> list_permissions_with_http_info

```ruby
begin
  # List the caller's effective permissions
  data, status_code, headers = api_instance.list_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPermissionsResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPermissionsResponse**](ListPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_resource_attribute

> <SetResourceAttributeResponse> set_resource_attribute(org_id, resource_type, resource_id, attribute_slug)

Set a resource attribute

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
resource_type = 'resource_type_example' # String | 
resource_id = 'resource_id_example' # String | 
attribute_slug = 'attribute_slug_example' # String | 

begin
  # Set a resource attribute
  result = api_instance.set_resource_attribute(org_id, resource_type, resource_id, attribute_slug)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_resource_attribute: #{e}"
end
```

#### Using the set_resource_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetResourceAttributeResponse>, Integer, Hash)> set_resource_attribute_with_http_info(org_id, resource_type, resource_id, attribute_slug)

```ruby
begin
  # Set a resource attribute
  data, status_code, headers = api_instance.set_resource_attribute_with_http_info(org_id, resource_type, resource_id, attribute_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetResourceAttributeResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **attribute_slug** | **String** |  |  |

### Return type

[**SetResourceAttributeResponse**](SetResourceAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_user_attribute

> <SetUserAttributeResponse> set_user_attribute(org_id, user_id, attribute_slug)

Set a user attribute

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
attribute_slug = 'attribute_slug_example' # String | 

begin
  # Set a user attribute
  result = api_instance.set_user_attribute(org_id, user_id, attribute_slug)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_user_attribute: #{e}"
end
```

#### Using the set_user_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetUserAttributeResponse>, Integer, Hash)> set_user_attribute_with_http_info(org_id, user_id, attribute_slug)

```ruby
begin
  # Set a user attribute
  data, status_code, headers = api_instance.set_user_attribute_with_http_info(org_id, user_id, attribute_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetUserAttributeResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **attribute_slug** | **String** |  |  |

### Return type

[**SetUserAttributeResponse**](SetUserAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

