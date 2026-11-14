# LumoAuthApiClient::AdminSettingsGeneralGetResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the organization, shown on the hosted pages and in mail. | [optional] |
| **display_name** | **String** | The same value as name. | [optional] |
| **locale** | **String** | Default language of the hosted pages (the Default language of the login page settings). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSettingsGeneralGetResponseData.new(
  name: null,
  display_name: null,
  locale: en
)
```

