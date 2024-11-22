# Feature: FD RD API
# Author: Sampada Wadkar
# Description: Smoke Testing : FD RD API
# Test Environment: SIT
# Preconditions: FD RD API should be up and running

Feature: Smoke of FD-RD
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/fdrd
 
@TestCaseKey=UDB-T7627
Scenario Outline: Verify get customer cif api returns correct response for valid customer
#Given user sets the bearer token 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          	| cif  			|requestBody    													|responseBody |
|customer|/getCustomerByCIF		| 2005946706	|\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_CIF.json    | \src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_GetCustomerByCIF.json|

@TestCaseKey=UDB-T7632
Scenario Outline: Verify get customer account details with cif for valid customer
##Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      				|responseBody|
|customer|/getCustomerAccounts 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\getcustomeraccountsbody.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\fdrdgetcustomeraccounts.json|


@TestCaseKey=UDB-T7744
Scenario Outline: Verify get customer KYC status with cif for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      |responseBody|
|customer|/getCustKycStatus 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_CIF.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\RD_RD_Res_getCustKycStatus.json|


@TestCaseKey=UDB-T7639
Scenario Outline: Verify get CASA accounts with cif for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         	| cif		|requestBody                                                      |responseBody|
|customer|/getCASAAccounts 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_CIF.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetCASAAccounts.json|


@TestCaseKey=UDB-T7751
Scenario Outline: Verify get CASA account details with cif and account number for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         			| cif		|requestBody                                                      							|responseBody|
|customer|/getCASAAccountDetails 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getCASAAccountDetails.json 	|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetCASAAccountsDetails.json|


@TestCaseKey=UDB-T7653
Scenario Outline: Verify get maturity details for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getMaturityDetails |2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getMaturityDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetMaturityDetails.json|


@TestCaseKey=UDB-T7660
Scenario Outline: Verify save term deposit for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint      | cif		|requestBody                                                      									 |requestField																					|responsefield	|filename	|responseBody|
|deposits|/saveTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_saveTermDeposit.json|	maturityAmount,depositAmount,interestRate,depositTerm| maturityAmount,depositAmount,interestRate,depositTerm|	FD_RD_Req_getMaturityDetails.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_saveTermDeposit.json|


@TestCaseKey=T7667
Scenario Outline: Verify get TD journey state for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         		| cif		|requestBody                                                      								|responseBody|
|deposits|/getTDJournyState	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getTDJournyState.json				|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDJournyState.json|


@TestCaseKey=UDB-T7674 
Scenario Outline: Verify get TD details to resume for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint         			| cif		    |requestBody      |requestField       |responsefield              | filename                                                 							|responseBody|
|deposits|/getTDDetailsToResume	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_CIFandAcctFromNumb.json|	applicationFrmNum |applicationFrmNum|FD_RD_Req_saveTermDeposit.json		|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDDetailsToResume.json|

@TestCaseKey=UDB-T7681
@TestCaseKey=UDB-T34254
@E2E @TestdataE2E
Scenario Outline: Verify open term deposit valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:

|service |endpoint        | cif				|requestBody     																																	|requestfield      |responsefield  |filename                   							|responseBody|
|deposits|/openTermDeposit|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_openTermDeposit.json	|	applicationFrmNum	|	applicationFrmNum|FD_RD_Req_saveTermDeposit.json |\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_openTermDeposit.json|


@TestCaseKey=UDB-T7688
Scenario Outline: Verify get TD status as completed for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint    | cif		|requestBody                                                      												|requestfield					|responsefield	|filename|responseBody|
|deposits|/getTDStatus|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getTDStatusCompleted.json |applicationFrmNum |applicationFrmNum|FD_RD_Req_openTermDeposit.json|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_getTDStatusCompleted.json|

@TestCaseKey=UDB-T7702
Scenario Outline: Verify get TD details for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         	| cif		|requestBody                                                      						|responseBody|
|customer|/getTDDetails	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_getTDDetails.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetTDDetails.json|

@TestCaseKey=UDB-T7709
Scenario Outline: Verify get TD Transactions for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         			| cif		|requestBody                                                      							|responseBody|
|deposits|/getTDTransactions	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_GetTDTransaction.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_GetTDTransactions.json|

@TestCaseKey=UDB-T7716
Scenario Outline: Verify user download TD certificate for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         				| cif		|requestBody                                                      							|responseBody|
|deposits|/downloadTDCertificate	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_GetTDTransaction.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_downloadTDCertificate.json|

@TestCaseKey=UDB-T7723
Scenario Outline: Verify user download statement for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint         			| cif		|requestBody                                                      							|responseBody|
|deposits|/downloadStatement	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_GetTDTransaction.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_downloadStatement.json|

@TestCaseKey=UDB-T7730
Scenario Outline: Verify user download Interest certificate for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         					| cif		|requestBody                                                      							|responseBody|
|deposits|/downloadInterestCertificate	 	|2005946706 |\src\test\resources\testdata\api\request\mvp\fdrd\FD_RD_Req_GetTDTransaction.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_downloadInterestCertificate.json|

@TestCaseKey=UDB-T7737
Scenario Outline: Verify user email statement for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         					| cif		|requestBody                                                      							|responseBody|
|deposits|/emailStatement	 	|634743268  |\src\test\resources\testdata\api\request\mvp\fdrd\emailstatementreq.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_emailstatement.json|

@TestCaseKey=UDB-T7695
Scenario Outline: Verify user close term deposit for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         		| cif		|requestBody                                                      							|responseBody|
|deposits|/closeTermDeposit	 	|634743268 |\src\test\resources\testdata\api\request\mvp\fdrd\closetd200.json			|\src\test\resources\testdata\api\response\expected\mvp\fdrd\FD_RD_Res_emailstatement.json|

