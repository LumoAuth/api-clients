# User


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**email** | **str** |  | 
**username** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**given_name** | **str** |  | [optional] 
**family_name** | **str** |  | [optional] 
**picture** | **str** |  | [optional] 
**email_verified** | **bool** |  | 
**phone_number** | **str** |  | [optional] 
**phone_number_verified** | **bool** |  | [optional] 
**is_active** | **bool** |  | 
**blocked** | **bool** |  | 
**mfa_enabled** | **bool** |  | 
**is_admin** | **bool** |  | 
**created_at** | **datetime** |  | 
**last_login_at** | **datetime** |  | [optional] 
**login_count** | **int** |  | 
**roles** | [**List[RoleRef]**](RoleRef.md) | Detailed (single-user) responses only | [optional] 
**groups** | [**List[GroupRef]**](GroupRef.md) | Detailed responses only | [optional] 
**locale** | **str** | Detailed responses only | [optional] 
**zoneinfo** | **str** | Detailed responses only | [optional] 
**updated_at** | **datetime** | Detailed responses only | [optional] 
**blocked_at** | **datetime** | Detailed responses only | [optional] 
**is_jit_provisioned** | **bool** | Detailed responses only | [optional] 
**jit_provisioned_by** | **str** | Detailed responses only | [optional] 
**social_provider** | **str** | Detailed responses only | [optional] 

## Example

```python
from lumoauth_api_client.models.user import User

# TODO update the JSON string below
json = "{}"
# create an instance of User from a JSON string
user_instance = User.from_json(json)
# print the JSON string representation of the object
print(User.to_json())

# convert the object into a dict
user_dict = user_instance.to_dict()
# create an instance of User from a dict
user_from_dict = User.from_dict(user_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


