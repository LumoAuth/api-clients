# CreateClientResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**client_id** | **str** |  | 
**name** | **str** |  | 
**is_confidential** | **bool** |  | 
**is_public** | **bool** |  | 
**is_active** | **bool** |  | 
**requires_pkce** | **bool** |  | 
**created_at** | **datetime** |  | 
**redirect_uris** | **List[str]** | Detailed responses only | [optional] 
**scopes** | **List[str]** | Detailed responses only | [optional] 
**grant_types** | **List[str]** | Detailed responses only | [optional] 
**secret** | **str** | Plaintext client secret — returned only once, never retrievable again | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_client_response_data import CreateClientResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of CreateClientResponseData from a JSON string
create_client_response_data_instance = CreateClientResponseData.from_json(json)
# print the JSON string representation of the object
print(CreateClientResponseData.to_json())

# convert the object into a dict
create_client_response_data_dict = create_client_response_data_instance.to_dict()
# create an instance of CreateClientResponseData from a dict
create_client_response_data_from_dict = CreateClientResponseData.from_dict(create_client_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


