Feature: Assisted Portal Regression Scenarios

@TestCaseKey=UDB-T32178
Scenario Outline: Verify "Application Form List"  API "POST" Method for Status code 400 if Request body is blank
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with parameters <amountFrom> and <amountTo> and <requestBody>
Then user verifies that status is 400

Examples:
|env|service |endpoint              |amountFrom|amountTo|requestBody|
|assignment|webform |/application-form-list|0.00      |50000.00|\src\test\resources\testdata\api\request\mvp\assistedportal\Application_Form_List_Blankbody.json|

@TestCaseKey=UDB-T32179
Scenario Outline: Verify "Application Form List"  API "POST" Method for Status code 400 if Request body is  having invalid JSON
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with parameters <amountFrom> and <amountTo> and <requestBody>
Then user verifies that status is 400

Examples:
|env|service |endpoint              |amountFrom|amountTo|requestBody|
|assignment|webform |/application-form-list|0.00      |50000.00|\src\test\resources\testdata\api\request\mvp\assistedportal\Application_Form_List_InvalidJson.json|

@TestCaseKey=UDB-T32180
Scenario Outline: Verify "Application Form List"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with parameters <amountFrom> and <amountTo> and <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service |endpoint              |amountFrom|amountTo|requestBody|responseBody|
|assignment|webform |/application-form|0.00      |50000.00|\src\test\resources\testdata\api\request\mvp\assistedportal\Application_Form_List.json|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Application_Form_List_InvalidEndPoint_Response.json|

@TestCaseKey=UDB-T32181
Scenario Outline: Verify "Save last login details" API "POST" Method for Status code 400 if Request body is blank - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|env|service  |endpoint                      |requestBody                                                                           | responseBody|
|assignment|weblogin |/save-last-login-details		 |\src\test\resources\testdata\api\request\mvp\assistedportal\SaveLastLoginDetails_Blankbody.json |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SaveLastLoginDetails_Blankbody_Response.json|

@TestCaseKey=UDB-T32182
Scenario Outline: Verify "Save last login details" API "POST" Method for Status code 400 if Request body is  having invalid JSON - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|env|service  |endpoint                      |requestBody                                                                           | responseBody|
|assignment|weblogin |/save-last-login-details		 |\src\test\resources\testdata\api\request\mvp\assistedportal\SaveLastLoginDetails_InvalidJson.json |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SaveLastLoginDetails_InvalidJson_Response.json|

@TestCaseKey=UDB-T32183
Scenario Outline: Verify "Save last login details" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service  |endpoint                      |requestBody                                                                           | responseBody|
|assignment|weblogin |/save-last-login		 |\src\test\resources\testdata\api\request\mvp\assistedportal\SaveLastLoginDetails.json |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SaveLastLoginDetails_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32184
Scenario Outline: Verify "Login Details Based on Solid" API "GET" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with query and path parameters <amountFrom> and <amountTo> and <solid> 
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint |amountFrom|amountTo|solid|responseBody|
|assignment|weblogin     |/branc  |0.00      |751000.00|68010|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\BranchLoginDetails_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32185
Scenario Outline: Verify "Assign to branch" API "POST" Method for Status code 400 if Request body is blank -Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|env|service |endpoint               |requestBody                                                                           | responseBody|
|assignment|webform     |/assign-to-branch		 |\src\test\resources\testdata\api\request\mvp\assistedportal\AssignToBranch_Blankbody.json|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignToBranch_Blankbody_Response.json|

@TestCaseKey=UDB-T32186
Scenario Outline: Verify "Assign to branch" API "POST" Method for Status code 400 if Request body is  having invalid JSON - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|env|service |endpoint               |requestBody                                                                           | responseBody|
|assignment|webform     |/assign-to-branch		 |\src\test\resources\testdata\api\request\mvp\assistedportal\AssignToBranch_InvalidJson.json|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignToBranch_InvalidJson_Response.json|

@TestCaseKey=UDB-T32187
Scenario Outline: Verify "Assign to branch" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service |endpoint               |requestBody                                                                           | responseBody|
|assignment|webform     |/assign-to		 |\src\test\resources\testdata\api\request\mvp\assistedportal\AssignToBranch.json|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignToBranch_InvalidEndpoint_Response.json|



  @TestCaseKey=UDB-T32188
  Scenario Outline: Verify "Form Consent Approve" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL
    Given environment of endpoint for Assisted Portal <env>
    Given user set the basepath to <service>
    Then set the endpoint <endpoint>
    Then user triggers a generic post request with parameters:
      | key           | value                   |
      | requestId     | 442630823               |
      | consentStatus | approvepractice         |
    Then user verifies that status is 404
    Then user verifies json from <responseBody>

    Examples:
      | env     | service | endpoint  | responseBody  |
      | consent | consent | /consent  | \src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentApprove_InvalidEndpoint_Response.json |


