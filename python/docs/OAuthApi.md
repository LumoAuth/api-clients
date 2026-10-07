# lumoauth_api_client.OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint
[**backchannel_authorize**](OAuthApi.md#backchannel_authorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request
[**device_authorization**](OAuthApi.md#device_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628)
[**get_client_configuration**](OAuthApi.md#get_client_configuration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
[**get_device_verification**](OAuthApi.md#get_device_verification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3)
[**get_org_selection**](OAuthApi.md#get_org_selection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page
[**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662)
[**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126)
[**passkey_login**](OAuthApi.md#passkey_login) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point
[**register_client**](OAuthApi.md#register_client) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR)
[**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009)
[**social_callback**](OAuthApi.md#social_callback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback
[**social_callback_post**](OAuthApi.md#social_callback_post) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post)
[**social_login**](OAuthApi.md#social_login) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login
[**submit_authorization**](OAuthApi.md#submit_authorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission)
[**submit_device_verification**](OAuthApi.md#submit_device_verification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification
[**submit_login**](OAuthApi.md#submit_login) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission
[**submit_login_json**](OAuthApi.md#submit_login_json) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow
[**submit_org_selection**](OAuthApi.md#submit_org_selection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection
[**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint


# **authorize**
> str authorize(org_id)

OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client's redirect_uri in the requested response_mode. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OAuth 2.1 / OIDC authorization endpoint
        api_response = api_instance.authorize(org_id)
        print("The response of OAuthApi->authorize:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->authorize: %s\n" % e)
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
**200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
**303** | Authorization response delivered to the client&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
**302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
**400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
**429** | too_many_requests (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backchannel_authorize**
> BackchannelAuthorizeResponse backchannel_authorize(org_id)

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type=urn:openid:params:grant-type:ciba and the returned auth_req_id.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.backchannel_authorize_response import BackchannelAuthorizeResponse
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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # CIBA backchannel authentication request
        api_response = api_instance.backchannel_authorize(org_id)
        print("The response of OAuthApi->backchannel_authorize:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->backchannel_authorize: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authentication request accepted (CIBA Core §7.3). The hint is never confirmed: an unknown user yields an unstored auth_req_id of the same shape. interval is present for poll and ping delivery modes (always for agent-initiated requests). |  -  |
**400** | invalid_request, unauthorized_client (CIBA not enabled for the client or plan), invalid_scope, missing_user_code / invalid_user_code or invalid_authorization_details. |  -  |
**401** | invalid_client — client authentication failed. |  -  |
**403** | unauthorized_client (agent_id named but not authenticated by that agent) or access_denied. |  -  |
**429** | too_many_requests, or slow_down when the target user already has too many pending requests. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **device_authorization**
> DeviceAuthorizationResponse device_authorization(org_id)

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.device_authorization_response import DeviceAuthorizationResponse
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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Device authorization request (RFC 8628)
        api_response = api_instance.device_authorization(org_id)
        print("The response of OAuthApi->device_authorization:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->device_authorization: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Device authorization response (RFC 8628 §3.2). |  -  |
**400** | invalid_request (client_id missing), invalid_client (unknown / inactive client), unauthorized_client (grant not allowed) or invalid_scope. |  -  |
**401** | invalid_client — a confidential client failed to authenticate. |  -  |
**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_configuration**
> RegisteredClientMetadata get_client_configuration(org_id, client_id)

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.registered_client_metadata import RegisteredClientMetadata
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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    client_id = 'client_id_example' # str | 

    try:
        # Read a dynamically registered client (RFC 7592 / OIDC DCR §4)
        api_response = api_instance.get_client_configuration(org_id, client_id)
        print("The response of OAuthApi->get_client_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->get_client_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **client_id** | **str**|  | 

### Return type

[**RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Registered client metadata (OIDC Dynamic Client Registration §4.3). Never includes client_secret or registration_access_token; optional members are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
**401** | invalid_token — registration access token missing, invalid, for another client, or presented at a different issuer than the registration (WWW-Authenticate: Bearer). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_device_verification**
> str get_device_verification(org_id)

Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Device verification page (RFC 8628 §3.3)
        api_response = api_instance.get_device_verification(org_id)
        print("The response of OAuthApi->get_device_verification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->get_device_verification: %s\n" % e)
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
**200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
**302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
**429** | HTML error page — too many attempts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_org_selection**
> str get_org_selection(org_id)

Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Organization selector page
        api_response = api_instance.get_org_selection(org_id)
        print("The response of OAuthApi->get_org_selection:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->get_org_selection: %s\n" % e)
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
**200** | HTML organization selector page. |  -  |
**302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
**404** | Unknown organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspect**
> IntrospectResponse introspect(org_id)

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.introspect_response import IntrospectResponse
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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Token introspection (RFC 7662)
        api_response = api_instance.introspect(org_id)
        print("The response of OAuthApi->introspect:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->introspect: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Introspection response (RFC 7662 §2.2). An inactive, expired, revoked or unknown token yields only {\&quot;active\&quot;: false}. For an active token the optional members are present when known: username only for user-bound tokens; iss/aud only for tokens bound to a client; nbf/jti only for JWT access tokens; empty-string values are omitted. |  -  |
**400** | invalid_request — token parameter missing. |  -  |
**401** | invalid_client — client authentication failed. |  -  |
**429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **par**
> ParResponse par(org_id)

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.par_response import ParResponse
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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Pushed authorization request (RFC 9126)
        api_response = api_instance.par(org_id)
        print("The response of OAuthApi->par:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->par: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Pushed authorization request created (RFC 9126 §2.2). |  -  |
**400** | invalid_request / invalid_target / invalid_request_object, or the tenant is unknown. |  -  |
**401** | invalid_client — client authentication failed. |  -  |
**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passkey_login**
> passkey_login(org_id)

Passkey login entry point

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Passkey login entry point
        api_instance.passkey_login(org_id)
    except Exception as e:
        print("Exception when calling OAuthApi->passkey_login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect to the hosted login page. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_client**
> RegisterClientResponse register_client(org_id)

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.register_client_response import RegisterClientResponse
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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Dynamic client registration (RFC 7591 / OIDC DCR)
        api_response = api_instance.register_client(org_id)
        print("The response of OAuthApi->register_client:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->register_client: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Client registered (OIDC Dynamic Client Registration §3.2). client_secret / client_secret_expires_at only for confidential clients; registration_access_token and registration_client_uri when a registration access token was issued; the remaining optional members echo registered metadata and are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
**400** | invalid_request (invalid JSON / unknown organization), invalid_client_metadata or invalid_redirect_uri. |  -  |
**401** | access_denied — initial access token required or invalid (WWW-Authenticate: Bearer). |  -  |
**403** | access_denied — dynamic registration disabled for this organization, or the API key is not authorized for it. |  -  |
**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke**
> object revoke(org_id)

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

### Example

* Basic Authentication (ClientAuth):

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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Token revocation (RFC 7009)
        api_response = api_instance.revoke(org_id)
        print("The response of OAuthApi->revoke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->revoke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

**object**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Revocation acknowledged — always 200 with an empty JSON object, whether or not the token existed (RFC 7009 §2.2). |  -  |
**400** | invalid_request (token parameter missing) or unsupported_token_type. |  -  |
**401** | invalid_client — client authentication failed. |  -  |
**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **social_callback**
> social_callback(org_id, provider)

Social / enterprise identity-provider callback

Receives the provider's authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    provider = 'provider_example' # str | 

    try:
        # Social / enterprise identity-provider callback
        api_instance.social_callback(org_id, provider)
    except Exception as e:
        print("Exception when calling OAuthApi->social_callback: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **provider** | **str**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **social_callback_post**
> social_callback_post(org_id, provider)

Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode=form_post. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    provider = 'provider_example' # str | 

    try:
        # Social / enterprise identity-provider callback (form_post)
        api_instance.social_callback_post(org_id, provider)
    except Exception as e:
        print("Exception when calling OAuthApi->social_callback_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **provider** | **str**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **social_login**
> social_login(org_id, provider)

Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider's authorization endpoint. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 
    provider = 'provider_example' # str | 

    try:
        # Start social / enterprise identity-provider login
        api_instance.social_login(org_id, provider)
    except Exception as e:
        print("Exception when calling OAuthApi->social_login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **provider** | **str**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect to the external provider&#39;s authorization endpoint — or back to the hosted login page when the organization, provider or redirect target is invalid. |  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_authorization**
> str submit_authorization(org_id)

OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OAuth 2.1 / OIDC authorization endpoint (form submission)
        api_response = api_instance.submit_authorization(org_id)
        print("The response of OAuthApi->submit_authorization:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->submit_authorization: %s\n" % e)
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
**200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
**303** | Authorization response delivered to the client&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
**302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
**400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
**429** | too_many_requests (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_device_verification**
> str submit_device_verification(org_id)

Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Submit device verification
        api_response = api_instance.submit_device_verification(org_id)
        print("The response of OAuthApi->submit_device_verification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->submit_device_verification: %s\n" % e)
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
**200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
**302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
**429** | HTML error page — too many attempts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_login**
> submit_login(org_id)

Hosted login form submission

Receives the hosted OAuth login page's form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Hosted login form submission
        api_instance.submit_login(org_id)
    except Exception as e:
        print("Exception when calling OAuthApi->submit_login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**302** | Redirect to /oauth/authorize with the original client_id, redirect_uri, state, scope, PKCE and nonce parameters. |  * Location -  <br>  |
**404** | Unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_login_json**
> SubmitLoginJsonResponse submit_login_json(org_id)

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.submit_login_json_response import SubmitLoginJsonResponse
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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Programmatic (JSON) login for the authorization flow
        api_response = api_instance.submit_login_json(org_id)
        print("The response of OAuthApi->submit_login_json:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->submit_login_json: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Signed in (status&#x3D;complete — continue to /oauth/authorize) or a second factor is required (status&#x3D;mfa_required with the challenge page URL). |  -  |
**400** | {\&quot;status\&quot;:\&quot;invalid_request\&quot;} or {\&quot;status\&quot;:\&quot;captcha_required\&quot;,\&quot;message\&quot;:…}. |  -  |
**401** | {\&quot;status\&quot;:\&quot;invalid_credentials\&quot;}. |  -  |
**403** | {\&quot;status\&quot;:\&quot;blocked\&quot;} or {\&quot;status\&quot;:\&quot;inactive\&quot;}. |  -  |
**404** | {\&quot;status\&quot;:\&quot;not_found\&quot;} — unknown or inactive organization. |  -  |
**429** | {\&quot;status\&quot;:\&quot;rate_limited\&quot;}. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_org_selection**
> str submit_org_selection(org_id)

Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

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
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Submit organization selection
        api_response = api_instance.submit_org_selection(org_id)
        print("The response of OAuthApi->submit_org_selection:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->submit_org_selection: %s\n" % e)
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
**200** | HTML organization selector page. |  -  |
**302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
**404** | Unknown organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **token**
> TokenResponse token(org_id)

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

### Example

* Basic Authentication (ClientAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.token_response import TokenResponse
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

# Configure HTTP basic authorization: ClientAuth
configuration = lumoauth_api_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.OAuthApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OAuth 2.1 token endpoint
        api_response = api_instance.token(org_id)
        print("The response of OAuthApi->token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OAuthApi->token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Token response (RFC 6749 §5.1). Which optional members are present depends on the grant: refresh_token only when the client may use the refresh_token grant; id_token for authorization_code / CIBA / device grants with the openid scope; issued_token_type for token exchange (including ID-JAG and Txn-Token, whose token_type is N_A and which carry no scope unless scopes were granted); authorization_details, jit_request_id and task_id only for agent-initiated CIBA. Always sent with Cache-Control: no-store. |  * DPoP-Nonce - Fresh server nonce when the request carried a DPoP proof (RFC 9449 §8). <br>  |
**400** | invalid_request / invalid_grant / unsupported_grant_type / invalid_scope (RFC 6749 §5.2). |  -  |
**401** | invalid_client — client authentication failed. |  -  |
**429** | too_many_requests — rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

