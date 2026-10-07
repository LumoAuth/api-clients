# \AdminAbacApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abac_attributes_create**](AdminAbacApi.md#abac_attributes_create) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition
[**abac_attributes_delete**](AdminAbacApi.md#abac_attributes_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition
[**abac_attributes_get**](AdminAbacApi.md#abac_attributes_get) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition
[**abac_attributes_list**](AdminAbacApi.md#abac_attributes_list) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions
[**abac_policies_create**](AdminAbacApi.md#abac_policies_create) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy
[**abac_policies_delete**](AdminAbacApi.md#abac_policies_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy
[**abac_policies_get**](AdminAbacApi.md#abac_policies_get) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy
[**abac_policies_list**](AdminAbacApi.md#abac_policies_list) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies
[**abac_policies_toggle**](AdminAbacApi.md#abac_policies_toggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive
[**patch_abac_attributes_update**](AdminAbacApi.md#patch_abac_attributes_update) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition
[**patch_abac_policies_update**](AdminAbacApi.md#patch_abac_policies_update) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy
[**put_abac_attributes_update**](AdminAbacApi.md#put_abac_attributes_update) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition
[**put_abac_policies_update**](AdminAbacApi.md#put_abac_policies_update) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy



## abac_attributes_create

> models::AbacAttributesCreateResponse abac_attributes_create(org_id)
Create an attribute definition

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AbacAttributesCreateResponse**](AbacAttributesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_attributes_delete

> models::MessageResponse abac_attributes_delete(org_id, id)
Delete an attribute definition

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_attributes_get

> models::AbacAttributesGetResponse abac_attributes_get(org_id, id)
Get an attribute definition

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::AbacAttributesGetResponse**](AbacAttributesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_attributes_list

> models::AbacAttributesListResponse abac_attributes_list(org_id)
List attribute definitions

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AbacAttributesListResponse**](AbacAttributesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_policies_create

> models::AbacPoliciesCreateResponse abac_policies_create(org_id)
Create an ABAC policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AbacPoliciesCreateResponse**](AbacPoliciesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_policies_delete

> models::MessageResponse abac_policies_delete(org_id, id)
Delete an ABAC policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_policies_get

> models::AbacPoliciesGetResponse abac_policies_get(org_id, id)
Get an ABAC policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::AbacPoliciesGetResponse**](AbacPoliciesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_policies_list

> models::AbacPoliciesListResponse abac_policies_list(org_id)
List ABAC policies

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::AbacPoliciesListResponse**](AbacPoliciesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## abac_policies_toggle

> models::AbacPoliciesToggleResponse abac_policies_toggle(org_id, id)
Toggle a policy between active and inactive

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::AbacPoliciesToggleResponse**](AbacPoliciesToggleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_abac_attributes_update

> models::PutAbacAttributesUpdateResponse patch_abac_attributes_update(org_id, id)
Partially update an attribute definition

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patch_abac_policies_update

> models::PutAbacPoliciesUpdateResponse patch_abac_policies_update(org_id, id)
Partially update an ABAC policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_abac_attributes_update

> models::PutAbacAttributesUpdateResponse put_abac_attributes_update(org_id, id)
Update an attribute definition

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_abac_policies_update

> models::PutAbacPoliciesUpdateResponse put_abac_policies_update(org_id, id)
Update an ABAC policy

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**id** | **String** |  | [required] |

### Return type

[**models::PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

