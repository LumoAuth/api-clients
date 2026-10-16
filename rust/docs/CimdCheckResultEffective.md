# CimdCheckResultEffective

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_name** | Option<**String**> |  | [optional]
**application_type** | Option<**String**> |  | [optional]
**token_endpoint_auth_method** | Option<**String**> |  | [optional]
**public_client** | Option<**bool**> |  | [optional]
**pkce_required** | Option<**bool**> |  | [optional]
**redirect_uris** | Option<**Vec<String>**> |  | [optional]
**dropped_redirect_uris** | Option<**Vec<String>**> | Loopback URIs removed by the organization's localhost policy. | [optional]
**grant_types** | Option<**Vec<String>**> |  | [optional]
**scopes** | Option<**Vec<String>**> |  | [optional]
**dropped_scopes** | Option<**Vec<String>**> | Scopes the document asked for that are neither identity scopes nor on the organization's cimd_allowed_scopes list. | [optional]
**logo_uri** | Option<**String**> |  | [optional]
**client_uri** | Option<**String**> |  | [optional]
**has_loopback_redirect** | Option<**bool**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


