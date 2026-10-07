# lumoauth_api_client.AdminEmailApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_email_templates_delete**](AdminEmailApi.md#admin_email_templates_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used
[**admin_email_templates_get**](AdminEmailApi.md#admin_email_templates_get) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)
[**admin_email_templates_list**](AdminEmailApi.md#admin_email_templates_list) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template
[**admin_email_templates_preview**](AdminEmailApi.md#admin_email_templates_preview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data
[**admin_email_templates_upsert**](AdminEmailApi.md#admin_email_templates_upsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type
[**admin_email_templates_variables**](AdminEmailApi.md#admin_email_templates_variables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type


# **admin_email_templates_delete**
> MessageResponse admin_email_templates_delete(org_id, type)

Remove the custom email template so the built-in default is used

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 
    type = 'type_example' # str | 

    try:
        # Remove the custom email template so the built-in default is used
        api_response = api_instance.admin_email_templates_delete(org_id, type)
        print("The response of AdminEmailApi->admin_email_templates_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **type** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Reverted to default |  -  |
**404** | Unknown template type, or no custom template exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_email_templates_get**
> EmailTemplate admin_email_templates_get(org_id, type)

Get an email template (custom or built-in default)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.email_template import EmailTemplate
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 
    type = 'type_example' # str | 

    try:
        # Get an email template (custom or built-in default)
        api_response = api_instance.admin_email_templates_get(org_id, type)
        print("The response of AdminEmailApi->admin_email_templates_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **type** | **str**|  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Template including body_html |  -  |
**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_email_templates_list**
> AdminEmailTemplatesListResponse admin_email_templates_list(org_id)

List every email template type with its current (custom or built-in) template

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_email_templates_list_response import AdminEmailTemplatesListResponse
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List every email template type with its current (custom or built-in) template
        api_response = api_instance.admin_email_templates_list(org_id)
        print("The response of AdminEmailApi->admin_email_templates_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminEmailTemplatesListResponse**](AdminEmailTemplatesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Templates without body_html; &#x60;email_templates&#x60; duplicates &#x60;data&#x60; |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_email_templates_preview**
> AdminEmailTemplatesPreviewResponse admin_email_templates_preview(org_id, type)

Render an email template with sample data

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_email_templates_preview_response import AdminEmailTemplatesPreviewResponse
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 
    type = 'type_example' # str | 

    try:
        # Render an email template with sample data
        api_response = api_instance.admin_email_templates_preview(org_id, type)
        print("The response of AdminEmailApi->admin_email_templates_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **type** | **str**|  | 

### Return type

[**AdminEmailTemplatesPreviewResponse**](AdminEmailTemplatesPreviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Rendered preview |  -  |
**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_email_templates_upsert**
> EmailTemplate admin_email_templates_upsert(org_id, type)

Create or replace the custom email template for a type

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.email_template import EmailTemplate
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 
    type = 'type_example' # str | 

    try:
        # Create or replace the custom email template for a type
        api_response = api_instance.admin_email_templates_upsert(org_id, type)
        print("The response of AdminEmailApi->admin_email_templates_upsert:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_upsert: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **type** | **str**|  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Saved template including body_html |  -  |
**404** | Unknown template type |  -  |
**422** | Validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_email_templates_variables**
> AdminEmailTemplatesVariablesResponse admin_email_templates_variables(org_id, type)

List the placeholders available to an email template type

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_email_templates_variables_response import AdminEmailTemplatesVariablesResponse
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
    api_instance = lumoauth_api_client.AdminEmailApi(api_client)
    org_id = 'org_id_example' # str | 
    type = 'type_example' # str | 

    try:
        # List the placeholders available to an email template type
        api_response = api_instance.admin_email_templates_variables(org_id, type)
        print("The response of AdminEmailApi->admin_email_templates_variables:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminEmailApi->admin_email_templates_variables: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **type** | **str**|  | 

### Return type

[**AdminEmailTemplatesVariablesResponse**](AdminEmailTemplatesVariablesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Placeholder to description map |  -  |
**404** | Unknown template type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

