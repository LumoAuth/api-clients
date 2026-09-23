# lumoauth_api_client.AAuthApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize_agent**](AAuthApi.md#authorize_agent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page.
[**get_agent_jwks**](AAuthApi.md#get_agent_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint
[**get_agent_metadata**](AAuthApi.md#get_agent_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
[**get_agent_metadata_by_id**](AAuthApi.md#get_agent_metadata_by_id) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata
[**get_issuer_jwks**](AAuthApi.md#get_issuer_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth.
[**get_issuer_metadata**](AAuthApi.md#get_issuer_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
[**get_resource_jwks**](AAuthApi.md#get_resource_jwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint
[**get_resource_metadata**](AAuthApi.md#get_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3)
[**get_resource_metadata_by_id**](AAuthApi.md#get_resource_metadata_by_id) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata
[**issue_agent_token**](AAuthApi.md#issue_agent_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint
[**issue_delegate_token**](AAuthApi.md#issue_delegate_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate.
[**issue_platform_token**](AAuthApi.md#issue_platform_token) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token | 
[**issue_resource_token**](AAuthApi.md#issue_resource_token) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6)
[**revoke_agent_token**](AAuthApi.md#revoke_agent_token) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token.
[**verify_auth_token**](AAuthApi.md#verify_auth_token) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint.
[**verify_resource_token**](AAuthApi.md#verify_resource_token) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens).


# **authorize_agent**
> authorize_agent(org_id)

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user's browser
to its authorization page.

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Agent Auth Endpoint - redirects to user consent page.
        api_instance.authorize_agent(org_id)
    except Exception as e:
        print("Exception when calling AAuthApi->authorize_agent: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect to the tenant portal AAuth consent page for the given request_token. |  -  |
**400** | Missing request_token query parameter. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_agent_jwks**
> JwksResponse get_agent_jwks(org_id, agent_id)

Agent JWKS endpoint

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.jwks_response import JwksResponse
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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Agent JWKS endpoint
        api_response = api_instance.get_agent_jwks(org_id, agent_id)
        print("The response of AAuthApi->get_agent_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_agent_jwks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The agent JWKS. |  -  |
**404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_agent_metadata**
> List[object] get_agent_metadata(org_id)

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
        api_response = api_instance.get_agent_metadata(org_id)
        print("The response of AAuthApi->get_agent_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_agent_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**List[object]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Metadata documents for all active agents of this tenant (Section 8.1). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_agent_metadata_by_id**
> object get_agent_metadata_by_id(org_id, agent_id)

Individual Agent Metadata

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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Individual Agent Metadata
        api_response = api_instance.get_agent_metadata_by_id(org_id, agent_id)
        print("The response of AAuthApi->get_agent_metadata_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_agent_metadata_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Metadata document for a single active agent. |  -  |
**404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuer_jwks**
> JwksResponse get_issuer_jwks(org_id)

Auth Server JWKS endpoint for AAuth.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.jwks_response import JwksResponse
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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Auth Server JWKS endpoint for AAuth.
        api_response = api_instance.get_issuer_jwks(org_id)
        print("The response of AAuthApi->get_issuer_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_issuer_jwks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The auth server JWKS (public keys used to verify issued JWTs). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuer_metadata**
> GetIssuerMetadataResponse get_issuer_metadata(org_id)

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.get_issuer_metadata_response import GetIssuerMetadataResponse
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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
        api_response = api_instance.get_issuer_metadata(org_id)
        print("The response of AAuthApi->get_issuer_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_issuer_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | AAuth auth-server metadata document (Section 8.2). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_jwks**
> JwksResponse get_resource_jwks(org_id, resource_id)

Resource JWKS endpoint

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.jwks_response import JwksResponse
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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    resource_id = 'resource_id_example' # str | 

    try:
        # Resource JWKS endpoint
        api_response = api_instance.get_resource_jwks(org_id, resource_id)
        print("The response of AAuthApi->get_resource_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_resource_jwks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **resource_id** | **str**|  | 

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The resource JWKS. |  -  |
**404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_metadata**
> List[object] get_resource_metadata(org_id)

Resource Metadata (Section 8.3)

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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Resource Metadata (Section 8.3)
        api_response = api_instance.get_resource_metadata(org_id)
        print("The response of AAuthApi->get_resource_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_resource_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**List[object]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Metadata documents for all active resources of this tenant (Section 8.3). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_metadata_by_id**
> object get_resource_metadata_by_id(org_id, resource_id)

Individual Resource Metadata

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
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    resource_id = 'resource_id_example' # str | 

    try:
        # Individual Resource Metadata
        api_response = api_instance.get_resource_metadata_by_id(org_id, resource_id)
        print("The response of AAuthApi->get_resource_metadata_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->get_resource_metadata_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **resource_id** | **str**|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Metadata document for a single active resource. |  -  |
**404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_agent_token**
> IssueAgentTokenResponse issue_agent_token(org_id, issue_agent_token_request)

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server's endpoint
agents use to request auth tokens.

Required HTTP signature covering: @method, @target-uri, content-type,
content-digest, authorization

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.issue_agent_token_request import IssueAgentTokenRequest
from lumoauth_api_client.models.issue_agent_token_response import IssueAgentTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    issue_agent_token_request = lumoauth_api_client.IssueAgentTokenRequest() # IssueAgentTokenRequest | 

    try:
        # Agent Token Endpoint
        api_response = api_instance.issue_agent_token(org_id, issue_agent_token_request)
        print("The response of AAuthApi->issue_agent_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->issue_agent_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **issue_agent_token_request** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md)|  | 

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An auth token, or a request token + authorization URI when user consent is needed. |  -  |
**400** | Invalid request (missing/unknown request_type, invalid body, invalid resource/redirect). |  -  |
**401** | Agent-Auth challenge — missing/invalid Agent-Auth header, signature, or agent token. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_delegate_token**
> IssueDelegateTokenResponse issue_delegate_token(org_id, issue_delegate_token_request)

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.

This endpoint requires the agent server to authenticate itself
(via HTTP signature with its registered key).

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.issue_delegate_token_request import IssueDelegateTokenRequest
from lumoauth_api_client.models.issue_delegate_token_response import IssueDelegateTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    issue_delegate_token_request = lumoauth_api_client.IssueDelegateTokenRequest() # IssueDelegateTokenRequest | 

    try:
        # Issue an agent token to a delegate.
        api_response = api_instance.issue_delegate_token(org_id, issue_delegate_token_request)
        print("The response of AAuthApi->issue_delegate_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->issue_delegate_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **issue_delegate_token_request** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md)|  | 

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The issued agent token and its metadata. |  -  |
**400** | Invalid JSON body, or missing delegate_sub / delegate_public_key. |  -  |
**401** | Agent server HTTP-message-signature verification failed. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_platform_token**
> IssuePlatformTokenResponse issue_platform_token(org_id, issue_platform_token_request)

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.issue_platform_token_request import IssuePlatformTokenRequest
from lumoauth_api_client.models.issue_platform_token_response import IssuePlatformTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    issue_platform_token_request = lumoauth_api_client.IssuePlatformTokenRequest() # IssuePlatformTokenRequest | 

    try:
        api_response = api_instance.issue_platform_token(org_id, issue_platform_token_request)
        print("The response of AAuthApi->issue_platform_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->issue_platform_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **issue_platform_token_request** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md)|  | 

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A short-lived, DPoP-bound core-agent access token accepted by JIT, the token vault, and the authz PDP. It carries cnf.jkt (thumbprint of the agent key) and must be presented with a DPoP proof from that key. |  -  |
**400** | Invalid exchange request (grant_type / subject_token). |  -  |
**401** | The AAuth token is invalid, expired, or revoked, or the RFC 9421 request signature is missing/invalid/replayed. |  -  |
**403** | Denied by a conditional access policy. |  -  |
**429** | Rate limit exceeded (per IP or per agent). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_resource_token**
> IssueResourceTokenResponse issue_resource_token(org_id, issue_resource_token_request)

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token
binding an agent's request to the resource's identity.

The resource authenticates via HTTP Message Signature using
its registered key.

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.issue_resource_token_request import IssueResourceTokenRequest
from lumoauth_api_client.models.issue_resource_token_response import IssueResourceTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    issue_resource_token_request = lumoauth_api_client.IssueResourceTokenRequest() # IssueResourceTokenRequest | 

    try:
        # Resource Token Endpoint (Section 6)
        api_response = api_instance.issue_resource_token(org_id, issue_resource_token_request)
        print("The response of AAuthApi->issue_resource_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->issue_resource_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **issue_resource_token_request** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md)|  | 

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A resource token binding the agent request to the resource identity. |  -  |
**400** | Invalid JSON body, missing agent/agent_jkt, or unsupported scope. |  -  |
**401** | Resource authentication (HTTP message signature) failed. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_agent_token**
> RevokeAgentTokenResponse revoke_agent_token(org_id, revoke_agent_token_request)

Revoke an auth token or refresh token.

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.revoke_agent_token_request import RevokeAgentTokenRequest
from lumoauth_api_client.models.revoke_agent_token_response import RevokeAgentTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    revoke_agent_token_request = lumoauth_api_client.RevokeAgentTokenRequest() # RevokeAgentTokenRequest | 

    try:
        # Revoke an auth token or refresh token.
        api_response = api_instance.revoke_agent_token(org_id, revoke_agent_token_request)
        print("The response of AAuthApi->revoke_agent_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->revoke_agent_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **revoke_agent_token_request** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md)|  | 

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Revocation acknowledged (always 200 — existence of the token is not disclosed). |  -  |
**400** | Missing token parameter. |  -  |
**401** | Agent-Auth challenge — authentication/signature verification failed. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_auth_token**
> VerifyAuthTokenResponse verify_auth_token(org_id, verify_auth_token_request)

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent.
Per Section 7.7, the resource validates:
  1. JWT signature from trusted auth server
  2. aud matches resource identifier
  3. exp is in the future
  4. HTTP Message Signature on the agent's incoming request matches the
     key whose thumbprint is `cnf_jkt` in the response.

IMPORTANT — proof-of-possession is mandatory. A response of
`{"active": true, ...}` from this endpoint means the JWT is well-formed
and bound to the named resource; it does NOT mean the caller is the
legitimate holder of the token. The resource MUST independently verify
that the HTTP Message Signature on the agent's request was produced with
the key that hashes to `cnf_jkt`. A token without this PoP check is
effectively a bearer token and can be replayed by anyone who observes
it. The response includes `pop_required: true` to surface this contract
to integrators who only inspect `active`.

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.verify_auth_token_request import VerifyAuthTokenRequest
from lumoauth_api_client.models.verify_auth_token_response import VerifyAuthTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    verify_auth_token_request = lumoauth_api_client.VerifyAuthTokenRequest() # VerifyAuthTokenRequest | 

    try:
        # Auth Token Verification endpoint.
        api_response = api_instance.verify_auth_token(org_id, verify_auth_token_request)
        print("The response of AAuthApi->verify_auth_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->verify_auth_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **verify_auth_token_request** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md)|  | 

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Introspection result. active&#x3D;true does NOT imply PoP — the caller MUST verify the HTTP message signature against cnf_jkt. |  -  |
**400** | Missing auth_token or resource. |  -  |
**401** | Resource authentication failed. |  -  |
**403** | Requested resource does not match the authenticated resource. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_resource_token**
> VerifyResourceTokenResponse verify_resource_token(org_id, verify_resource_token_request)

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

### Example

* Bearer (JWT) Authentication (AAuthSigned):

```python
import lumoauth_api_client
from lumoauth_api_client.models.verify_resource_token_request import VerifyResourceTokenRequest
from lumoauth_api_client.models.verify_resource_token_response import VerifyResourceTokenResponse
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

# Configure Bearer authorization (JWT): AAuthSigned
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    verify_resource_token_request = lumoauth_api_client.VerifyResourceTokenRequest() # VerifyResourceTokenRequest | 

    try:
        # Resource Token Verification (for resources to validate their own tokens).
        api_response = api_instance.verify_resource_token(org_id, verify_resource_token_request)
        print("The response of AAuthApi->verify_resource_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AAuthApi->verify_resource_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **verify_resource_token_request** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md)|  | 

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Introspection result; active&#x3D;false with an error when the token is invalid. |  -  |
**400** | Missing resource_token, agent, or agent_jkt. |  -  |
**401** | Resource authentication failed. |  -  |
**403** | Resource token is not valid for the authenticated resource. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

