# Feature: FD RD API
# Author: Sampada Wadkar
# Description: Regression Testing : FD RD API
# Test Environment: SIT
# Preconditions: FD RD API should be up and running

Feature: Regression of FD-RD
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/fdrd

@TestCaseKey=UDB-T7628 @Regression
Scenario Outline: Verify get customer cif api returns 404 response with invalid Mandatory cif field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then update Jira status based on test result

Examples:
|service |endpoint        	|requestBody																															|responseBody|
|customer|/getCustomerByCIF1	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_invalidcif.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_404Response.json|


@TestCaseKey=UDB-T7630 @Regression
Scenario Outline: Verify get customer cif api returns 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
Then user triggers a post request without body
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint     |requestBody				|responseBody|
|cu|/getCustomerByCIF	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7629 @Regression
Scenario Outline: Verify get customer cif api returns 400 response with missing Mandatory cif field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																|responseBody|			
|customer|/getCustomerByCIF	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_blankCIF.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetCust400.json|


@TestCaseKey=UDB-T7634 @Regression
Scenario Outline: Verify get customer account details with if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody 																|responseBody|			
|customer|/getCustomerAccounts	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_blankCIF.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetCust400.json|

@TestCaseKey=UDB-T7636 @Regression
Scenario Outline: Verify get customer account details with with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody 																|responseBody|			
|customer|/getCustomerAccounts	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_blankCIF.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetCust400.json|
 
@TestCaseKey=UDB-T7635 @Regression
Scenario Outline: Verify get customer account details with 404 for invalid Mandatory cif field and missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user triggers a get request with parameter <cif>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|cif|	requestBody 			|responseBody|			
|customer|/getCustomerAccounts1	|2005946706|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_invalidcif.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_404Response.json|

@TestCaseKey=UDB-T7637 @Regression
Scenario Outline: Verify post customer accounts api returns 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500


Examples:
|service |endpoint            |	requestBody				|responseBody|
|de			|/getCustomerAccounts |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


@TestCaseKey=UDB-T7641 @Regression
Scenario Outline: Verify get CASA accounts with if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																																				|responseBody|			
|customer|/getCASAAccounts	|\src\test\resources\testdata\api\request\mvp\fdrd\getCASAAccountsRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\getMaturityDetailsRequest400.json|

@TestCaseKey=UDB-T7643 @Regression
Scenario Outline: Verify get CASA accounts with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																																				|responseBody|			
|customer|/getCASAAccounts	|\src\test\resources\testdata\api\request\mvp\fdrd\getCASAAccountsRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\getMaturityDetailsRequest400.json|

@TestCaseKey=UDB-T7642 @Regression
Scenario Outline: Verify get CASA account with 404 for invalid Mandatory cif and missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user triggers a get request with parameter <cif>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint          	|cif|requestBody|responseBody|						
|customer|/getCASAAccounts1		|2005946706|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_invalidcif.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_404Response.json|

@TestCaseKey=UDB-T7644 @Regression
Scenario Outline: Verify get CASA account returns 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint    |cif|requestBody				|responseBody|					
|de|/getCASAAccounts	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7655 @Regression
Scenario Outline: Verify get Maturity Details with if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody 																																					|responseBody|			
|deposits|/getMaturityDetails	|\src\test\resources\testdata\api\request\mvp\fdrd\getMaturityDetailsRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\getMaturityDetailsresponse400.json|


@TestCaseKey=UDB-T7657 @Regression
Scenario Outline: Verify get Maturity Details with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody 																																					|responseBody|			
|deposits|/getMaturityDetails	|\src\test\resources\testdata\api\request\mvp\fdrd\getMaturityDetailsRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\getMaturityDetailsresponse400.json|

@TestCaseKey=UDB-T7656 @Regression
Scenario Outline: Verify get Maturity Details with 404 for invalid Mandatory cif
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user triggers a get request with parameter <cif>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|cif|requestBody| responseBody|							
|customer|/getMaturityDetails1	|2005946706|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_invalidcif.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_404Response.json|

