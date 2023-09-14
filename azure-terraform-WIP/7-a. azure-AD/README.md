noterraformsecret   [value] ZSd8Q~3c2tMLsenFHcSc_v-2Mc6zAbUCdFLjbdhi     [SecretID] 0310727f-a771-40b4-99a4-3760a568d56f

# AZURE Active Directory
Azure AD is becoming Microsoft [Entra ID]. 
Azure Active Directory (Azure AD), part of Microsoft Entra, is an enterprise identity service that provides single sign-on, multifactor authentication, and conditional access.

## What is the heirarchy of Azure AD?
Azure AD consists of tenants, directories, and objects. Here's the hierarchy:

1. ***Azure Tenant (Azure AD Tenant):***
 At the top of the hierarchy is the Azure tenant, which represents your organization's instance in Azure. When you sign up for Azure, you create a tenant. Each tenant is identified by a unique domain name like cafanwii.onmicrosoft.com. You can also add custom domains.

2. ***Azure AD Directory (Directory):*** Within each Azure tenant, you can have multiple Azure AD directories. A directory is a separate instance of Azure AD and serves as a security and administrative boundary. It's like a "container" for Azure AD objects (users, groups, apps, etc.). By default, when you create an Azure tenant, it comes with one Azure AD directory, often referred to as the "default directory."

3. ***Azure AD Objects:*** Within an Azure AD directory, you have various types of objects, including:

    ***Users:*** Represent individuals who can sign in and use Azure AD-integrated apps and services.
    ***Groups:*** Used for organizing users and managing access to resources. There are security groups, distribution groups, and Office 365 groups.
    ***Applications (Service Principals):*** Represent apps or services registered in Azure AD for single sign-on (SSO) or authentication purposes.
    ***Devices:*** Represent devices that can join Azure AD for management and authentication.
    ***Roles:*** Used for assigning permissions within Azure AD and other Azure services.
    ***Settings:*** Various settings that configure Azure AD behavior and policies.

## Capabilities of azure Active Directory 

1. Identity and Access Management:

  - Single Sign-On (SSO): Azure AD provides seamless SSO for thousands of cloud applications, allowing users to sign in once and access multiple applications without the need to re-enter credentials.
  - Multi-Factor Authentication (MFA): Enhance security by requiring multiple forms of verification before granting access.
  - Conditional Access: Define policies that determine access based on specific conditions, such as user location, device health, and more.
  - Self-Service Password Reset: Users can reset their passwords without IT assistance, reducing helpdesk calls.
  - Identity Protection: Detect and mitigate identity-based security risks using adaptive policies.

2. User and Group Management:

  - User Provisioning and Deprovisioning: Automate the creation and removal of user accounts.
  - Group Management: Create, manage, and assign permissions to security and distribution groups.
  - Dynamic Groups: Automatically assign users to groups based on rules and attributes.

3. Device Management:

  - Azure AD Join: Register devices with Azure AD for simplified management and secure access.
  - Mobile Device Management (MDM): Integrate with Microsoft Intune for managing mobile devices.
  - Device Conditional Access: Apply access policies based on device health and compliance.

4. Application Management:

  - App Registration: Register custom applications for secure access to Azure AD.
  - Enterprise Application Gallery: Access pre-integrated applications from Microsoft and third-party vendors.
  - App Proxy: Publish and secure on-premises web applications for remote access.

5. Identity Federation:

  - Azure AD B2B: Collaborate with external partners by inviting guest users into your organization.
  - Azure AD B2C: Create identity experiences for external customers, providing features like social identity providers and self-service profile management.

6. Security and Monitoring:

  - Security Center Integration: Integrate with Azure Security Center for threat detection and protection.
  - Azure AD Identity Protection: Detect and respond to identity-based risks.
  - Audit and Sign-In Logs: Monitor user and administrator activities.

7. Hybrid Identity:

  - Azure AD Connect [***Important***]: Synchronize on-premises Active Directory with Azure AD for a unified identity and access management experience.
  - Password Hash Synchronization (PHS) and Pass-through Authentication (PTA): Securely authenticate on-premises users in the cloud.

8. Customization and Branding:

  - Customized Sign-In Pages: Create branded sign-in and access panels for a consistent user experience.
  - User Attributes: Extend user profiles with custom attributes to support specific business needs.

9. APIs and Development Tools:

  - Graph API: Access and manage Azure AD resources programmatically.
  - Azure AD PowerShell: Automate Azure AD tasks using PowerShell scripts.
  - Azure AD SDKs: Develop applications that integrate with Azure AD using various SDKs.


  # DEMO
  - Setup an AD Account (theres a default when you signup)
  - Create a Tenant (manage tenants --> create --> Azure Active Directory)
    - Organization name --> cafanwiorganization
    - Initial domain name --> cafanwidomain.onmicrosoft.com
  - Create a user
  
  - create a subscription for the tenant
  
  ## App registration
    - Endpoints

