Feature: Assisted Portal flow - Assignment Service

@TestCaseKey=UDB-T31258
Scenario Outline: Verify get application form details based on amount range using solid
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with parameters <amountFrom> and <amountTo> and <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|env|service |endpoint              |amountFrom|amountTo|requestBody|responseBody|
|assignment|webform |/application-form-list|0.00      |50000.00|src\test\resources\testdata\api\request\mvp\assistedportal\Application_Form_List.json|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\Application_Form_List_Response.json|

@TestCaseKey=UDB-T31259
Scenario Outline: Verify users save last login details
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 200


Examples:
|env|service  |endpoint                      |requestBody                                                                           | 
|assignment|weblogin |/save-last-login-details		 |\src\test\resources\testdata\api\request\mvp\assistedportal\SaveLastLoginDetails.json | 

@TestCaseKey=UDB-T31260
Scenario Outline: Verify to get branch details based on amount range using solid
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends a post request with query and path parameters <amountFrom> and <amountTo> and <solid> 
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|env|service      |endpoint |amountFrom|amountTo|solid|responseBody|
|assignment|weblogin     |/branch  |0.00      |751000.00|68010|\src\test\resources\testdata\api\response\expected\mvp\assistedportal\BranchLoginDetails.json|

@TestCaseKey=UDB-T31261
Scenario Outline: Verify user is assigning to branch using solid and id
Given environment of endpoint for Assisted Portal <env>
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request for assisted portal <requestBody>
Then user verifies that status is 200


Examples:
|env|service |endpoint               |requestBody                                                                           | 
|assignment|webform     |/assign-to-branch		 |\src\test\resources\testdata\api\request\mvp\assistedportal\AssignToBranch.json       |

#@TestCaseKey=UDB-T31262
#Scenario Outline: Verify fetch last login details for the solid
#Given environment of endpoint for Assisted Portal <env>
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a path parameter get request <solid>
#Then user verifies that status is 200
#Examples:
#|env|service      |endpoint                        |solid|
#|assignment|webform      |/fetch-last-login-details	   |12062   |

