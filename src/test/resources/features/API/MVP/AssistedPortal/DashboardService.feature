Feature: Assisted Portal flow - Dashboard Service

@TestCaseKey=UDB-T31270
Scenario Outline: Verify Branch Managers Assignment view on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/branch-manager/assignment-view		    |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\BMAssignmentView.json|


@TestCaseKey=UDB-T31271
Scenario Outline: Verify the reports on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint         |requestType  |responseBody|
|dashboard|dashboard    |/reports		    |basic        |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Reports.json|

@TestCaseKey=UDB-T31272
Scenario Outline: Verify the user notifications on Dashboard using solid
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200

Examples:
|env|service      |endpoint                 |requestType  |solid|
|dashboard|dashboard    |/usernotification	    |pathparam    |68010|

@TestCaseKey=UDB-T31273
Scenario Outline: Verify Assignment view on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/assignment-view		                    |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignmentView.json|

@TestCaseKey=UDB-T31274
Scenario Outline: Verify to view list of application forms with different filters on Dashboard page
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then multiple filters on dashboard page 
|Open|
|PL|
|LENDING|
|0|
|2000|
|50|
|DITIBM004WW8|
|2000000|
|1|
|UNASSIGNED|
|INITIALIZED|
Then user verifies that status is 200

Examples:
|env|service      |endpoint                   |
|dashboard|dashboard    |/list-application-form     |

@TestCaseKey=UDB-T31275
Scenario Outline: Verify global search on Dashboard using mobile number
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType     |solid|responseBody|
|dashboard|dashboard    |/global-search		                    |pathparam       |9595381994|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GlobalSearch_Response.json|

@TestCaseKey=UDB-T31276
Scenario Outline: Verify Summary view on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint       |requestType     |responseBody|
|dashboard|dashboard    |/summary-view  |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SummaryView.json|

@TestCaseKey=UDB-T31277
Scenario Outline: Verify Unassigned forms on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint       |requestType     |responseBody|
|dashboard|dashboard    |/unassigned-forms  |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UnAssignedForms_Response.json|

@TestCaseKey=UDB-T31278
Scenario Outline: Verify Get Branch user details on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for dashboard service
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |responseBody|
|dashboard|dashboard    |/branch/user-details   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GetUserDetails.json|

@TestCaseKey=UDB-T31279
Scenario Outline: Verify Get journey progress master details on Dashboard
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for dashboard service
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                   |responseBody|
|dashboard|dashboard    |/journey-progress-master   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\JourneyProgressMaster.json|