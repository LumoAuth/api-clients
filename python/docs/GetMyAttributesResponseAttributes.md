# GetMyAttributesResponseAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**is_admin** | **bool** |  | [optional] 
**is_super_admin** | **bool** |  | [optional] 
**email_verified** | **bool** |  | [optional] 
**mfa_enabled** | **bool** |  | [optional] 
**is_active** | **bool** |  | [optional] 
**blocked** | **bool** |  | [optional] 
**given_name** | **str** |  | [optional] 
**family_name** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 
**zoneinfo** | **str** |  | [optional] 
**roles** | **List[str]** | Role slugs | [optional] 
**groups** | **List[str]** | Group slugs | [optional] 
**permissions** | **List[str]** | Permission slugs | [optional] 
**tenant_id** | **int** |  | [optional] 
**org_id** | **str** | Organization slug | [optional] 

## Example

```python
from lumoauth_api_client.models.get_my_attributes_response_attributes import GetMyAttributesResponseAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of GetMyAttributesResponseAttributes from a JSON string
get_my_attributes_response_attributes_instance = GetMyAttributesResponseAttributes.from_json(json)
# print the JSON string representation of the object
print(GetMyAttributesResponseAttributes.to_json())

# convert the object into a dict
get_my_attributes_response_attributes_dict = get_my_attributes_response_attributes_instance.to_dict()
# create an instance of GetMyAttributesResponseAttributes from a dict
get_my_attributes_response_attributes_from_dict = GetMyAttributesResponseAttributes.from_dict(get_my_attributes_response_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