@TestCaseKey=UDB-T7658 @Regression
Scenario Outline: Verify get Maturity Details returns 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint      |cif|requestBody				|responseBody|						
|de|/getMaturityDetails	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


@TestCaseKey=UDB-T7662 @Regression
Scenario Outline: Verify save term deposit with if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/saveTermDeposit	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7664 @Regression
Scenario Outline: Verify save term deposit with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/saveTermDeposit	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7663 @Regression
Scenario Outline: Verify save term deposit with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody				|responseBody|	
|customer|/saveTermDeposit1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7665 @Regression
Scenario Outline: Verify save term deposit with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint    |cif	|requestBody				|responseBody|					
|de|/saveTermDeposit	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7669 @Regression
Scenario Outline: Verify get journey state if the input is not available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/getTDJournyState	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7671 @Regression
Scenario Outline: Verify get journey state with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/getTDJournyState	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7670 @Regression
Scenario Outline: Verify get journey state with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody				|responseBody|	
|customer|/getTDJournyState	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7672 @Regression
Scenario Outline: Verify get journey state with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint      |cif|	requestBody				|responseBody|					
|de|/getTDJournyState		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7676 @Regression
Scenario Outline: Verify get TD details to resume with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/getTDDetailsToResume	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7678 @Regression
Scenario Outline: Verify get TD details to resume with 400 with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/getTDDetailsToResume	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7677 @Regression
Scenario Outline: Verify get TD details to resume with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody				|responseBody|	
|customer|/getTDDetailsToResume1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7679 @Regression
Scenario Outline: Verify get TD details to resume with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint          	|cif|requestBody				|responseBody|					
|de|/getTDDetailsToResume		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7683 @Regression
Scenario Outline: Verify open term deposit with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody|			
|deposits|/openTermDeposit	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7685 @Regression
Scenario Outline: Verify open term deposit with 400 with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																		|responseBody |			
|deposits|/openTermDeposit	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|


@TestCaseKey=UDB-T7684 @Regression
Scenario Outline: Verify open term deposit with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody|responseBody|	
|customer|/openTermDeposit1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7686 @Regression
Scenario Outline: Verify open term deposit with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint        |cif|requestBody|responseBody|		
|de|/openTermDeposit		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


@TestCaseKey=UDB-T7690 @Regression
Scenario Outline: Verify get TD Status with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      |requestBody 																																|responseBody |			
|deposits|/getTDStatus	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7692 @Regression
Scenario Outline: Verify get TD Status with 400 with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      |requestBody 																																|responseBody |			
|deposits|/getTDStatus	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|


@TestCaseKey=UDB-T7691 @Regression
Scenario Outline: Verify get TD Status with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody				|responseBody |	
|customer|/getTDStatus1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7693 @Regression
Scenario Outline: Verify get TD Status with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint  |cif|	requestBody				|responseBody|			
|de|/getTDStatus		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


@TestCaseKey=UDB-T7704 @Regression
Scenario Outline: Verify get get TD Details with 400 if the input is not available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      |requestBody 																																|responseBody |			
|customer|/getTDDetails	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7706 @Regression
Scenario Outline: Verify get get TD Details with 400 with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      |requestBody 																																|responseBody |			
|customer|/getTDDetails	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7705 @Regression
Scenario Outline: Verify get TD Details with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody				|responseBody |	
|deposits|/getTDDetails1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7707 @Regression
Scenario Outline: Verify get TD Details with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint  |cif|requestBody				|responseBody|		
|de|/getTDDetails		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7711 @Regression
Scenario Outline: Verify get TD Transactions with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/getTDTransactions	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7713 @Regression
Scenario Outline: Verify get TD Transactions with 400 with missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/getTDTransactions	|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7712 @Regression
Scenario Outline: Verify get TD Transactions with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody |	
|customer|/getTDTransactions1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7714 @Regression
Scenario Outline: Verify get TD Transactions with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint         |cif|requestBody				|responseBody|				
|de|/getTDTransactions		|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7718 @Regression
Scenario Outline: Verify download TD Certificate with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/downloadTDCertificate|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7720 @Regression
Scenario Outline: Verify download TD Certificate with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/downloadTDCertificate|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7719 @Regression
Scenario Outline: Verify download TD Certificate with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody |	
|customer|/downloadTDCertificate1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7721 @Regression
Scenario Outline: Verify download TD Certificate with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint          		|cif|requestBody				|responseBody|				
|de|/downloadTDCertificate	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7725 @Regression
Scenario Outline: Verify download statement with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/downloadStatement|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7727 @Regression
Scenario Outline: Verify download statement with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/downloadStatement|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7726 @Regression
Scenario Outline: Verify download statement with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody |	
|customer|/downloadStatement1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7728 @Regression
Scenario Outline: Verify download statement with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint          		|cif|requestBody				|responseBody|			
|de|/downloadStatement	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7730 @Regression
Scenario Outline: Verify download interest certificate with 400 if the input is not available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|deposits|/downloadInterestCertificate|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7732 @Regression
Scenario Outline: Verify download interest certificate with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|deposits|/downloadInterestCertificate|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|


