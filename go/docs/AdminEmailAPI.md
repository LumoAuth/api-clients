# \AdminEmailAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminEmailTemplatesDelete**](AdminEmailAPI.md#AdminEmailTemplatesDelete) | **Delete** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used
[**AdminEmailTemplatesGet**](AdminEmailAPI.md#AdminEmailTemplatesGet) | **Get** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)
[**AdminEmailTemplatesList**](AdminEmailAPI.md#AdminEmailTemplatesList) | **Get** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template
[**AdminEmailTemplatesPreview**](AdminEmailAPI.md#AdminEmailTemplatesPreview) | **Post** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data
[**AdminEmailTemplatesUpsert**](AdminEmailAPI.md#AdminEmailTemplatesUpsert) | **Put** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type
[**AdminEmailTemplatesVariables**](AdminEmailAPI.md#AdminEmailTemplatesVariables) | **Get** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type



## AdminEmailTemplatesDelete

> MessageResponse AdminEmailTemplatesDelete(ctx, orgId, type_).Execute()

Remove the custom email template so the built-in default is used

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	type_ := "type__example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesDelete(context.Background(), orgId, type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminEmailTemplatesGet

> EmailTemplate AdminEmailTemplatesGet(ctx, orgId, type_).Execute()

Get an email template (custom or built-in default)

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	type_ := "type__example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesGet(context.Background(), orgId, type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesGet`: EmailTemplate
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminEmailTemplatesList

> AdminEmailTemplatesListResponse AdminEmailTemplatesList(ctx, orgId).Execute()

List every email template type with its current (custom or built-in) template

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesList`: AdminEmailTemplatesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminEmailTemplatesListResponse**](AdminEmailTemplatesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminEmailTemplatesPreview

> AdminEmailTemplatesPreviewResponse AdminEmailTemplatesPreview(ctx, orgId, type_).Execute()

Render an email template with sample data

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	type_ := "type__example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesPreview(context.Background(), orgId, type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesPreview``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesPreview`: AdminEmailTemplatesPreviewResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesPreview`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesPreviewRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminEmailTemplatesPreviewResponse**](AdminEmailTemplatesPreviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminEmailTemplatesUpsert

> EmailTemplate AdminEmailTemplatesUpsert(ctx, orgId, type_).Execute()

Create or replace the custom email template for a type

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	type_ := "type__example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesUpsert(context.Background(), orgId, type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesUpsert``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesUpsert`: EmailTemplate
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesUpsert`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesUpsertRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminEmailTemplatesVariables

> AdminEmailTemplatesVariablesResponse AdminEmailTemplatesVariables(ctx, orgId, type_).Execute()

List the placeholders available to an email template type

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/lumoauth/api-clients/go"
)

func main() {
	orgId := "orgId_example" // string | 
	type_ := "type__example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminEmailAPI.AdminEmailTemplatesVariables(context.Background(), orgId, type_).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminEmailAPI.AdminEmailTemplatesVariables``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminEmailTemplatesVariables`: AdminEmailTemplatesVariablesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminEmailAPI.AdminEmailTemplatesVariables`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**type_** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminEmailTemplatesVariablesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminEmailTemplatesVariablesResponse**](AdminEmailTemplatesVariablesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

