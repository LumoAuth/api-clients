# \AdminGroupsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminGroupsAddMembers**](AdminGroupsAPI.md#AdminGroupsAddMembers) | **Post** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group
[**AdminGroupsAddRole**](AdminGroupsAPI.md#AdminGroupsAddRole) | **Post** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
[**AdminGroupsCreate**](AdminGroupsAPI.md#AdminGroupsCreate) | **Post** /orgs/{orgId}/api/v1/admin/groups | Create a new group
[**AdminGroupsDelete**](AdminGroupsAPI.md#AdminGroupsDelete) | **Delete** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
[**AdminGroupsGet**](AdminGroupsAPI.md#AdminGroupsGet) | **Get** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
[**AdminGroupsGetMembers**](AdminGroupsAPI.md#AdminGroupsGetMembers) | **Get** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
[**AdminGroupsGroupsGetRoles**](AdminGroupsAPI.md#AdminGroupsGroupsGetRoles) | **Get** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
[**AdminGroupsList**](AdminGroupsAPI.md#AdminGroupsList) | **Get** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
[**AdminGroupsRemoveMember**](AdminGroupsAPI.md#AdminGroupsRemoveMember) | **Delete** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group
[**AdminGroupsRemoveRole**](AdminGroupsAPI.md#AdminGroupsRemoveRole) | **Delete** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
[**AdminGroupsUpdateRoles**](AdminGroupsAPI.md#AdminGroupsUpdateRoles) | **Put** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
[**PatchAdminGroupsUpdate**](AdminGroupsAPI.md#PatchAdminGroupsUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
[**PutAdminGroupsUpdate**](AdminGroupsAPI.md#PutAdminGroupsUpdate) | **Put** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group



## AdminGroupsAddMembers

> AdminGroupsCreateResponse AdminGroupsAddMembers(ctx, orgId, groupId).Execute()

Add member(s) to group

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsAddMembers(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsAddMembers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsAddMembers`: AdminGroupsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsAddMembers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsAddMembersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsAddRole

> MessageResponse AdminGroupsAddRole(ctx, orgId, groupId).Execute()

Add a single role to a group

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsAddRole(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsAddRole``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsAddRole`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsAddRole`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsAddRoleRequest struct via the builder pattern


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


## AdminGroupsCreate

> AdminGroupsCreateResponse AdminGroupsCreate(ctx, orgId).Execute()

Create a new group

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
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsCreate`: AdminGroupsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsDelete

> MessageResponse AdminGroupsDelete(ctx, orgId, groupId).Execute()

Delete a group

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsDelete(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsDeleteRequest struct via the builder pattern


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


## AdminGroupsGet

> AdminGroupsGetResponse AdminGroupsGet(ctx, orgId, groupId).Execute()

Get a single group by ID or slug

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsGet(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsGet`: AdminGroupsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsGetResponse**](AdminGroupsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsGetMembers

> AdminGroupsGetMembersResponse AdminGroupsGetMembers(ctx, orgId, groupId).Execute()

Get group members

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsGetMembers(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsGetMembers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsGetMembers`: AdminGroupsGetMembersResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsGetMembers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsGetMembersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsGetMembersResponse**](AdminGroupsGetMembersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsGroupsGetRoles

> AdminGroupsGroupsGetRolesResponse AdminGroupsGroupsGetRoles(ctx, orgId, groupId).Execute()

Get group roles

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsGroupsGetRoles(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsGroupsGetRoles``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsGroupsGetRoles`: AdminGroupsGroupsGetRolesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsGroupsGetRoles`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsGroupsGetRolesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsList

> AdminGroupsListResponse AdminGroupsList(ctx, orgId).Execute()

List all groups in the tenant

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
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsList`: AdminGroupsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminGroupsListResponse**](AdminGroupsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminGroupsRemoveMember

> MessageResponse AdminGroupsRemoveMember(ctx, orgId, groupId, userId).Execute()

Remove member from group

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
	groupId := "groupId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsRemoveMember(context.Background(), orgId, groupId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsRemoveMember``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsRemoveMember`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsRemoveMember`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsRemoveMemberRequest struct via the builder pattern


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


## AdminGroupsRemoveRole

> MessageResponse AdminGroupsRemoveRole(ctx, orgId, groupId, roleId).Execute()

Remove a role from a group

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
	groupId := "groupId_example" // string | 
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsRemoveRole(context.Background(), orgId, groupId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsRemoveRole``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsRemoveRole`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsRemoveRole`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsRemoveRoleRequest struct via the builder pattern


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


## AdminGroupsUpdateRoles

> AdminGroupsCreateResponse AdminGroupsUpdateRoles(ctx, orgId, groupId).Execute()

Update group roles (replaces all existing roles)

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.AdminGroupsUpdateRoles(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.AdminGroupsUpdateRoles``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminGroupsUpdateRoles`: AdminGroupsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.AdminGroupsUpdateRoles`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminGroupsUpdateRolesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminGroupsUpdate

> AdminGroupsCreateResponse PatchAdminGroupsUpdate(ctx, orgId, groupId).Execute()

Update an existing group

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.PatchAdminGroupsUpdate(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.PatchAdminGroupsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminGroupsUpdate`: AdminGroupsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.PatchAdminGroupsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminGroupsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminGroupsUpdate

> AdminGroupsCreateResponse PutAdminGroupsUpdate(ctx, orgId, groupId).Execute()

Update an existing group

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
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminGroupsAPI.PutAdminGroupsUpdate(context.Background(), orgId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminGroupsAPI.PutAdminGroupsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminGroupsUpdate`: AdminGroupsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminGroupsAPI.PutAdminGroupsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminGroupsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

