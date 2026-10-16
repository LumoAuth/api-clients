# CimdCheckResultEffective

The client LumoAuth derives from the document after organization policy.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_name** | **str** |  | [optional] 
**application_type** | **str** |  | [optional] 
**token_endpoint_auth_method** | **str** |  | [optional] 
**public_client** | **bool** |  | [optional] 
**pkce_required** | **bool** |  | [optional] 
**redirect_uris** | **List[str]** |  | [optional] 
**dropped_redirect_uris** | **List[str]** | Loopback URIs removed by the organization&#39;s localhost policy. | [optional] 
**grant_types** | **List[str]** |  | [optional] 
**scopes** | **List[str]** |  | [optional] 
**dropped_scopes** | **List[str]** | Scopes the document asked for that are neither identity scopes nor on the organization&#39;s cimd_allowed_scopes list. | [optional] 
**logo_uri** | **str** |  | [optional] 
**client_uri** | **str** |  | [optional] 
**has_loopback_redirect** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.cimd_check_result_effective import CimdCheckResultEffective

# TODO update the JSON string below
json = "{}"
# create an instance of CimdCheckResultEffective from a JSON string
cimd_check_result_effective_instance = CimdCheckResultEffective.from_json(json)
# print the JSON string representation of the object
print(CimdCheckResultEffective.to_json())

# convert the object into a dict
cimd_check_result_effective_dict = cimd_check_result_effective_instance.to_dict()
# create an instance of CimdCheckResultEffective from a dict
cimd_check_result_effective_from_dict = CimdCheckResultEffective.from_dict(cimd_check_result_effective_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


