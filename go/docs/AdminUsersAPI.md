# \AdminUsersAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUserGroup**](AdminUsersAPI.md#AddUserGroup) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group
[**AddUserPermission**](AdminUsersAPI.md#AddUserPermission) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user
[**AddUserRole**](AdminUsersAPI.md#AddUserRole) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user
[**AdminIdentitiesLegacySamlRelink**](AdminUsersAPI.md#AdminIdentitiesLegacySamlRelink) | **Post** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP
[**AdminIdentitiesLegacySamlReport**](AdminUsersAPI.md#AdminIdentitiesLegacySamlReport) | **Get** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report
[**AdminIdentitiesLink**](AdminUsersAPI.md#AdminIdentitiesLink) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user
[**AdminIdentitiesList**](AdminUsersAPI.md#AdminIdentitiesList) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user&#39;s federated identity links
[**AdminIdentitiesUnlink**](AdminUsersAPI.md#AdminIdentitiesUnlink) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user&#39;s SAML, LDAP or social identity
[**BlockUser**](AdminUsersAPI.md#BlockUser) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user
[**CreateUser**](AdminUsersAPI.md#CreateUser) | **Post** /orgs/{orgId}/api/v1/admin/users | Create a user
[**DeleteUser**](AdminUsersAPI.md#DeleteUser) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user
[**GetUser**](AdminUsersAPI.md#GetUser) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user
[**ListUserGroups**](AdminUsersAPI.md#ListUserGroups) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user&#39;s groups
[**ListUserPermissions**](AdminUsersAPI.md#ListUserPermissions) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user&#39;s direct permissions
[**ListUserRoles**](AdminUsersAPI.md#ListUserRoles) | **Get** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user&#39;s roles
[**ListUsers**](AdminUsersAPI.md#ListUsers) | **Get** /orgs/{orgId}/api/v1/admin/users | List users
[**MarkUserVerified**](AdminUsersAPI.md#MarkUserVerified) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user&#39;s email as verified
[**PatchUser**](AdminUsersAPI.md#PatchUser) | **Patch** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**RemoveUserGroup**](AdminUsersAPI.md#RemoveUserGroup) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group
[**RemoveUserPermission**](AdminUsersAPI.md#RemoveUserPermission) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user
[**RemoveUserRole**](AdminUsersAPI.md#RemoveUserRole) | **Delete** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user
[**ResetUserMfa**](AdminUsersAPI.md#ResetUserMfa) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)
[**SendUserVerificationEmail**](AdminUsersAPI.md#SendUserVerificationEmail) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email
[**SetUserPassword**](AdminUsersAPI.md#SetUserPassword) | **Put** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
[**SetUserPasswordPost**](AdminUsersAPI.md#SetUserPasswordPost) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
[**TriggerUserPasswordReset**](AdminUsersAPI.md#TriggerUserPasswordReset) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email
[**UnblockUser**](AdminUsersAPI.md#UnblockUser) | **Post** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user
[**UpdateUser**](AdminUsersAPI.md#UpdateUser) | **Put** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**UpdateUserGroups**](AdminUsersAPI.md#UpdateUserGroups) | **Put** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user&#39;s groups
[**UpdateUserRoles**](AdminUsersAPI.md#UpdateUserRoles) | **Put** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user&#39;s roles



## AddUserGroup

> AddUserGroupResponse AddUserGroup(ctx, orgId, userId).Execute()

Add a user to a group

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AddUserGroup(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AddUserGroup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddUserGroup`: AddUserGroupResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AddUserGroup`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddUserGroupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AddUserGroupResponse**](AddUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddUserPermission

> AddUserPermissionResponse AddUserPermission(ctx, orgId, userId).Execute()

Assign a permission to a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AddUserPermission(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AddUserPermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddUserPermission`: AddUserPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AddUserPermission`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddUserPermissionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AddUserPermissionResponse**](AddUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddUserRole

> AddUserRoleResponse AddUserRole(ctx, orgId, userId).Execute()

Assign a role to a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AddUserRole(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AddUserRole``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddUserRole`: AddUserRoleResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AddUserRole`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddUserRoleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AddUserRoleResponse**](AddUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminIdentitiesLegacySamlRelink

> AdminIdentitiesLegacySamlRelinkResponse AdminIdentitiesLegacySamlRelink(ctx, orgId).AdminIdentitiesLegacySamlRelinkRequest(adminIdentitiesLegacySamlRelinkRequest).Execute()

Relink legacy SAML users to an IdP



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
	adminIdentitiesLegacySamlRelinkRequest := *openapiclient.NewAdminIdentitiesLegacySamlRelinkRequest(int32(123)) // AdminIdentitiesLegacySamlRelinkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AdminIdentitiesLegacySamlRelink(context.Background(), orgId).AdminIdentitiesLegacySamlRelinkRequest(adminIdentitiesLegacySamlRelinkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AdminIdentitiesLegacySamlRelink``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminIdentitiesLegacySamlRelink`: AdminIdentitiesLegacySamlRelinkResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AdminIdentitiesLegacySamlRelink`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminIdentitiesLegacySamlRelinkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **adminIdentitiesLegacySamlRelinkRequest** | [**AdminIdentitiesLegacySamlRelinkRequest**](AdminIdentitiesLegacySamlRelinkRequest.md) |  | 

### Return type

[**AdminIdentitiesLegacySamlRelinkResponse**](AdminIdentitiesLegacySamlRelinkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminIdentitiesLegacySamlReport

> AdminIdentitiesLegacySamlReportResponse AdminIdentitiesLegacySamlReport(ctx, orgId).IdpId(idpId).Execute()

Legacy SAML bindings report



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
	idpId := int32(56) // int32 |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AdminIdentitiesLegacySamlReport(context.Background(), orgId).IdpId(idpId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AdminIdentitiesLegacySamlReport``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminIdentitiesLegacySamlReport`: AdminIdentitiesLegacySamlReportResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AdminIdentitiesLegacySamlReport`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminIdentitiesLegacySamlReportRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **idpId** | **int32** |  | 

### Return type

[**AdminIdentitiesLegacySamlReportResponse**](AdminIdentitiesLegacySamlReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminIdentitiesLink

> AdminAgentsGetResponse AdminIdentitiesLink(ctx, orgId, userId).AdminIdentitiesLinkRequest(adminIdentitiesLinkRequest).Execute()

Link a SAML or LDAP identity to a user



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
	userId := "userId_example" // string | 
	adminIdentitiesLinkRequest := *openapiclient.NewAdminIdentitiesLinkRequest("Type_example") // AdminIdentitiesLinkRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AdminIdentitiesLink(context.Background(), orgId, userId).AdminIdentitiesLinkRequest(adminIdentitiesLinkRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AdminIdentitiesLink``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminIdentitiesLink`: AdminAgentsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AdminIdentitiesLink`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminIdentitiesLinkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **adminIdentitiesLinkRequest** | [**AdminIdentitiesLinkRequest**](AdminIdentitiesLinkRequest.md) |  | 

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminIdentitiesList

> AdminIdentitiesListResponse AdminIdentitiesList(ctx, orgId, userId).Execute()

List a user's federated identity links



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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AdminIdentitiesList(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AdminIdentitiesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminIdentitiesList`: AdminIdentitiesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AdminIdentitiesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminIdentitiesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminIdentitiesListResponse**](AdminIdentitiesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminIdentitiesUnlink

> AdminAgentsGetResponse AdminIdentitiesUnlink(ctx, type_, orgId, userId).Execute()

Unlink a user's SAML, LDAP or social identity



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
	type_ := "type__example" // string | 
	orgId := "orgId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.AdminIdentitiesUnlink(context.Background(), type_, orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.AdminIdentitiesUnlink``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminIdentitiesUnlink`: AdminAgentsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.AdminIdentitiesUnlink`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**type_** | **string** |  | 
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminIdentitiesUnlinkRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## BlockUser

> BlockUserResponse BlockUser(ctx, orgId, userId).Execute()

Block a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.BlockUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.BlockUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `BlockUser`: BlockUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.BlockUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiBlockUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**BlockUserResponse**](BlockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateUser

> CreateUserResponse CreateUser(ctx, orgId).Execute()

Create a user

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
	resp, r, err := apiClient.AdminUsersAPI.CreateUser(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.CreateUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateUser`: CreateUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.CreateUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteUser

> DeleteUserResponse DeleteUser(ctx, orgId, userId).Execute()

Delete a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.DeleteUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.DeleteUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteUser`: DeleteUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.DeleteUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUser

> GetUserResponse GetUser(ctx, orgId, userId).Execute()

Get a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.GetUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.GetUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetUser`: GetUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.GetUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListUserGroups

> AdminGroupsGroupsGetRolesResponse ListUserGroups(ctx, orgId, userId).Execute()

List a user's groups

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.ListUserGroups(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.ListUserGroups``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListUserGroups`: AdminGroupsGroupsGetRolesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.ListUserGroups`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListUserGroupsRequest struct via the builder pattern


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


## ListUserPermissions

> AdminRolesGetPermissionsResponse ListUserPermissions(ctx, orgId, userId).Execute()

List a user's direct permissions

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.ListUserPermissions(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.ListUserPermissions``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListUserPermissions`: AdminRolesGetPermissionsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.ListUserPermissions`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListUserPermissionsRequest struct via the builder pattern


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


## ListUserRoles

> AdminGroupsGroupsGetRolesResponse ListUserRoles(ctx, orgId, userId).Execute()

List a user's roles

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.ListUserRoles(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.ListUserRoles``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListUserRoles`: AdminGroupsGroupsGetRolesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.ListUserRoles`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListUserRolesRequest struct via the builder pattern


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


## ListUsers

> ListUsersResponse ListUsers(ctx, orgId).Execute()

List users

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
	resp, r, err := apiClient.AdminUsersAPI.ListUsers(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.ListUsers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListUsers`: ListUsersResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.ListUsers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiListUsersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## MarkUserVerified

> MarkUserVerifiedResponse MarkUserVerified(ctx, orgId, userId).Execute()

Mark a user's email as verified

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.MarkUserVerified(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.MarkUserVerified``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `MarkUserVerified`: MarkUserVerifiedResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.MarkUserVerified`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiMarkUserVerifiedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**MarkUserVerifiedResponse**](MarkUserVerifiedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchUser

> UpdateUserResponse PatchUser(ctx, orgId, userId).Execute()

Update a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.PatchUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.PatchUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchUser`: UpdateUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.PatchUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveUserGroup

> RemoveUserGroupResponse RemoveUserGroup(ctx, orgId, userId, groupId).Execute()

Remove a user from a group

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
	userId := "userId_example" // string | 
	groupId := "groupId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.RemoveUserGroup(context.Background(), orgId, userId, groupId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.RemoveUserGroup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RemoveUserGroup`: RemoveUserGroupResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.RemoveUserGroup`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 
**groupId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRemoveUserGroupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**RemoveUserGroupResponse**](RemoveUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveUserPermission

> RemoveUserPermissionResponse RemoveUserPermission(ctx, orgId, userId, permissionId).Execute()

Remove a permission from a user

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
	userId := "userId_example" // string | 
	permissionId := "permissionId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.RemoveUserPermission(context.Background(), orgId, userId, permissionId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.RemoveUserPermission``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RemoveUserPermission`: RemoveUserPermissionResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.RemoveUserPermission`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 
**permissionId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRemoveUserPermissionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**RemoveUserPermissionResponse**](RemoveUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveUserRole

> RemoveUserRoleResponse RemoveUserRole(ctx, orgId, userId, roleId).Execute()

Remove a role from a user

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
	userId := "userId_example" // string | 
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.RemoveUserRole(context.Background(), orgId, userId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.RemoveUserRole``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RemoveUserRole`: RemoveUserRoleResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.RemoveUserRole`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiRemoveUserRoleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**RemoveUserRoleResponse**](RemoveUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ResetUserMfa

> ResetUserMfa(ctx, orgId, userId).Execute()

Reset MFA (removed)



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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.AdminUsersAPI.ResetUserMfa(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.ResetUserMfa``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiResetUserMfaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

 (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SendUserVerificationEmail

> SendUserVerificationEmailResponse SendUserVerificationEmail(ctx, orgId, userId).Execute()

Send a verification email

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.SendUserVerificationEmail(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.SendUserVerificationEmail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SendUserVerificationEmail`: SendUserVerificationEmailResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.SendUserVerificationEmail`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSendUserVerificationEmailRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SendUserVerificationEmailResponse**](SendUserVerificationEmailResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetUserPassword

> SetUserPasswordPostResponse SetUserPassword(ctx, orgId, userId).Execute()

Set a user's password

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.SetUserPassword(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.SetUserPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SetUserPassword`: SetUserPasswordPostResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.SetUserPassword`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSetUserPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetUserPasswordPost

> SetUserPasswordPostResponse SetUserPasswordPost(ctx, orgId, userId).Execute()

Set a user's password

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.SetUserPasswordPost(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.SetUserPasswordPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SetUserPasswordPost`: SetUserPasswordPostResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.SetUserPasswordPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiSetUserPasswordPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TriggerUserPasswordReset

> TriggerUserPasswordResetResponse TriggerUserPasswordReset(ctx, orgId, userId).Execute()

Send a password reset email

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.TriggerUserPasswordReset(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.TriggerUserPasswordReset``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TriggerUserPasswordReset`: TriggerUserPasswordResetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.TriggerUserPasswordReset`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTriggerUserPasswordResetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**TriggerUserPasswordResetResponse**](TriggerUserPasswordResetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UnblockUser

> UnblockUserResponse UnblockUser(ctx, orgId, userId).Execute()

Unblock a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.UnblockUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.UnblockUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UnblockUser`: UnblockUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.UnblockUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUnblockUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UnblockUserResponse**](UnblockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateUser

> UpdateUserResponse UpdateUser(ctx, orgId, userId).Execute()

Update a user

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.UpdateUser(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.UpdateUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateUser`: UpdateUserResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.UpdateUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateUserGroups

> UpdateUserGroupsResponse UpdateUserGroups(ctx, orgId, userId).Execute()

Replace a user's groups

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.UpdateUserGroups(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.UpdateUserGroups``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateUserGroups`: UpdateUserGroupsResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.UpdateUserGroups`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateUserGroupsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateUserGroupsResponse**](UpdateUserGroupsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateUserRoles

> UpdateUserRolesResponse UpdateUserRoles(ctx, orgId, userId).Execute()

Replace a user's roles

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
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminUsersAPI.UpdateUserRoles(context.Background(), orgId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminUsersAPI.UpdateUserRoles``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateUserRoles`: UpdateUserRolesResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminUsersAPI.UpdateUserRoles`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateUserRolesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**UpdateUserRolesResponse**](UpdateUserRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