@TestCaseKey=UDB-T7731 @Regression
Scenario Outline: Verify download interest certificate with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody |	
|customer|/downloadInterestCertificate1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7733 @Regression
Scenario Outline: Verify download interest certificate with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint          		|cif|requestBody				|responseBody|		
|de|/downloadInterestCertificate	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7746 @Regression
Scenario Outline: Verify get Customer KYC status with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|customer|/getCustKycStatus|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7748 @Regression
Scenario Outline: Verify get Customer KYC status with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|customer|/getCustKycStatus|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7747 @Regression
Scenario Outline: Verify get Customer KYC status with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|	responseBody |	
|deposits|/getCustKycStatus1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7749 @Regression
Scenario Outline: Verify get Customer KYC status with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint    |cif|requestBody				|responseBody|			
|de|/getCustKycStatus	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7753 @Regression
Scenario Outline: Verify get CASA account details with 400 if the input is not available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|customer|/getCASAAccountDetails|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7755 @Regression
Scenario Outline: Verify get CASA account details with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|customer|/getCASAAccountDetails|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7756 @Regression
Scenario Outline: Verify get CASA account details with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody|	
|deposits|/getCASAAccountDetails1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7757 @Regression
Scenario Outline: Verify get CASA account details with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint          		|cif|	requestBody				|responseBody|			
|de|/getCASAAccountDetails	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


@TestCaseKey=UDB-T7739 @Regression
Scenario Outline: Verify email statement with 400 if the input is not available in request body 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/emailStatement| \src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7741 @Regression
Scenario Outline: Verify email statement with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody|			
|deposits|/emailStatement|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|


@TestCaseKey=UDB-T7740 @Regression
Scenario Outline: Verify email statement with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody|	
|customer|/emailStatement1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7742 @Regression
Scenario Outline: Verify email statement with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint   |cif|	requestBody				|responseBody|			
|de|/emailStatement	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|

@TestCaseKey=UDB-T7697 @Regression
Scenario Outline: Verify close term deposits with 400 if the input is not available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/closeTermDeposit| \src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7699 @Regression
Scenario Outline: Verify close term deposits with 400 for missing Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint      		|requestBody 																																|responseBody |			
|deposits|/closeTermDeposit|\src\test\resources\testdata\api\request\mvp\fdrd\getTDstatus_request400.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7698 @Regression
Scenario Outline: Verify close term deposits with 404 for invalid Mandatory field
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          	|requestBody						|responseBody |	
|customer|/closeTermDeposit1	|\src\test\resources\testdata\api\request\mvp\fdrd\savetermdepositRequest400.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\savetermdepositresponse400.json|

@TestCaseKey=UDB-T7700 @Regression
Scenario Outline: Verify close term deposits with 500 response with Internal server Error
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request without body
Then user verifies that status is 500

Examples:
|service |endpoint    |cif	|requestBody				|responseBody|				
|de|/closeTermDeposit	|<cif>|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Requestblank.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_500Error.json|


