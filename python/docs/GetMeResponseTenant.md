# GetMeResponseTenant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_me_response_tenant import GetMeResponseTenant

# TODO update the JSON string below
json = "{}"
# create an instance of GetMeResponseTenant from a JSON string
get_me_response_tenant_instance = GetMeResponseTenant.from_json(json)
# print the JSON string representation of the object
print(GetMeResponseTenant.to_json())

# convert the object into a dict
get_me_response_tenant_dict = get_me_response_tenant_instance.to_dict()
# create an instance of GetMeResponseTenant from a dict
get_me_response_tenant_from_dict = GetMeResponseTenant.from_dict(get_me_response_tenant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


