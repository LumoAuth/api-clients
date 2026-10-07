# OpenIdConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **str** |  | 
**authorization_endpoint** | **str** |  | 
**token_endpoint** | **str** |  | 
**jwks_uri** | **str** |  | 
**response_types_supported** | **List[str]** |  | 
**subject_types_supported** | **List[str]** |  | 
**id_token_signing_alg_values_supported** | **List[str]** |  | 
**userinfo_endpoint** | **str** |  | [optional] 
**registration_endpoint** | **str** |  | [optional] 
**scopes_supported** | **List[str]** | Standard OIDC scopes plus the organization&#39;s MCP scope vocabulary. | [optional] 
**claims_supported** | **List[str]** |  | [optional] 
**response_modes_supported** | **List[str]** |  | [optional] 
**authorization_signing_alg_values_supported** | **List[str]** | JARM signing algorithms. | [optional] 
**grant_types_supported** | **List[str]** |  | [optional] 
**device_authorization_endpoint** | **str** |  | [optional] 
**token_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**token_endpoint_auth_signing_alg_values_supported** | **List[str]** |  | [optional] 
**claim_types_supported** | **List[str]** |  | [optional] 
**claims_parameter_supported** | **bool** |  | [optional] 
**request_parameter_supported** | **bool** |  | [optional] 
**request_uri_parameter_supported** | **bool** |  | [optional] 
**require_request_uri_registration** | **bool** |  | [optional] 
**require_signed_request_object** | **bool** |  | [optional] 
**request_object_signing_alg_values_supported** | **List[str]** |  | [optional] 
**ui_locales_supported** | **List[str]** |  | [optional] 
**acr_values_supported** | **List[str]** | The four MFA tier ACR values, unless overridden in organization settings. | [optional] 
**code_challenge_methods_supported** | **List[str]** |  | [optional] 
**authorization_response_iss_parameter_supported** | **bool** |  | [optional] 
**pushed_authorization_request_endpoint** | **str** |  | [optional] 
**require_pushed_authorization_requests** | **bool** |  | [optional] 
**dpop_signing_alg_values_supported** | **List[str]** |  | [optional] 
**tls_client_certificate_bound_access_tokens** | **bool** |  | [optional] 
**introspection_endpoint** | **str** |  | [optional] 
**introspection_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**revocation_endpoint** | **str** |  | [optional] 
**revocation_endpoint_auth_methods_supported** | **List[str]** |  | [optional] 
**resource_indicators_supported** | **bool** |  | [optional] 
**end_session_endpoint** | **str** |  | [optional] 
**check_session_iframe** | **str** |  | [optional] 
**frontchannel_logout_supported** | **bool** |  | [optional] 
**frontchannel_logout_session_supported** | **bool** |  | [optional] 
**backchannel_logout_supported** | **bool** |  | [optional] 
**backchannel_logout_session_supported** | **bool** |  | [optional] 
**backchannel_authentication_endpoint** | **str** |  | [optional] 
**backchannel_token_delivery_modes_supported** | **List[str]** |  | [optional] 
**backchannel_user_code_parameter_supported** | **bool** |  | [optional] 
**service_documentation** | **str** |  | [optional] 
**entity_profiles_supported** | **List[str]** |  | [optional] 
**client_id_metadata_document_supported** | **bool** | Only when CIMD is enabled for the organization. | [optional] 
**authorization_grant_profiles_supported** | **List[str]** | Only when the organization accepts ID-JAGs. | [optional] 
**op_policy_uri** | **str** | Only when configured. | [optional] 
**op_tos_uri** | **str** | Only when configured. | [optional] 

## Example

```python
from lumoauth_api_client.models.open_id_configuration import OpenIdConfiguration

# TODO update the JSON string below
json = "{}"
# create an instance of OpenIdConfiguration from a JSON string
open_id_configuration_instance = OpenIdConfiguration.from_json(json)
# print the JSON string representation of the object
print(OpenIdConfiguration.to_json())

# convert the object into a dict
open_id_configuration_dict = open_id_configuration_instance.to_dict()
# create an instance of OpenIdConfiguration from a dict
open_id_configuration_from_dict = OpenIdConfiguration.from_dict(open_id_configuration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


