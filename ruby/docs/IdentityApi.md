# LumoAuthApiClient::IdentityApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_me**](IdentityApi.md#get_me) | **GET** /orgs/{orgId}/api/v1/me | Who am I |


## get_me

> <GetMeResponse> get_me(org_id)

Who am I

Returns the authenticated principal (user or agent). Use the `subject_type` field to discriminate.

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

api_instance = LumoAuthApiClient::IdentityApi.new
org_id = 'org_id_example' # String | 

begin
  # Who am I
  result = api_instance.get_me(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling IdentityApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMeResponse>, Integer, Hash)> get_me_with_http_info(org_id)

```ruby
begin
  # Who am I
  data, status_code, headers = api_instance.get_me_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMeResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling IdentityApi->get_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**GetMeResponse**](GetMeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