#Verify Normal citizen is able to open RD with 6 Months tenure sucessfully

@TestCaseKey=UDB-T34254
@E2E @TestdataE2E
Scenario Outline: Verify get maturity details for Normal citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		|bearertokenPath	|cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |src\test\resources\testdata\api\response\expected\mvp\login\mblogin.json|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_Normal_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_Normal_GetMaturityDetails.json|



@TestCaseKey=UDB-T34254
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for Normal citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      |bearertokenPath| cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|src\test\resources\testdata\api\response\expected\mvp\login\mblogin.json|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_saveTermDeposit.json|	maturityAmount,depositAmountinterestRate,depositTerm| maturityAmount,depositAmountinterestRate,depositTerm|	RD_Normal_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_saveTermDeposit.json|


@TestCaseKey=UDB-T34254
@E2E @TestdataE2E
Scenario Outline: Verify get TD journey state for Normal citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         	|bearertokenPath	| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 |src\test\resources\testdata\api\response\expected\mvp\login\mblogin.json	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDJournyState.json|


@TestCaseKey=UDB-T34254
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Normal citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        |bearertokenPath|cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|src\test\resources\testdata\api\response\expected\mvp\login\mblogin.json|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|RD_ReqNormal_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_openTermDeposit.json|


@TestCaseKey=UDB-T34254
@E2E @TestdataE2E 
Scenario Outline: Verify get TD status as completed for Normal citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |bearertokenPath|cif|requestBody                                                      												|requestfield					|responsefield	|filename|responseBody|
|deposits|/getTDStatus|src\test\resources\testdata\api\response\expected\mvp\login\mblogin.json|2005946706|\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDStatusCompleted.json |applicationFrmNum |applicationFrmNum|RD_ReqNormal_openTermDeposit.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDStatusCompleted.json|

#Verify Senior citizen is able to open RD with 6 Years tenure sucessfully

@TestCaseKey=UDB-T34267 @senior
@E2E @TestdataE2E
Scenario Outline: Verify get maturity details for Senior citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		|bearertokenPath								|cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |\src\test\resources\testdata\api\response\expected\mvp\login\fdrd_seniorcitizen.json|29066020 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_Senior_getMaturityDetails.json		|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_resSenior_GetMaturityDetails.json|


@TestCaseKey=UDB-T34267
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for Senior citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      |bearertokenPath| cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|\src\test\resources\testdata\api\response\expected\mvp\login\fdrd_seniorcitizen.json|29066020 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_saveTermDeposit.json|	maturityAmount,depositAmountinterestRate,depositTerm| maturityAmount,depositAmountinterestRate,depositTerm|	RD_Senior_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_resSenior_saveTermDeposit.json|



@TestCaseKey=UDB-T34267
@E2E @TestdataE2E
Scenario Outline: Verify get TD journey state for Senior citizen customer
Given user sets the bearer token <bearertokenPath>
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|29066020 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDJournyState.json|

@TestCaseKey=UDB-T34267
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|29066020 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|RD_ReqNormal_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_openTermDeposit.json|


@TestCaseKey=UDB-T34267
@E2E @TestdataE2E 
Scenario Outline: Verify get TD status as completed for Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint    | cif		|requestBody                                                      												|requestfield					|responsefield	|filename|responseBody|
|deposits|/getTDStatus|29066020 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDStatusCompleted.json |applicationFrmNum |applicationFrmNum|RD_ReqNormal_openTermDeposit.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDStatusCompleted.json|


#Verify Super senior citizen is able to open Normal FD with 1 Year tenure sucessfully
@TestCaseKey=UDB-T34268
Scenario Outline: Verify get maturity details for Super senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |29090042 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetMaturityDetails.json|


@TestCaseKey=UDB-T34268
Scenario Outline: Verify save term deposit for Super senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      | cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|29090042 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_saveTermDeposit.json|	maturityAmount,depositAmount,interestRate,depositTerm| maturityAmount,depositAmount,interestRate,depositTerm|	FD_RD_Req_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_saveTermDeposit.json|


