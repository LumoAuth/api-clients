# \AdminRolesAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminRolesAddPermissions**](AdminRolesAPI.md#AdminRolesAddPermissions) | **Post** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
[**AdminRolesAddUser**](AdminRolesAPI.md#AdminRolesAddUser) | **Post** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
[**AdminRolesCreate**](AdminRolesAPI.md#AdminRolesCreate) | **Post** /orgs/{orgId}/api/v1/admin/roles | Create a new role
[**AdminRolesDelete**](AdminRolesAPI.md#AdminRolesDelete) | **Delete** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
[**AdminRolesGet**](AdminRolesAPI.md#AdminRolesGet) | **Get** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
[**AdminRolesGetPermissions**](AdminRolesAPI.md#AdminRolesGetPermissions) | **Get** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
[**AdminRolesGetUsers**](AdminRolesAPI.md#AdminRolesGetUsers) | **Get** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
[**AdminRolesList**](AdminRolesAPI.md#AdminRolesList) | **Get** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
[**AdminRolesRemovePermission**](AdminRolesAPI.md#AdminRolesRemovePermission) | **Delete** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
[**AdminRolesRemoveUser**](AdminRolesAPI.md#AdminRolesRemoveUser) | **Delete** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
[**AdminRolesUpdatePermissions**](AdminRolesAPI.md#AdminRolesUpdatePermissions) | **Put** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
[**PatchAdminRolesUpdate**](AdminRolesAPI.md#PatchAdminRolesUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
[**PutAdminRolesUpdate**](AdminRolesAPI.md#PutAdminRolesUpdate) | **Put** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role



## AdminRolesAddPermissions

> MessageResponse AdminRolesAddPermissions(ctx, orgId, roleId).Execute()

Add permission(s) to a role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesAddPermissions(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesAddPermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesAddPermissions`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesAddPermissions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesAddPermissionsRequest struct via the builder pattern


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


## AdminRolesAddUser

> MessageResponse AdminRolesAddUser(ctx, orgId, roleId).Execute()

Assign a user to a role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesAddUser(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesAddUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesAddUser`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesAddUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesAddUserRequest struct via the builder pattern


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


## AdminRolesCreate

> AdminRolesCreateResponse AdminRolesCreate(ctx, orgId).Execute()

Create a new role

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
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesCreate`: AdminRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminRolesDelete

> MessageResponse AdminRolesDelete(ctx, orgId, roleId).Execute()

Delete a role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesDelete(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesDeleteRequest struct via the builder pattern


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


## AdminRolesGet

> AdminRolesGetResponse AdminRolesGet(ctx, orgId, roleId).Execute()

Get a single role by ID or slug

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesGet(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesGet`: AdminRolesGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesGetResponse**](AdminRolesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminRolesGetPermissions

> AdminRolesGetPermissionsResponse AdminRolesGetPermissions(ctx, orgId, roleId).Execute()

Get role permissions

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesGetPermissions(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesGetPermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesGetPermissions`: AdminRolesGetPermissionsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesGetPermissions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesGetPermissionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminRolesGetUsers

> AdminRolesGetUsersResponse AdminRolesGetUsers(ctx, orgId, roleId).Execute()

Get users assigned to a role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesGetUsers(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesGetUsers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesGetUsers`: AdminRolesGetUsersResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesGetUsers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesGetUsersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesGetUsersResponse**](AdminRolesGetUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminRolesList

> AdminRolesListResponse AdminRolesList(ctx, orgId).Execute()

List all roles in the tenant

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
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesList`: AdminRolesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminRolesListResponse**](AdminRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminRolesRemovePermission

> MessageResponse AdminRolesRemovePermission(ctx, orgId, roleId, permissionId).Execute()

Remove a permission from a role

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
	roleId := "roleId_example" // string | 
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesRemovePermission(context.Background(), orgId, roleId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesRemovePermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesRemovePermission`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesRemovePermission`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesRemovePermissionRequest struct via the builder pattern


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


## AdminRolesRemoveUser

> MessageResponse AdminRolesRemoveUser(ctx, orgId, roleId, userId).Execute()

Remove a user from a role

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
	roleId := "roleId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesRemoveUser(context.Background(), orgId, roleId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesRemoveUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesRemoveUser`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesRemoveUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesRemoveUserRequest struct via the builder pattern


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


## AdminRolesUpdatePermissions

> AdminRolesCreateResponse AdminRolesUpdatePermissions(ctx, orgId, roleId).Execute()

Update role permissions (replaces all)

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.AdminRolesUpdatePermissions(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.AdminRolesUpdatePermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminRolesUpdatePermissions`: AdminRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.AdminRolesUpdatePermissions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminRolesUpdatePermissionsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminRolesUpdate

> AdminRolesCreateResponse PatchAdminRolesUpdate(ctx, orgId, roleId).Execute()

Update an existing role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.PatchAdminRolesUpdate(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.PatchAdminRolesUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminRolesUpdate`: AdminRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.PatchAdminRolesUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminRolesUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminRolesUpdate

> AdminRolesCreateResponse PutAdminRolesUpdate(ctx, orgId, roleId).Execute()

Update an existing role

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
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminRolesAPI.PutAdminRolesUpdate(context.Background(), orgId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminRolesAPI.PutAdminRolesUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminRolesUpdate`: AdminRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminRolesAPI.PutAdminRolesUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminRolesUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

