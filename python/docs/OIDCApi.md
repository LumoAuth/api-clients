# lumoauth_api_client.OIDCApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_session**](OIDCApi.md#check_session) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0)
[**logout**](OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0)
[**logout_post**](OIDCApi.md#logout_post) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission)
[**userinfo**](OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint
[**userinfo_post**](OIDCApi.md#userinfo_post) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST)


# **check_session**
> str check_session(org_id)

OP session-check iframe (OIDC Session Management 1.0)

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage "<client_id> <session_state>" to learn whether the OP session changed. Not a JSON API.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OIDCApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OP session-check iframe (OIDC Session Management 1.0)
        api_response = api_instance.check_session(org_id)
        print("The response of OIDCApi->check_session:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OIDCApi->check_session: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | HTML page containing the session-state comparison script. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> str logout(org_id)

RP-initiated logout (OIDC RP-Initiated Logout 1.0)

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session's clients. Not a JSON API.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OIDCApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # RP-initiated logout (OIDC RP-Initiated Logout 1.0)
        api_response = api_instance.logout(org_id)
        print("The response of OIDCApi->logout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OIDCApi->logout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session&#39;s clients. |  -  |
**302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
**404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout_post**
> str logout_post(org_id)

RP-initiated logout (confirmation submission)

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OIDCApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # RP-initiated logout (confirmation submission)
        api_response = api_instance.logout_post(org_id)
        print("The response of OIDCApi->logout_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OIDCApi->logout_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session&#39;s clients. |  -  |
**302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
**404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userinfo**
> UserinfoResponse userinfo(org_id)

OpenID Connect UserInfo endpoint

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.userinfo_response import UserinfoResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OIDCApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OpenID Connect UserInfo endpoint
        api_response = api_instance.userinfo(org_id)
        print("The response of OIDCApi->userinfo:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OIDCApi->userinfo: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Claims for the token&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
**400** | invalid_request — Authorization header missing or malformed. |  -  |
**401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
**403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userinfo_post**
> UserinfoResponse userinfo_post(org_id)

OpenID Connect UserInfo endpoint (POST)

Identical to GET.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.userinfo_response import UserinfoResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OIDCApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OpenID Connect UserInfo endpoint (POST)
        api_response = api_instance.userinfo_post(org_id)
        print("The response of OIDCApi->userinfo_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OIDCApi->userinfo_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Claims for the token&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
**400** | invalid_request — Authorization header missing or malformed. |  -  |
**401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
**403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

