# ExpandRelationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tree** | [**ExpandRelationResponseTree**](ExpandRelationResponseTree.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.expand_relation_response import ExpandRelationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ExpandRelationResponse from a JSON string
expand_relation_response_instance = ExpandRelationResponse.from_json(json)
# print the JSON string representation of the object
print(ExpandRelationResponse.to_json())

# convert the object into a dict
expand_relation_response_dict = expand_relation_response_instance.to_dict()
# create an instance of ExpandRelationResponse from a dict
expand_relation_response_from_dict = ExpandRelationResponse.from_dict(expand_relation_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