@TestCaseKey=UDB-T34268
Scenario Outline: Verify get TD journey state Super senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|29090042 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDJournyState.json|

@TestCaseKey=UDB-T34268
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Super senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|29090042 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|FD_RD_Req_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_openTermDeposit.json|


#Verify Staff Senior is able to open RD with 30 days tenure sucessfully

@TestCaseKey=UDB-T34270
@E2E @TestdataE2E
Scenario Outline: Verify get maturity details for Staff Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |2012558718 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_Normal_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_Normal_GetMaturityDetails.json|


@TestCaseKey=UDB-T34270
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for Staff Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      | cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|2012558718 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_saveTermDeposit.json|	maturityAmount,depositAmountinterestRate,depositTerm| maturityAmount,depositAmountinterestRate,depositTerm|	RD_Normal_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_saveTermDeposit.json|



@TestCaseKey=UDB-T34270
@E2E @TestdataE2E
Scenario Outline: Verify get TD journey state for Staff Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|2012558718 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDJournyState.json|


@TestCaseKey=UDB-T34270
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Staff Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|2012558718 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|RD_ReqNormal_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_openTermDeposit.json|


@TestCaseKey=UDB-T34270
@E2E @TestdataE2E 
Scenario Outline: Verify get TD status as completed for Staff Senior citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint    | cif		|requestBody                                                      												|requestfield					|responsefield	|filename|responseBody|
|deposits|/getTDStatus|2012558718 |\src\test\resources\testdata\api\request\mvp\fdrd\RD_ReqNormal_getTDStatusCompleted.json |applicationFrmNum |applicationFrmNum|RD_ReqNormal_openTermDeposit.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_ResNormal_getTDStatusCompleted.json|


#Verify Staff citizen is able to open Tax Saver with 5 Year tenure sucessfully

@TestCaseKey=UDB-T34269
@E2E @TestdataE2E
Scenario Outline: Verify get maturity details for Staff citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |50805344 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetMaturityDetails.json|


@TestCaseKey=UDB-T34269
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for Staff citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      | cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|50805344 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_saveTermDeposit.json|	maturityAmount,depositAmount,interestRate,depositTerm| maturityAmount,depositAmount,interestRate,depositTerm|	FD_RD_Req_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_saveTermDeposit.json|


@TestCaseKey=UDB-T34269
@E2E @TestdataE2E
Scenario Outline: Verify get TD journey state for Staff citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|50805344 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDJournyState.json|

@TestCaseKey=UDB-T34269
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Staff citizen customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|50805344 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|FD_RD_Req_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_openTermDeposit.json|

#Verify any user is able to open FD/RD with Joint Account (EorS) sucessfully

@TestCaseKey=UDB-T34271
@E2E @TestdataE2E
Scenario Outline: Verify get maturity details for Joint customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\Joint_Req_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetMaturityDetails.json|


@TestCaseKey=UDB-T34271
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for Joint customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\Joint_Req_saveTermDeposit.json|	maturityAmount,depositAmount,interestRate,depositTerm| maturityAmount,depositAmount,interestRate,depositTerm|Joint_Req_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_saveTermDeposit.json|


@TestCaseKey=UDB-T34271
@E2E @TestdataE2E
Scenario Outline: Verify get TD journey state for Joint customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\Joint_Req_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDJournyState.json|


@TestCaseKey=UDB-T34271
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit Joint customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\Joint_Req_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|FD_RD_Req_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_openTermDeposit.json|

#Verify that API is not allowing user to open TD account for user with account having operating instruction '005'
@TestCaseKey=UDB-T34025
@E2E @TestdataE2E
Scenario Outline: Verify save term deposit for user with account having operating instruction '005'
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|
|deposits|/saveTermDeposit|40266579 |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_request.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

