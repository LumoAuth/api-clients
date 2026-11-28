# UpdateUserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** | A change needs a caller who outranks the user (and a fresh sign-in for a person). | [optional] 
**name** | **str** |  | [optional] 
**given_name** | **str** |  | [optional] 
**family_name** | **str** |  | [optional] 
**phone_number** | **str** |  | [optional] 
**picture** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 
**zoneinfo** | **str** |  | [optional] 
**email_verified** | **bool** |  | [optional] 
**is_active** | **bool** |  | [optional] 
**staff** | **bool** |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_user_request import UpdateUserRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateUserRequest from a JSON string
update_user_request_instance = UpdateUserRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateUserRequest.to_json())

# convert the object into a dict
update_user_request_dict = update_user_request_instance.to_dict()
# create an instance of UpdateUserRequest from a dict
update_user_request_from_dict = UpdateUserRequest.from_dict(update_user_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


