Feature: Smoke flow of PPF
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/ppf

@TestCaseKey=UDB-T33024
Scenario Outline: Verify user is able to save ppf for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint  | cif			|requestBody                                                     	 	|responseBody|
|invst	 |/savePpf 	|2005946706 	|src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request.json 	|src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response.json|


@TestCaseKey=UDB-T33084
Scenario Outline: Verify get TD journey state for valid customer of PPF
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint			| cif			|requestBody																	|responseBody|																	
|deposits	|/getTDJournyState	| 2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getTDJournyState_Request.json	|src\test\resources\testdata\api\response\expected\mvp\ppf\getTDJournyState_Response.json|


@TestCaseKey=UDB-T33144
Scenario Outline: Verify get PPF details to resume for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint				| cif			|requestBody																		|responseBody|																	
|invst		|/getPPFDetailsToResume	| 2005946706	|src\test\resources\testdata\api\request\mvp\ppf\getPPFDetailsToResume_Request.json	|src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFDetailsToResume_Response.json|

@TestCaseKey=UDB-T33048
Scenario Outline: Verify get PPF status for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint			| cif			|requestBody																			|responseBody|																		
|invst		|/getPPFStatus		| 2005946706	|src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json				|src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFStatus_Response.json|

@TestCaseKey=UDB-T33132
Scenario Outline: Verify get PPF Existing account for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint				| cif			|requestBody																			|responseBody|
|invst		|/getPPFExistingAccount	| 2005946706	|src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request.json		|src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response.json|

@TestCaseKey=UDB-T33012
Scenario Outline: Verify get PPF account details for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint				|cif			|requestBody																			|responseBody|
|invst		|/getPPFAccountDetails	|2005946706		|src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request.json		|getPPFAccountDetails_Response.json|


@TestCaseKey=UDB-T33108
Scenario Outline: Verify make contribution in PPF account for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint			|cif			|requestBody																		|responseBody|
|invst		|/makeContribute	|274309887		|src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request.json		|makeContribute_Response.json|


@TestCaseKey=UDB-T33072
Scenario Outline: Verify download ppf statement for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint			|cif			|requestBody																		|responseBody|
|invst		|/downloadStatement	|274309887		|src\test\resources\testdata\api\request\mvp\ppf\downloadstatement_Request200.json		|downloadstatement_Response200.json|

@TestCaseKey=UDB-T33060
Scenario Outline: Verify email ppf statement for valid customer
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service	|endpoint			|cif			|requestBody																		|responseBody|
|invst		|/emailStatement	|274309887		|src\test\resources\testdata\api\request\mvp\ppf\downloadstatement_Request200.json		|emailstatement_Response200.json|

