# \AuthorizationApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_abac**](AuthorizationApi.md#check_abac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller
[**check_abac_bulk**](AuthorizationApi.md#check_abac_bulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call
[**check_all_permissions**](AuthorizationApi.md#check_all_permissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions
[**check_any_permission**](AuthorizationApi.md#check_any_permission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions
[**check_permission**](AuthorizationApi.md#check_permission) | **POST** /api/v1/authz/check | Check one permission
[**check_permissions_bulk**](AuthorizationApi.md#check_permissions_bulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call
[**check_relation**](AuthorizationApi.md#check_relation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check
[**check_relation_scoped**](AuthorizationApi.md#check_relation_scoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check
[**evaluate**](AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation
[**evaluate_batch**](AuthorizationApi.md#evaluate_batch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations
[**expand_relation**](AuthorizationApi.md#expand_relation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.
[**expand_relation_scoped**](AuthorizationApi.md#expand_relation_scoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).
[**get_my_attributes**](AuthorizationApi.md#get_my_attributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller's ABAC subject attributes
[**get_resource_attributes**](AuthorizationApi.md#get_resource_attributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource
[**list_attribute_definitions**](AuthorizationApi.md#list_attribute_definitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization
[**list_permissions**](AuthorizationApi.md#list_permissions) | **GET** /api/v1/authz/permissions | List the caller's effective permissions
[**set_resource_attribute**](AuthorizationApi.md#set_resource_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute
[**set_user_attribute**](AuthorizationApi.md#set_user_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute



## check_abac

> models::CheckAbacResponse check_abac(org_id)
Evaluate an ABAC policy decision for the caller

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::CheckAbacResponse**](CheckAbacResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_abac_bulk

> models::CheckAbacBulkResponse check_abac_bulk(org_id)
Evaluate up to 100 ABAC checks for the caller in one call

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::CheckAbacBulkResponse**](CheckAbacBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_all_permissions

> models::CheckAnyPermissionResponse check_all_permissions()
Check whether the subject holds all of the permissions

POST /api/v1/authz/check-all Body: {   \"permissions\": [\"document.edit\", \"document.publish\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_any_permission

> models::CheckAnyPermissionResponse check_any_permission()
Check whether the subject holds any of the permissions

POST /api/v1/authz/check-any Body: {   \"permissions\": [\"document.edit\", \"document.view\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_permission

> models::CheckPermissionResponse check_permission()
Check one permission

POST /api/v1/authz/check Body: {   \"permission\": \"document.edit\",   \"context\": {\"document_id\": 123, \"owner_id\": 456},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — defaults to the caller }  All four check endpoints accept the optional `subject`. Naming a subject other than the caller requires the `authz.check` permission or the `authz:check` scope (403 `insufficient_permissions` otherwise) — see ThirdPartySubjectGuard.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CheckPermissionResponse**](CheckPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_permissions_bulk

> models::CheckPermissionsBulkResponse check_permissions_bulk()
Check up to 100 permissions in one call

POST /api/v1/authz/check-bulk Body: {   \"permissions\": [\"document.edit\", \"document.delete\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CheckPermissionsBulkResponse**](CheckPermissionsBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_relation

> models::CheckRelationResponse check_relation()
Zanzibar relationship check

POST /api/v1/authz/zanzibar/check Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\",   \"subject\": \"user:456\" }

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::CheckRelationResponse**](CheckRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## check_relation_scoped

> models::CheckRelationScopedResponse check_relation_scoped(org_id)
Zanzibar relationship check

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::CheckRelationScopedResponse**](CheckRelationScopedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## evaluate

> models::AuthZenDecision evaluate()
AuthZEN 1.0 access evaluation

POST /api/v1/authz/v1/evaluation Body: {   \"subject\":  {\"type\": \"user\"|\"agent\", \"id\": \"...\"},   \"action\":   {\"name\": \"...\"},   \"resource\": {\"type\": \"...\", \"id\": \"...\"},   \"context\":  {...} } Response: {\"decision\": true|false, \"context\": {...}?}

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::AuthZenDecision**](AuthZenDecision.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## evaluate_batch

> models::EvaluateBatchResponse evaluate_batch()
AuthZEN 1.0 boxcarred access evaluations

POST /api/v1/authz/v1/evaluations Body: {   \"subject\":  {...}?,   // optional defaults, overridden per item   \"action\":   {...}?,   \"resource\": {...}?,   \"context\":  {...}?,   \"evaluations\": [{...}, ...] } Response: {\"evaluations\": [{\"decision\": ...}, ...]} preserving order.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::EvaluateBatchResponse**](EvaluateBatchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## expand_relation

> models::ExpandRelationResponse expand_relation(expand_relation_request)
Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.

POST /api/v1/authz/zanzibar/expand Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\" } Response: {   \"tree\": {     \"type\": \"union\" | \"intersection\" | \"leaf\",     \"object\": \"document:123\",     \"relation\": \"viewer\",     \"children\": [ ...nested nodes... ],     \"subjects\": [ \"user:1\", \"group:2#member\" ]   } }  Expansion always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope) — there is no \"self\" variant.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**expand_relation_request** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | [required] |

### Return type

[**models::ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## expand_relation_scoped

> models::ExpandRelationResponse expand_relation_scoped(org_id, expand_relation_request)
Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).

Body: {\"object\": \"document:123\", \"relation\": \"viewer\"} Response: {\"tree\": {\"type\", \"object\", \"relation\", \"children\", \"subjects\"}}

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**expand_relation_request** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | [required] |

### Return type

[**models::ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_my_attributes

> models::GetMyAttributesResponse get_my_attributes(org_id)
The caller's ABAC subject attributes

GET /api/v1/abac/my-attributes

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |

### Return type

[**models::GetMyAttributesResponse**](GetMyAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_resource_attributes

> models::GetResourceAttributesResponse get_resource_attributes(org_id, resource_type, resource_id)
Attributes stored for a resource

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**resource_type** | **String** |  | [required] |
**resource_id** | **String** |  | [required] |

### Return type

[**models::GetResourceAttributesResponse**](GetResourceAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_attribute_definitions

> models::ListAttributeDefinitionsResponse list_attribute_definitions(org_id, r#type)
Attribute definitions available to the organization

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**r#type** | Option<**String**> |  |  |

### Return type

[**models::ListAttributeDefinitionsResponse**](ListAttributeDefinitionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_permissions

> models::ListPermissionsResponse list_permissions()
List the caller's effective permissions

GET /api/v1/authz/permissions

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::ListPermissionsResponse**](ListPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_resource_attribute

> models::SetResourceAttributeResponse set_resource_attribute(org_id, resource_type, resource_id, attribute_slug)
Set a resource attribute

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**resource_type** | **String** |  | [required] |
**resource_id** | **String** |  | [required] |
**attribute_slug** | **String** |  | [required] |

### Return type

[**models::SetResourceAttributeResponse**](SetResourceAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_user_attribute

> models::SetUserAttributeResponse set_user_attribute(org_id, user_id, attribute_slug)
Set a user attribute

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**org_id** | **String** |  | [required] |
**user_id** | **String** |  | [required] |
**attribute_slug** | **String** |  | [required] |

### Return type

[**models::SetUserAttributeResponse**](SetUserAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

