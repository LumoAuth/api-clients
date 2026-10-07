# AbacAttributesGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_attributes_get_response import AbacAttributesGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacAttributesGetResponse from a JSON string
abac_attributes_get_response_instance = AbacAttributesGetResponse.from_json(json)
# print the JSON string representation of the object
print(AbacAttributesGetResponse.to_json())

# convert the object into a dict
abac_attributes_get_response_dict = abac_attributes_get_response_instance.to_dict()
# create an instance of AbacAttributesGetResponse from a dict
abac_attributes_get_response_from_dict = AbacAttributesGetResponse.from_dict(abac_attributes_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


