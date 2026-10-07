# AuditLogEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**created_at** | **datetime** |  | 
**event_type** | **str** |  | [optional] 
**action** | **str** |  | [optional] 
**severity** | **str** |  | [optional] 
**message** | **str** |  | [optional] 
**actor_id** | **str** |  | [optional] 
**actor_name** | **str** |  | [optional] 
**actor_type** | **str** |  | [optional] 
**auth_method** | **str** |  | [optional] 
**target_type** | **str** |  | [optional] 
**target_id** | **str** |  | [optional] 
**target_name** | **str** |  | [optional] 
**ip_address** | **str** |  | [optional] 
**event_time** | **datetime** | Detailed responses only | [optional] 
**duration_ms** | **int** | Detailed responses only | [optional] 
**initiated_by** | **str** | Detailed responses only | [optional] 
**client_id** | **str** | Detailed responses only | [optional] 
**user_agent** | **str** | Detailed responses only | [optional] 
**geo_location** | **Dict[str, object]** | Detailed responses only | [optional] 
**session_id** | **str** | Detailed responses only | [optional] 
**request_id** | **str** | Detailed responses only | [optional] 
**status** | **str** | Detailed responses only | [optional] 
**status_reason** | **str** | Detailed responses only | [optional] 
**old_value** | **Dict[str, object]** | Detailed responses only | [optional] 
**new_value** | **Dict[str, object]** | Detailed responses only | [optional] 
**changes** | **Dict[str, object]** | Detailed responses only | [optional] 
**context** | **Dict[str, object]** | Detailed responses only | [optional] 

## Example

```python
from lumoauth_api_client.models.audit_log_entry import AuditLogEntry

# TODO update the JSON string below
json = "{}"
# create an instance of AuditLogEntry from a JSON string
audit_log_entry_instance = AuditLogEntry.from_json(json)
# print the JSON string representation of the object
print(AuditLogEntry.to_json())

# convert the object into a dict
audit_log_entry_dict = audit_log_entry_instance.to_dict()
# create an instance of AuditLogEntry from a dict
audit_log_entry_from_dict = AuditLogEntry.from_dict(audit_log_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


