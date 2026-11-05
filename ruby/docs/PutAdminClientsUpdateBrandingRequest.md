# LumoAuthApiClient::PutAdminClientsUpdateBrandingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **consent** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminClientsUpdateBrandingRequest.new(
  login: {&quot;enabled&quot;:true,&quot;primary_color&quot;:&quot;#0f62fe&quot;,&quot;welcome_title&quot;:&quot;Welcome to Acme Shop&quot;,&quot;layout&quot;:&quot;split-right&quot;},
  consent: {&quot;enabled&quot;:true,&quot;title&quot;:&quot;Allow Acme Shop&quot;}
)
```

