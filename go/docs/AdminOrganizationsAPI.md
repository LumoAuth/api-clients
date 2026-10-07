# \AdminOrganizationsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AdminOrgInvitationsCreate**](AdminOrganizationsAPI.md#AdminOrgInvitationsCreate) | **Post** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization
[**AdminOrgInvitationsList**](AdminOrganizationsAPI.md#AdminOrgInvitationsList) | **Get** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations
[**AdminOrgInvitationsResend**](AdminOrganizationsAPI.md#AdminOrgInvitationsResend) | **Post** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation
[**AdminOrgInvitationsRevoke**](AdminOrganizationsAPI.md#AdminOrgInvitationsRevoke) | **Delete** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation
[**AdminOrgMembersAdd**](AdminOrganizationsAPI.md#AdminOrgMembersAdd) | **Post** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization
[**AdminOrgMembersList**](AdminOrganizationsAPI.md#AdminOrgMembersList) | **Get** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members
[**AdminOrgMembersRemove**](AdminOrganizationsAPI.md#AdminOrgMembersRemove) | **Delete** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization
[**AdminOrgRolesCreate**](AdminOrganizationsAPI.md#AdminOrgRolesCreate) | **Post** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role
[**AdminOrgRolesDelete**](AdminOrganizationsAPI.md#AdminOrgRolesDelete) | **Delete** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role
[**AdminOrgRolesList**](AdminOrganizationsAPI.md#AdminOrgRolesList) | **Get** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles
[**AdminOrganizationsCreate**](AdminOrganizationsAPI.md#AdminOrganizationsCreate) | **Post** /orgs/{orgId}/api/v1/admin/organizations | Create an organization
[**AdminOrganizationsDelete**](AdminOrganizationsAPI.md#AdminOrganizationsDelete) | **Delete** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization
[**AdminOrganizationsGet**](AdminOrganizationsAPI.md#AdminOrganizationsGet) | **Get** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization
[**AdminOrganizationsList**](AdminOrganizationsAPI.md#AdminOrganizationsList) | **Get** /orgs/{orgId}/api/v1/admin/organizations | List organizations
[**PatchAdminOrgMembersUpdate**](AdminOrganizationsAPI.md#PatchAdminOrgMembersUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**PatchAdminOrgRolesUpdate**](AdminOrganizationsAPI.md#PatchAdminOrgRolesUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**PatchAdminOrganizationsUpdate**](AdminOrganizationsAPI.md#PatchAdminOrganizationsUpdate) | **Patch** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
[**PutAdminOrgMembersUpdate**](AdminOrganizationsAPI.md#PutAdminOrgMembersUpdate) | **Put** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**PutAdminOrgRolesUpdate**](AdminOrganizationsAPI.md#PutAdminOrgRolesUpdate) | **Put** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**PutAdminOrganizationsUpdate**](AdminOrganizationsAPI.md#PutAdminOrganizationsUpdate) | **Put** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization



## AdminOrgInvitationsCreate

> AdminOrgInvitationsCreateResponse AdminOrgInvitationsCreate(ctx, orgId, organizationId).Execute()

Invite a user to an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgInvitationsCreate(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgInvitationsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgInvitationsCreate`: AdminOrgInvitationsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgInvitationsCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgInvitationsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgInvitationsCreateResponse**](AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrgInvitationsList

> AdminOrgInvitationsListResponse AdminOrgInvitationsList(ctx, orgId, organizationId).Execute()

List organization invitations

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgInvitationsList(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgInvitationsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgInvitationsList`: AdminOrgInvitationsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgInvitationsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgInvitationsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgInvitationsListResponse**](AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrgInvitationsResend

> MessageResponse AdminOrgInvitationsResend(ctx, orgId, organizationId, invId).Execute()

Resend an invitation

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
	organizationId := "organizationId_example" // string | 
	invId := "invId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgInvitationsResend(context.Background(), orgId, organizationId, invId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgInvitationsResend``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgInvitationsResend`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgInvitationsResend`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**invId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgInvitationsResendRequest struct via the builder pattern


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


## AdminOrgInvitationsRevoke

> MessageResponse AdminOrgInvitationsRevoke(ctx, orgId, organizationId, invId).Execute()

Revoke an invitation

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
	organizationId := "organizationId_example" // string | 
	invId := "invId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgInvitationsRevoke(context.Background(), orgId, organizationId, invId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgInvitationsRevoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgInvitationsRevoke`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgInvitationsRevoke`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**invId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgInvitationsRevokeRequest struct via the builder pattern


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


## AdminOrgMembersAdd

> AdminOrgMembersAddResponse AdminOrgMembersAdd(ctx, orgId, organizationId).Execute()

Add a member to an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgMembersAdd(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgMembersAdd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgMembersAdd`: AdminOrgMembersAddResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgMembersAdd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgMembersAddRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgMembersAddResponse**](AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrgMembersList

> AdminOrgMembersListResponse AdminOrgMembersList(ctx, orgId, organizationId).Execute()

List organization members

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgMembersList(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgMembersList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgMembersList`: AdminOrgMembersListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgMembersList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgMembersListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgMembersListResponse**](AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrgMembersRemove

> MessageResponse AdminOrgMembersRemove(ctx, orgId, organizationId, userId).Execute()

Remove a member from an organization

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
	organizationId := "organizationId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgMembersRemove(context.Background(), orgId, organizationId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgMembersRemove``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgMembersRemove`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgMembersRemove`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgMembersRemoveRequest struct via the builder pattern


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


## AdminOrgRolesCreate

> AdminOrgRolesCreateResponse AdminOrgRolesCreate(ctx, orgId, organizationId).Execute()

Create an organization role

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgRolesCreate(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgRolesCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgRolesCreate`: AdminOrgRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgRolesCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgRolesCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrgRolesDelete

> MessageResponse AdminOrgRolesDelete(ctx, orgId, organizationId, roleId).Execute()

Delete an organization role

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
	organizationId := "organizationId_example" // string | 
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgRolesDelete(context.Background(), orgId, organizationId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgRolesDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgRolesDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgRolesDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgRolesDeleteRequest struct via the builder pattern


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


## AdminOrgRolesList

> AdminOrgRolesListResponse AdminOrgRolesList(ctx, orgId, organizationId).Execute()

List organization roles

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrgRolesList(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrgRolesList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrgRolesList`: AdminOrgRolesListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrgRolesList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrgRolesListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrgRolesListResponse**](AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrganizationsCreate

> AdminOrganizationsCreateResponse AdminOrganizationsCreate(ctx, orgId).Execute()

Create an organization

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
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrganizationsCreate(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrganizationsCreate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrganizationsCreate`: AdminOrganizationsCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrganizationsCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrganizationsCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminOrganizationsCreateResponse**](AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrganizationsDelete

> MessageResponse AdminOrganizationsDelete(ctx, orgId, organizationId).Execute()

Delete an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrganizationsDelete(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrganizationsDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrganizationsDelete`: MessageResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrganizationsDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrganizationsDeleteRequest struct via the builder pattern


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


## AdminOrganizationsGet

> AdminOrganizationsGetResponse AdminOrganizationsGet(ctx, orgId, organizationId).Execute()

Get an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrganizationsGet(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrganizationsGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrganizationsGet`: AdminOrganizationsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrganizationsGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrganizationsGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AdminOrganizationsList

> AdminOrganizationsListResponse AdminOrganizationsList(ctx, orgId).Execute()

List organizations

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
	resp, r, err := apiClient.AdminOrganizationsAPI.AdminOrganizationsList(context.Background(), orgId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.AdminOrganizationsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AdminOrganizationsList`: AdminOrganizationsListResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.AdminOrganizationsList`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAdminOrganizationsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AdminOrganizationsListResponse**](AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminOrgMembersUpdate

> PutAdminOrgMembersUpdateResponse PatchAdminOrgMembersUpdate(ctx, orgId, organizationId, userId).Execute()

Update a member's role or status

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
	organizationId := "organizationId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PatchAdminOrgMembersUpdate(context.Background(), orgId, organizationId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PatchAdminOrgMembersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminOrgMembersUpdate`: PutAdminOrgMembersUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PatchAdminOrgMembersUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminOrgMembersUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminOrgRolesUpdate

> AdminOrgRolesCreateResponse PatchAdminOrgRolesUpdate(ctx, orgId, organizationId, roleId).Execute()

Update an organization role

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
	organizationId := "organizationId_example" // string | 
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PatchAdminOrgRolesUpdate(context.Background(), orgId, organizationId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PatchAdminOrgRolesUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminOrgRolesUpdate`: AdminOrgRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PatchAdminOrgRolesUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminOrgRolesUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchAdminOrganizationsUpdate

> AdminOrganizationsGetResponse PatchAdminOrganizationsUpdate(ctx, orgId, organizationId).Execute()

Update an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PatchAdminOrganizationsUpdate(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PatchAdminOrganizationsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchAdminOrganizationsUpdate`: AdminOrganizationsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PatchAdminOrganizationsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchAdminOrganizationsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminOrgMembersUpdate

> PutAdminOrgMembersUpdateResponse PutAdminOrgMembersUpdate(ctx, orgId, organizationId, userId).Execute()

Update a member's role or status

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
	organizationId := "organizationId_example" // string | 
	userId := "userId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PutAdminOrgMembersUpdate(context.Background(), orgId, organizationId, userId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PutAdminOrgMembersUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminOrgMembersUpdate`: PutAdminOrgMembersUpdateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PutAdminOrgMembersUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**userId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminOrgMembersUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminOrgRolesUpdate

> AdminOrgRolesCreateResponse PutAdminOrgRolesUpdate(ctx, orgId, organizationId, roleId).Execute()

Update an organization role

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
	organizationId := "organizationId_example" // string | 
	roleId := "roleId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PutAdminOrgRolesUpdate(context.Background(), orgId, organizationId, roleId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PutAdminOrgRolesUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminOrgRolesUpdate`: AdminOrgRolesCreateResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PutAdminOrgRolesUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 
**roleId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminOrgRolesUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutAdminOrganizationsUpdate

> AdminOrganizationsGetResponse PutAdminOrganizationsUpdate(ctx, orgId, organizationId).Execute()

Update an organization

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
	organizationId := "organizationId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AdminOrganizationsAPI.PutAdminOrganizationsUpdate(context.Background(), orgId, organizationId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AdminOrganizationsAPI.PutAdminOrganizationsUpdate``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutAdminOrganizationsUpdate`: AdminOrganizationsGetResponse
	fmt.Fprintf(os.Stdout, "Response from `AdminOrganizationsAPI.PutAdminOrganizationsUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**orgId** | **string** |  | 
**organizationId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutAdminOrganizationsUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

