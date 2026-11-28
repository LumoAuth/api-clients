# PutAbacAttributesUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**default_value** | **object** |  | [optional] 
**validation_rules** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_abac_attributes_update_request import PutAbacAttributesUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAbacAttributesUpdateRequest from a JSON string
put_abac_attributes_update_request_instance = PutAbacAttributesUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAbacAttributesUpdateRequest.to_json())

# convert the object into a dict
put_abac_attributes_update_request_dict = put_abac_attributes_update_request_instance.to_dict()
# create an instance of PutAbacAttributesUpdateRequest from a dict
put_abac_attributes_update_request_from_dict = PutAbacAttributesUpdateRequest.from_dict(put_abac_attributes_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


