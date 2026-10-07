# UserinfoResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **str** | User id; agent_&lt;agent_id&gt; for agents; client_&lt;client_id&gt; for clients. | 
**identity_type** | **str** | Only for non-user principals. | [optional] 
**tenant** | **str** | Organization slug. | [optional] 
**name** | **str** | profile scope (users); agent / client display name. | [optional] 
**given_name** | **str** | profile scope. | [optional] 
**family_name** | **str** | profile scope. | [optional] 
**middle_name** | **str** | profile scope. | [optional] 
**nickname** | **str** | profile scope. | [optional] 
**preferred_username** | **str** | profile scope. | [optional] 
**profile** | **str** | profile scope. | [optional] 
**picture** | **str** | profile scope. | [optional] 
**website** | **str** | profile scope. | [optional] 
**gender** | **str** | profile scope. | [optional] 
**birthdate** | **date** | profile scope (YYYY-MM-DD). | [optional] 
**zoneinfo** | **str** | profile scope. | [optional] 
**locale** | **str** | profile scope. | [optional] 
**updated_at** | **int** | profile scope — Unix seconds. | [optional] 
**email** | **str** | email scope. | [optional] 
**email_verified** | **bool** | email scope. | [optional] 
**phone_number** | **str** | phone scope. | [optional] 
**phone_number_verified** | **bool** | phone scope. | [optional] 
**address** | **Dict[str, object]** | address scope — OIDC address claim object. | [optional] 
**roles** | **List[str]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**agent_id** | **str** | Agents only. | [optional] 
**workload_identity** | **str** | Agents only. | [optional] 
**capabilities** | **List[str]** | Agents only. | [optional] 
**client_id** | **str** | Clients only. | [optional] 

## Example

```python
from lumoauth_api_client.models.userinfo_response import UserinfoResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserinfoResponse from a JSON string
userinfo_response_instance = UserinfoResponse.from_json(json)
# print the JSON string representation of the object
print(UserinfoResponse.to_json())

# convert the object into a dict
userinfo_response_dict = userinfo_response_instance.to_dict()
# create an instance of UserinfoResponse from a dict
userinfo_response_from_dict = UserinfoResponse.from_dict(userinfo_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


