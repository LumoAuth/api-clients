# AdminPoppySessionsListResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**client_id** | **str** |  | [optional] 
**client_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**agent_id** | **str** |  | [optional] 
**signed_in** | **bool** |  | [optional] 
**account_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**ended_reason** | **str** |  | [optional] 
**protocol_version** | **str** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**last_seen_at** | **datetime** |  | [optional] 
**ended_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_sessions_list_response_data_item import AdminPoppySessionsListResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppySessionsListResponseDataItem from a JSON string
admin_poppy_sessions_list_response_data_item_instance = AdminPoppySessionsListResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminPoppySessionsListResponseDataItem.to_json())

# convert the object into a dict
admin_poppy_sessions_list_response_data_item_dict = admin_poppy_sessions_list_response_data_item_instance.to_dict()
# create an instance of AdminPoppySessionsListResponseDataItem from a dict
admin_poppy_sessions_list_response_data_item_from_dict = AdminPoppySessionsListResponseDataItem.from_dict(admin_poppy_sessions_list_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


