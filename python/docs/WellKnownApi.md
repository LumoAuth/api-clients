# lumoauth_api_client.WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_server_metadata**](WellKnownApi.md#get_authorization_server_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414)
[**get_jwks**](WellKnownApi.md#get_jwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517)
[**get_openid_configuration**](WellKnownApi.md#get_openid_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0)
[**get_ssf_configuration**](WellKnownApi.md#get_ssf_configuration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata


# **get_authorization_server_metadata**
> AuthorizationServerMetadata get_authorization_server_metadata(org_id)

OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.authorization_server_metadata import AuthorizationServerMetadata
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
    api_instance = lumoauth_api_client.WellKnownApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OAuth 2.0 authorization server metadata (RFC 8414)
        api_response = api_instance.get_authorization_server_metadata(org_id)
        print("The response of WellKnownApi->get_authorization_server_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_authorization_server_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AuthorizationServerMetadata**](AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authorization server metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri (organization settings). |  -  |
**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jwks**
> JsonWebKeySet get_jwks(org_id)

JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.json_web_key_set import JsonWebKeySet
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
    api_instance = lumoauth_api_client.WellKnownApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # JSON Web Key Set (RFC 7517)
        api_response = api_instance.get_jwks(org_id)
        print("The response of WellKnownApi->get_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_jwks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**JsonWebKeySet**](JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | JWK Set. Each key is an RSA (n, e) or EC (crv, x, y) public JWK with kid, use&#x3D;sig and alg. |  -  |
**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_openid_configuration**
> OpenIdConfiguration get_openid_configuration(org_id)

OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.open_id_configuration import OpenIdConfiguration
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
    api_instance = lumoauth_api_client.WellKnownApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # OpenID Provider configuration (OIDC Discovery 1.0)
        api_response = api_instance.get_openid_configuration(org_id)
        print("The response of WellKnownApi->get_openid_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_openid_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OpenID Provider metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri and a tenant acr_values_supported override (organization settings). |  -  |
**404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ssf_configuration**
> GetSsfConfigurationResponse get_ssf_configuration(org_id)

SSF transmitter configuration metadata

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.get_ssf_configuration_response import GetSsfConfigurationResponse
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
    api_instance = lumoauth_api_client.WellKnownApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # SSF transmitter configuration metadata
        api_response = api_instance.get_ssf_configuration(org_id)
        print("The response of WellKnownApi->get_ssf_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_ssf_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**GetSsfConfigurationResponse**](GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Transmitter configuration |  -  |
**404** | Tenant not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

