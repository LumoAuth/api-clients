# CimdCheckResult

Result of POST /admin/clients/cimd/check — how the authorization server sees a Client ID Metadata Document.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** | true when the document is valid and would be accepted (subject to &#x60;enabled&#x60;). | [optional] 
**client_id** | **str** |  | [optional] 
**enabled** | **bool** | Whether CIMD is currently on for this organization (switch + plan). | [optional] 
**reason** | **str** | Stable failure code when ok is false (client_id_mismatch, invalid_redirect_uri, domain_not_allowed, http_status_404, …). | [optional] 
**message** | **str** | Developer-facing explanation of &#x60;reason&#x60;. | [optional] 
**warnings** | **List[str]** |  | [optional] 
**document** | **Dict[str, object]** | The metadata document as fetched. | [optional] 
**effective** | [**CimdCheckResultEffective**](CimdCheckResultEffective.md) |  | [optional] 
**shadow_client** | [**CimdCheckResultShadowClient**](CimdCheckResultShadowClient.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.cimd_check_result import CimdCheckResult

# TODO update the JSON string below
json = "{}"
# create an instance of CimdCheckResult from a JSON string
cimd_check_result_instance = CimdCheckResult.from_json(json)
# print the JSON string representation of the object
print(CimdCheckResult.to_json())

# convert the object into a dict
cimd_check_result_dict = cimd_check_result_instance.to_dict()
# create an instance of CimdCheckResult from a dict
cimd_check_result_from_dict = CimdCheckResult.from_dict(cimd_check_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


