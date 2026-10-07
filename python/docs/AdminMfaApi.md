# lumoauth_api_client.AdminMfaApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_authenticator**](AdminMfaApi.md#delete_user_authenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators
[**get_mfa_coverage_report**](AdminMfaApi.md#get_mfa_coverage_report) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage
[**get_mfa_policy**](AdminMfaApi.md#get_mfa_policy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy
[**issue_temporary_access_code**](AdminMfaApi.md#issue_temporary_access_code) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code
[**list_user_authenticators**](AdminMfaApi.md#list_user_authenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators
[**update_mfa_policy**](AdminMfaApi.md#update_mfa_policy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy


# **delete_user_authenticator**
> DeleteUserAuthenticatorResponse delete_user_authenticator(org_id, user_id, authenticator_id)

Remove one of a user's authenticators

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.delete_user_authenticator_response import DeleteUserAuthenticatorResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 
    authenticator_id = 'authenticator_id_example' # str | 

    try:
        # Remove one of a user's authenticators
        api_response = api_instance.delete_user_authenticator(org_id, user_id, authenticator_id)
        print("The response of AdminMfaApi->delete_user_authenticator:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->delete_user_authenticator: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 
 **authenticator_id** | **str**|  | 

### Return type

[**DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Removed |  -  |
**404** | User or authenticator not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mfa_coverage_report**
> GetMfaCoverageReportResponse get_mfa_coverage_report(org_id)

MFA enrollment coverage

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_mfa_coverage_report_response import GetMfaCoverageReportResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # MFA enrollment coverage
        api_response = api_instance.get_mfa_coverage_report(org_id)
        print("The response of AdminMfaApi->get_mfa_coverage_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->get_mfa_coverage_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Coverage report |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mfa_policy**
> GetMfaPolicyResponse get_mfa_policy(org_id)

Get the MFA policy

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_mfa_policy_response import GetMfaPolicyResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Get the MFA policy
        api_response = api_instance.get_mfa_policy(org_id)
        print("The response of AdminMfaApi->get_mfa_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->get_mfa_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | MFA policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_temporary_access_code**
> IssueTemporaryAccessCodeResponse issue_temporary_access_code(org_id, user_id, issue_temporary_access_code_request)

Issue a temporary access code

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.issue_temporary_access_code_request import IssueTemporaryAccessCodeRequest
from lumoauth_api_client.models.issue_temporary_access_code_response import IssueTemporaryAccessCodeResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 
    issue_temporary_access_code_request = lumoauth_api_client.IssueTemporaryAccessCodeRequest() # IssueTemporaryAccessCodeRequest | 

    try:
        # Issue a temporary access code
        api_response = api_instance.issue_temporary_access_code(org_id, user_id, issue_temporary_access_code_request)
        print("The response of AdminMfaApi->issue_temporary_access_code:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->issue_temporary_access_code: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 
 **issue_temporary_access_code_request** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md)|  | 

### Return type

[**IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Issued — the code is returned once |  -  |
**403** | step_up_required |  -  |
**422** | Reason missing |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_user_authenticators**
> ListUserAuthenticatorsResponse list_user_authenticators(org_id, user_id)

List a user's authenticators

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.list_user_authenticators_response import ListUserAuthenticatorsResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # List a user's authenticators
        api_response = api_instance.list_user_authenticators(org_id, user_id)
        print("The response of AdminMfaApi->list_user_authenticators:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->list_user_authenticators: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authenticators |  -  |
**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_mfa_policy**
> UpdateMfaPolicyResponse update_mfa_policy(org_id, mfa_policy)

Update the MFA policy

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user's next authentication (POL-004).

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.mfa_policy import MfaPolicy
from lumoauth_api_client.models.update_mfa_policy_response import UpdateMfaPolicyResponse
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
    api_instance = lumoauth_api_client.AdminMfaApi(api_client)
    org_id = 'org_id_example' # str | 
    mfa_policy = lumoauth_api_client.MfaPolicy() # MfaPolicy | 

    try:
        # Update the MFA policy
        api_response = api_instance.update_mfa_policy(org_id, mfa_policy)
        print("The response of AdminMfaApi->update_mfa_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMfaApi->update_mfa_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **mfa_policy** | [**MfaPolicy**](MfaPolicy.md)|  | 

### Return type

[**UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

