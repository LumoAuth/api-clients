# BrandingSettings

Login page / branding settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**logo_url** | **str** |  | [optional] 
**favicon_url** | **str** |  | [optional] 
**background_color** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**button_text** | **str** |  | [optional] 
**show_tenant_name** | **bool** |  | [optional] 
**custom_css** | **str** |  | [optional] 
**custom_html** | **str** |  | [optional] 
**theme** | **str** |  | [optional] 
**self_registration_enabled** | **bool** |  | [optional] 
**layout** | **str** |  | [optional] 
**background_type** | **str** |  | [optional] 
**background_image_url** | **str** |  | [optional] 
**background_gradient** | **str** |  | [optional] 
**background_overlay_opacity** | **int** |  | [optional] 
**show_background_pattern** | **bool** |  | [optional] 
**background_pattern_style** | **str** |  | [optional] 
**welcome_title** | **str** |  | [optional] 
**welcome_subtitle** | **str** |  | [optional] 
**show_tenant_in_subtitle** | **bool** |  | [optional] 
**split_panel_title** | **str** |  | [optional] 
**split_panel_subtitle** | **str** |  | [optional] 
**split_panel_image_url** | **str** |  | [optional] 
**terms_url** | **str** |  | [optional] 
**privacy_url** | **str** |  | [optional] 
**footer_text** | **str** |  | [optional] 
**show_powered_by** | **bool** |  | [optional] 
**input_style** | **str** |  | [optional] 
**button_style** | **str** |  | [optional] 
**form_card_style** | **str** |  | [optional] 
**apply_to_registration** | **bool** |  | [optional] 
**apply_to_consent** | **bool** |  | [optional] 
**magic_link_enabled** | **bool** |  | [optional] 
**magic_link_only** | **bool** |  | [optional] 
**magic_link_expiry** | **int** | Magic-link lifetime in seconds. | [optional] 

## Example

```python
from lumoauth_api_client.models.branding_settings import BrandingSettings

# TODO update the JSON string below
json = "{}"
# create an instance of BrandingSettings from a JSON string
branding_settings_instance = BrandingSettings.from_json(json)
# print the JSON string representation of the object
print(BrandingSettings.to_json())

# convert the object into a dict
branding_settings_dict = branding_settings_instance.to_dict()
# create an instance of BrandingSettings from a dict
branding_settings_from_dict = BrandingSettings.from_dict(branding_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