@TestCaseKey=UDB-T32188
Scenario Outline: Verify "Form Consent Approve"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestId|consentStatus|responseBody|
|consent|consent  |/consent      |442630823   |approvepractice      |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentApprove_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32189
Scenario Outline: Verify "Form Consent Reject"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestId|consentStatus|responseBody|
|consent|consent      |/consent	          |442630823   |rejectpractice|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentReject_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32190
Scenario Outline: Verify "Form Consent Review"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter post request <requestId> and <consentStatus>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestId|consentStatus|responseBody|
|consent|consent      |/consent		          |4426308423   |previewdemo     |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentPreview_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32191
Scenario Outline: Verify "Form Consent"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |requestBody |responseBody|
|consent|consent      |/consen/4426308423       |\src\test\resources\testdata\api\request\mvp\assistedportal\ConsentService.json |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentService_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32192
Scenario Outline: Verify "Consent Status"  API "Get" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter get request <requestId>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               			|requestId    |responseBody|
|consent|consent      |/getStatusByConsentRequest	|442630823   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentStatus_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32193
Scenario Outline: Verify "Consent Details based on Journey, Sub journey and Application Number"  API "Get" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a path parameter get request <applicationNum>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               			|applicationNum|responseBody|
|consent|consent      |/consentDetai/BFF/FD	        |852300   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ConsentDetails_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32194
Scenario Outline: Verify "Branch Manager Assignment View" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/branch-manager/assignment-vi		    |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\BMAssignmentView_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32195
Scenario Outline: Verify "Branch Manager Assignment View" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/branch-manager/assignment-view		    |basicerror       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\BMAssignmentView_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32196
Scenario Outline: Verify "Reports" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint         |requestType  |responseBody|
|dashboard|dashboard    |/reportsssss	    |basic        |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Reports_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32197
Scenario Outline: Verify "Reports" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint         |requestType  |responseBody|
|dashboard|dashboard    |/reports		    |basicerror        |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Reports_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32198
Scenario Outline: Verify "User Notification" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                 |requestType  |solid|responseBody|
|dashboard|dashboard    |/usernotificati	    |pathparam   |68010|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UserNotification_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32199
Scenario Outline: Verify "User Notification" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Failed (actual api is not working)
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                 |requestType  |solid|responseBody|
|dashboard|dashboard    |/usernotification	    |pathparamerror    |68010|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UserNotification_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32200
Scenario Outline: Verify "Assignment View"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/assignment-vi	                    |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignmentView_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32201
Scenario Outline: Verify "Assignment View"  API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType  |responseBody|
|dashboard|dashboard    |/assignment-view		                    |basicerror      |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\AssignmentView_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32202
Scenario Outline: Verify "List Application Form"  API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
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
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                   |responseBody|
|dashboard|dashboard    |/list-application-    |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\ListApplicationForm_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32203
Scenario Outline: Verify "Global Search" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint                                 |requestType     |solid|responseBody|
|dashboard|dashboard    |/global-sea	                    |pathparam       |9595381994|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GlobalSearch_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32204
Scenario Outline: Verify "Global Search" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                                 |requestType     |solid|responseBody|
|dashboard|dashboard    |/global-search		                    |pathparamerror       |9595381994|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\GlobalSearch_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32205
Scenario Outline: Verify "Summary View" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint       |requestType     |responseBody|
|dashboard|dashboard    |/summary-vi  |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SummaryView_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32206
Scenario Outline: Verify "Summary View" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint       |requestType     |responseBody|
|dashboard|dashboard    |/summary-view  |basicerror      |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\SummaryView_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32207
Scenario Outline: Verify "Unassigned Forms" API "POST" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|env|service        |endpoint         |requestType |responseBody|
|dashboard|dashboard|/unassigned-for  |basic       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UnAssignedForms_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32208
Scenario Outline: Verify "Unassigned Forms" API "POST" Method for Status code 500 if HTTP metod is other than POST  for Eg: GET, PUT, Delete - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for dashboard service <requestType> and <solid>
Then user verifies that status is 500
Then user verifies json from <responseBody>


Examples:
|env|service      |endpoint       |requestType     |responseBody|
|dashboard|dashboard    |/unassigned-forms  |basicerror       |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UnAssignedForms_InvalidHTTPMethod_Response.json|

@TestCaseKey=UDB-T32209
Scenario Outline: Verify "User Details" API "GET" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for dashboard service
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint               |responseBody|
|dashboard|dashboard    |/branch/user-deta   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\UserDetails_InvalidEndpoint_Response.json|

@TestCaseKey=UDB-T32210
Scenario Outline: Verify "Journey progress master" API "GET" Method for Status code 404 "Not Found" if we pass invalid endpoint URL - Passed
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for dashboard service
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|env|service      |endpoint                   |responseBody|
|dashboard|dashboard    |/journey-progress-mas   |\src\test\resources\testdata\api\response\expected\mvp\assistedportal\JourneyProgressMaster_InvalidEndpoint_Response.json|
