# CreateUserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | 
**password** | **str** | Optional; must meet the organization&#39;s password policy. | [optional] 
**username** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**given_name** | **str** |  | [optional] 
**family_name** | **str** |  | [optional] 
**phone_number** | **str** |  | [optional] 
**email_verified** | **bool** |  | [optional] [default to False]
**is_active** | **bool** |  | [optional] [default to True]
**metadata** | **Dict[str, object]** |  | [optional] 
**roles** | **List[str]** | Role slugs or ids of this organization. | [optional] 
**groups** | **List[str]** | Group slugs or ids of this organization. | [optional] 

## Example

```python
from lumoauth_api_client.models.create_user_request import CreateUserRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateUserRequest from a JSON string
create_user_request_instance = CreateUserRequest.from_json(json)
# print the JSON string representation of the object
print(CreateUserRequest.to_json())

# convert the object into a dict
create_user_request_dict = create_user_request_instance.to_dict()
# create an instance of CreateUserRequest from a dict
create_user_request_from_dict = CreateUserRequest.from_dict(create_user_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


