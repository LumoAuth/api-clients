# LumoAuthApiClient::WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_authorization_server_metadata**](WellKnownApi.md#get_authorization_server_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414) |
| [**get_jwks**](WellKnownApi.md#get_jwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517) |
| [**get_openid_configuration**](WellKnownApi.md#get_openid_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0) |
| [**get_ssf_configuration**](WellKnownApi.md#get_ssf_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata |


## get_authorization_server_metadata

> <AuthorizationServerMetadata> get_authorization_server_metadata(org_id)

OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  # OAuth 2.0 authorization server metadata (RFC 8414)
  result = api_instance.get_authorization_server_metadata(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_authorization_server_metadata: #{e}"
end
```

#### Using the get_authorization_server_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthorizationServerMetadata>, Integer, Hash)> get_authorization_server_metadata_with_http_info(org_id)

```ruby
begin
  # OAuth 2.0 authorization server metadata (RFC 8414)
  data, status_code, headers = api_instance.get_authorization_server_metadata_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthorizationServerMetadata>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_authorization_server_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AuthorizationServerMetadata**](AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jwks

> <JsonWebKeySet> get_jwks(org_id)

JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  # JSON Web Key Set (RFC 7517)
  result = api_instance.get_jwks(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_jwks: #{e}"
end
```

#### Using the get_jwks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JsonWebKeySet>, Integer, Hash)> get_jwks_with_http_info(org_id)

```ruby
begin
  # JSON Web Key Set (RFC 7517)
  data, status_code, headers = api_instance.get_jwks_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JsonWebKeySet>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_jwks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**JsonWebKeySet**](JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_openid_configuration

> <OpenIdConfiguration> get_openid_configuration(org_id)

OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  # OpenID Provider configuration (OIDC Discovery 1.0)
  result = api_instance.get_openid_configuration(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_openid_configuration: #{e}"
end
```

#### Using the get_openid_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenIdConfiguration>, Integer, Hash)> get_openid_configuration_with_http_info(org_id)

```ruby
begin
  # OpenID Provider configuration (OIDC Discovery 1.0)
  data, status_code, headers = api_instance.get_openid_configuration_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenIdConfiguration>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_openid_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ssf_configuration

> <GetSsfConfigurationResponse> get_ssf_configuration(org_id)

SSF transmitter configuration metadata

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'

api_instance = LumoAuthApiClient::WellKnownApi.new
org_id = 'org_id_example' # String | 

begin
  # SSF transmitter configuration metadata
  result = api_instance.get_ssf_configuration(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_ssf_configuration: #{e}"
end
```

#### Using the get_ssf_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSsfConfigurationResponse>, Integer, Hash)> get_ssf_configuration_with_http_info(org_id)

```ruby
begin
  # SSF transmitter configuration metadata
  data, status_code, headers = api_instance.get_ssf_configuration_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSsfConfigurationResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling WellKnownApi->get_ssf_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetSsfConfigurationResponse**](GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

