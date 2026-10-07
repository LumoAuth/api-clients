# BackchannelAuthorizeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_req_id** | **str** |  | 
**expires_in** | **int** | Lifetime of the auth_req_id in seconds. | 
**interval** | **int** | Minimum polling interval in seconds (poll / ping modes). | [optional] 

## Example

```python
from lumoauth_api_client.models.backchannel_authorize_response import BackchannelAuthorizeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BackchannelAuthorizeResponse from a JSON string
backchannel_authorize_response_instance = BackchannelAuthorizeResponse.from_json(json)
# print the JSON string representation of the object
print(BackchannelAuthorizeResponse.to_json())

# convert the object into a dict
backchannel_authorize_response_dict = backchannel_authorize_response_instance.to_dict()
# create an instance of BackchannelAuthorizeResponse from a dict
backchannel_authorize_response_from_dict = BackchannelAuthorizeResponse.from_dict(backchannel_authorize_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


