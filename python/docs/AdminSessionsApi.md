# lumoauth_api_client.AdminSessionsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_client_tokens_revoke_all**](AdminSessionsApi.md#admin_client_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client
[**admin_client_tokens_revoke_post**](AdminSessionsApi.md#admin_client_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)
[**admin_sessions_count**](AdminSessionsApi.md#admin_sessions_count) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count
[**admin_sessions_list**](AdminSessionsApi.md#admin_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions
[**admin_sessions_revoke**](AdminSessionsApi.md#admin_sessions_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session
[**admin_sessions_revoke_all**](AdminSessionsApi.md#admin_sessions_revoke_all) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant
[**admin_sessions_stats**](AdminSessionsApi.md#admin_sessions_stats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics
[**admin_tokens_list**](AdminSessionsApi.md#admin_tokens_list) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens
[**admin_tokens_revoke**](AdminSessionsApi.md#admin_tokens_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
[**admin_user_sessions_list**](AdminSessionsApi.md#admin_user_sessions_list) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions
[**admin_user_sessions_revoke_all**](AdminSessionsApi.md#admin_user_sessions_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user
[**admin_user_sessions_revoke_post**](AdminSessionsApi.md#admin_user_sessions_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)
[**admin_user_tokens_revoke_all**](AdminSessionsApi.md#admin_user_tokens_revoke_all) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user
[**admin_user_tokens_revoke_post**](AdminSessionsApi.md#admin_user_tokens_revoke_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)


# **admin_client_tokens_revoke_all**
> AdminClientTokensRevokeAllResponse admin_client_tokens_revoke_all(org_id, client_id)

Revoke all tokens of a client

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_client_tokens_revoke_all_response import AdminClientTokensRevokeAllResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    client_id = 'client_id_example' # str | 

    try:
        # Revoke all tokens of a client
        api_response = api_instance.admin_client_tokens_revoke_all(org_id, client_id)
        print("The response of AdminSessionsApi->admin_client_tokens_revoke_all:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_client_tokens_revoke_all: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **client_id** | **str**|  | 

### Return type

[**AdminClientTokensRevokeAllResponse**](AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tokens revoked; the message carries the count |  -  |
**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_client_tokens_revoke_post**
> AdminUserTokensRevokePostResponse admin_client_tokens_revoke_post(org_id, client_id)

Revoke all tokens of a client (POST alias)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_tokens_revoke_post_response import AdminUserTokensRevokePostResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    client_id = 'client_id_example' # str | 

    try:
        # Revoke all tokens of a client (POST alias)
        api_response = api_instance.admin_client_tokens_revoke_post(org_id, client_id)
        print("The response of AdminSessionsApi->admin_client_tokens_revoke_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_client_tokens_revoke_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **client_id** | **str**|  | 

### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tokens revoked; the message carries the count |  -  |
**404** | Client not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sessions_count**
> AdminSessionsCountResponse admin_sessions_count(org_id)

Active session count

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sessions_count_response import AdminSessionsCountResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Active session count
        api_response = api_instance.admin_sessions_count(org_id)
        print("The response of AdminSessionsApi->admin_sessions_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_sessions_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSessionsCountResponse**](AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Active session count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sessions_list**
> AdminSessionsListResponse admin_sessions_list(org_id)

List active sessions

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional `userId` filter accepts a user UUID or email.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sessions_list_response import AdminSessionsListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List active sessions
        api_response = api_instance.admin_sessions_list(org_id)
        print("The response of AdminSessionsApi->admin_sessions_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_sessions_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSessionsListResponse**](AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sessions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sessions_revoke**
> AdminSessionsRevokeResponse admin_sessions_revoke(org_id, session_id)

Revoke a session

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sessions_revoke_response import AdminSessionsRevokeResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    session_id = 'session_id_example' # str | 

    try:
        # Revoke a session
        api_response = api_instance.admin_sessions_revoke(org_id, session_id)
        print("The response of AdminSessionsApi->admin_sessions_revoke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_sessions_revoke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **session_id** | **str**|  | 

### Return type

[**AdminSessionsRevokeResponse**](AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Session revoked |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | Session not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sessions_revoke_all**
> AdminSessionsRevokeAllResponse admin_sessions_revoke_all(org_id, admin_sessions_revoke_all_request)

Revoke every session in the tenant

Signs out all users. Requires `confirm: true` in the body.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sessions_revoke_all_request import AdminSessionsRevokeAllRequest
from lumoauth_api_client.models.admin_sessions_revoke_all_response import AdminSessionsRevokeAllResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    admin_sessions_revoke_all_request = lumoauth_api_client.AdminSessionsRevokeAllRequest() # AdminSessionsRevokeAllRequest | 

    try:
        # Revoke every session in the tenant
        api_response = api_instance.admin_sessions_revoke_all(org_id, admin_sessions_revoke_all_request)
        print("The response of AdminSessionsApi->admin_sessions_revoke_all:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_sessions_revoke_all: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **admin_sessions_revoke_all_request** | [**AdminSessionsRevokeAllRequest**](AdminSessionsRevokeAllRequest.md)|  | 

### Return type

[**AdminSessionsRevokeAllResponse**](AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sessions revoked; the message carries the count |  -  |
**400** | confirm: true is required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sessions_stats**
> AdminSessionsStatsResponse admin_sessions_stats(org_id)

Session statistics

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sessions_stats_response import AdminSessionsStatsResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Session statistics
        api_response = api_instance.admin_sessions_stats(org_id)
        print("The response of AdminSessionsApi->admin_sessions_stats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_sessions_stats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSessionsStatsResponse**](AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Session counts |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_tokens_list**
> AdminTokensListResponse admin_tokens_list(org_id)

List access tokens

Paginated OAuth access tokens issued by the tenant's clients. Filters: `revoked` (bool), `clientId`, `userId`.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_tokens_list_response import AdminTokensListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List access tokens
        api_response = api_instance.admin_tokens_list(org_id)
        print("The response of AdminSessionsApi->admin_tokens_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_tokens_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminTokensListResponse**](AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tokens |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_tokens_revoke**
> AdminTokensRevokeResponse admin_tokens_revoke(org_id, token_id)

Revoke a token

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_tokens_revoke_response import AdminTokensRevokeResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    token_id = 'token_id_example' # str | 

    try:
        # Revoke a token
        api_response = api_instance.admin_tokens_revoke(org_id, token_id)
        print("The response of AdminSessionsApi->admin_tokens_revoke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_tokens_revoke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **token_id** | **str**|  | 

### Return type

[**AdminTokensRevokeResponse**](AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Token revoked |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | Token not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_user_sessions_list**
> AdminUserSessionsListResponse admin_user_sessions_list(org_id, user_id)

List a user's active sessions

All active sessions of one user (UUID or email), returned as a single page.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_sessions_list_response import AdminUserSessionsListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # List a user's active sessions
        api_response = api_instance.admin_user_sessions_list(org_id, user_id)
        print("The response of AdminSessionsApi->admin_user_sessions_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_user_sessions_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**AdminUserSessionsListResponse**](AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sessions |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_user_sessions_revoke_all**
> AdminUserSessionsRevokeAllResponse admin_user_sessions_revoke_all(org_id, user_id)

Revoke all sessions of a user

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_sessions_revoke_all_response import AdminUserSessionsRevokeAllResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Revoke all sessions of a user
        api_response = api_instance.admin_user_sessions_revoke_all(org_id, user_id)
        print("The response of AdminSessionsApi->admin_user_sessions_revoke_all:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_user_sessions_revoke_all: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**AdminUserSessionsRevokeAllResponse**](AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sessions revoked; the message carries the count |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_user_sessions_revoke_post**
> AdminUserSessionsRevokePostResponse admin_user_sessions_revoke_post(org_id, user_id)

Revoke all sessions of a user (POST alias)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_sessions_revoke_post_response import AdminUserSessionsRevokePostResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Revoke all sessions of a user (POST alias)
        api_response = api_instance.admin_user_sessions_revoke_post(org_id, user_id)
        print("The response of AdminSessionsApi->admin_user_sessions_revoke_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_user_sessions_revoke_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**AdminUserSessionsRevokePostResponse**](AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sessions revoked; the message carries the count |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_user_tokens_revoke_all**
> AdminUserTokensRevokeAllResponse admin_user_tokens_revoke_all(org_id, user_id)

Revoke all tokens of a user

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_tokens_revoke_all_response import AdminUserTokensRevokeAllResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Revoke all tokens of a user
        api_response = api_instance.admin_user_tokens_revoke_all(org_id, user_id)
        print("The response of AdminSessionsApi->admin_user_tokens_revoke_all:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_user_tokens_revoke_all: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**AdminUserTokensRevokeAllResponse**](AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tokens revoked |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_user_tokens_revoke_post**
> AdminUserTokensRevokePostResponse admin_user_tokens_revoke_post(org_id, user_id)

Revoke all tokens of a user (POST alias)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_user_tokens_revoke_post_response import AdminUserTokensRevokePostResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminSessionsApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Revoke all tokens of a user (POST alias)
        api_response = api_instance.admin_user_tokens_revoke_post(org_id, user_id)
        print("The response of AdminSessionsApi->admin_user_tokens_revoke_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSessionsApi->admin_user_tokens_revoke_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tokens revoked; the message carries the count |  -  |
**403** | Target holds privileges the actor lacks |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