@TestCaseKey=UDB-T34025
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit for user with account having operating instruction '005'
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|40266579 |\src\test\resources\testdata\api\request\mvp\fdrd\Savetd005_request.json	|	applicationFrmNum	|	applicationFrmNum|Savetd005_request.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that API is not allowing user to open TD account without Aadhaar
@TestCaseKey=UDB-T34204
@E2E @TestdataE2E
Scenario Outline: Verify user is saving term deposit without Aadhaar
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|
|deposits|/saveTermDeposit|263369192 |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetdwithoutaadhar_request.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

@TestCaseKey=UDB-T34204
@E2E @TestdataE2E
Scenario Outline: Verify opening term deposit without Aadhar
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|263369192 |\src\test\resources\testdata\api\request\mvp\fdrd\Savetdwithoutaadhar_request.json	|	applicationFrmNum	|	applicationFrmNum|Savetdwithoutaadhar_request.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that API is not allowing user to open TD account if customer KYC is fail
@TestCaseKey=UDB-T34205
@E2E @TestdataE2E
Scenario Outline: Verify user is saving term deposit if customer KYC is fail
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|
|deposits|/saveTermDeposit|252301045 |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Kycfailrequest.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

@TestCaseKey=UDB-T34205
@E2E @TestdataE2E
Scenario Outline: Verify opening term deposit if customer KYC is fail
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|252301045 |\src\test\resources\testdata\api\request\mvp\fdrd\Kycfailrequest.json	|	applicationFrmNum	|	applicationFrmNum|Kycfailrequest.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that Sole prop account user is unable to open TD from API
@TestCaseKey=UDB-T34023
@E2E @TestdataE2E
Scenario Outline: Verify Sole prop account user is saving term deposit
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|
|deposits|/saveTermDeposit|900967585 |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Soleprop.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

@TestCaseKey=UDB-T34023
@E2E @TestdataE2E @Edge
Scenario Outline: Verify Sole prop account user opening term deposit 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|900967585 |\src\test\resources\testdata\api\request\mvp\fdrd\Soleprop.json	|	applicationFrmNum	|	applicationFrmNum|Savewithoutaadhar_request.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that API is not allowing user to open TD account for user with account having operating instruction '002'
@TestCaseKey=UDB-T34024
@E2E @TestdataE2E @Edge
Scenario Outline: Verify that API is not allowing user to save TD account for user with account having operating instruction '002'
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|

@TestCaseKey=UDB-T34024
@E2E @TestdataE2E
Scenario Outline: Verify that API is not allowing user to open TD account for user with account having operating instruction '002' 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|900434407 |\src\test\resources\testdata\api\request\mvp\fdrd\operatingins002_request.json	|	applicationFrmNum	|	applicationFrmNum|operatingins002_request.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that API is not allowing user to open TD account for user with account having operating instruction '007'
@TestCaseKey=UDB-T34026
@E2E @TestdataE2E
Scenario Outline: Verify that API is not allowing user to save TD account for user with account having operating instruction '007'
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint      | cif		|requestBody                                                      									 |responseBody|
|deposits|/saveTermDeposit|900080472 |\src\test\resources\testdata\api\response\expected\mvp\fdrd\operatingins007_request.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

@TestCaseKey=UDB-T34026
@E2E @TestdataE2E
Scenario Outline: Verify that API is not allowing user to open TD account for user with account having operating instruction '007'
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|900080472 |\src\test\resources\testdata\api\request\mvp\fdrd\operatingins007_request.json	|	applicationFrmNum	|	applicationFrmNum|operatingins007_request.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|


#Verify that API doesn't allow user to open TD account with invalid tenure
@TestCaseKey=UDB-T34027
@E2E @TestdataE2E
Scenario Outline: Verify that API does not allow user to open TD account with invalid tenure
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then update Jira status based on test result

Examples:
|service |endpoint        | cif				|requestBody     																																	|responseBody|
|deposits|/openTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\invalidtenureamount.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

#Verify that API doesn't allow user to open TD account with invalid amount
@TestCaseKey=UDB-T34028
@E2E @TestdataE2E @Edge
Scenario Outline: Verify that API doesn not allow user to open TD account with invalid amount
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint        | cif				|requestBody     																																	|responseBody|
|deposits|/openTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\invalidtenureamount.json	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\Savetd005_response.json|

