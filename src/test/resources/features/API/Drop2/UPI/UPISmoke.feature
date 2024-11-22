# Feature: UPI API
# Author: Rohit Sharma
# Description: Smoke Testing : UPI API
# Test Environment: SIT
# Preconditions: UPI API should be up and running

#################################################################
Feature: Smoke of UPI 
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/UPI
#################################################################

@TestCaseKey=UDB-T30767
Scenario Outline: Verify de-register api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
| service   | endpoint    		| requestBody 																								|requestField   |responsefield	|filename				| responseBody|
|UPI     |/deRegister   |src\test\resources\testdata\api\request\Drop2\UPI\de-register.json	|null						|null						|null						|src\test\resources\testdata\api\response\expected\Drop2\UPI\deregister.json|


@TestCaseKey=UDB-T30781
Scenario Outline: Verify registration-direct api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/registration-direct   |src\test\resources\testdata\api\request\Drop2\UPI\registration-direct.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\registration-direct.json|


@TestCaseKey=UDB-T30777
Scenario Outline: Verify listkeys api return success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listkeys   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-keys.json|


@TestCaseKey=UDB-T30772
Scenario Outline: Verify token api return the success with token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 													|requestBody|
|UPI     |/token   |src\test\resources\testdata\api\response\expected\Drop2\UPI\token.json	|src\test\resources\testdata\api\request\Drop2\UPI\token.json|


#@TestCaseKey=UDB-T30725
#Scenario Outline: Verify list-banks api return the all banks
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#	
#Examples:
#|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
#|UPI     |/listbanks/all   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30726
Scenario Outline: Verify list-banks api return the list of banks that supports credit card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/cc   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30727
Scenario Outline: Verify list-banks api return the list of banks that supports credit line
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/cl   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30728
Scenario Outline: Verify list-banks api return the list of banks with debit accounts
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/account   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30732
Scenario Outline: Verify fetch-accounts api return the bank accounts
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples:
|service |endpoint         |responseBody 																|requestBody|
|UPI     |/fetch-accounts  |src\test\resources\testdata\api\response\expected\Drop2\UPI\fetch-accounts.json|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts.json|

@TestCaseKey=UDB-T30764
Scenario Outline: Verify list-vpas api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/getlistVpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\list-vpas.json	|src\test\resources\testdata\api\request\Drop2\UPI\list-vpas.json|


@TestCaseKey=UDB-T30737
Scenario Outline: Verify suggest-vpa api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/SuggestVPA   |src\test\resources\testdata\api\response\expected\Drop2\UPI\suggest-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa.json|


@TestCaseKey=UDB-T30742
Scenario Outline: Verify set-vpa api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\setvpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa.json|


@TestCaseKey=UDB-T30752
Scenario Outline: Verify OTP api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/OTP   |src\test\resources\testdata\api\response\expected\Drop2\UPI\otp.json	|src\test\resources\testdata\api\request\Drop2\UPI\otp.json|


@TestCaseKey=UDB-T30742
Scenario Outline: Verify set-vpa api return the success message for linking new bank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\setvpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa1.json|


@TestCaseKey=UDB-T30747
Scenario Outline: Verify verify-vpa api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/verify/vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\verify-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\verify-vpa.json|


@TestCaseKey=UDB-T30835
Scenario Outline: Verify profile-vpa api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 																		|requestBody|
|UPI     |/profile-vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\profile-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa.json|


@TestCaseKey=UDB-T30835
Scenario Outline: Verify profile-vpa-1 api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																		|requestBody|
|UPI     |/profile-vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\profile-vpa1.json	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa1.json|


@TestCaseKey=UDB-T30830
Scenario Outline: Verify delink api successfully deleting the vpa
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																	|requestBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\delink-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa.json|


@TestCaseKey=UDB-T30810
Scenario Outline: Verify remove-account api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																	|requestBody|
|UPI     |/removeaccount   |src\test\resources\testdata\api\response\expected\Drop2\UPI\remove-account.json	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account.json|


@TestCaseKey=UDB-T30791
Scenario Outline: Verify balance-inquiry api return the success message
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																		|requestBody|
|UPI     |/balance-inquiry   |src\test\resources\testdata\api\response\expected\Drop2\UPI\balance-inquiry.json	|src\test\resources\testdata\api\request\Drop2\UPI\balance-inquiry.json|


@TestCaseKey=UDB-T30801
Scenario Outline: Verify "/transactionid" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service       | endpoint    		| requestBody 														 |requestField  |responsefield	|filename   | responseBody                                                                 |
| UPI 			|/transactionid   	|src\test\resources\testdata\api\request\Drop2\UPI\transactionid.json|null 			|null			| null 		|src\test\resources\testdata\api\response\expected\Drop2\UPI\transactionid.json|
  

@TestCaseKey=UDB-T30805
Scenario Outline: Verify "/transaction/pay" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pay   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pay.json  |txnId 			|data			| transactionid.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pay.json|


@TestCaseKey=UDB-T30845
Scenario Outline: Verify "/collect" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service       | endpoint    		| requestBody 														 |requestField  |responsefield	|filename   | responseBody                                                                 |
| UPI 			|/collect   	|src\test\resources\testdata\api\request\Drop2\UPI\collect.json|null 			|null			| null 		|src\test\resources\testdata\api\response\expected\Drop2\UPI\collect.json|
  

@TestCaseKey=UDB-T30850
Scenario Outline: Verify "/collect/pay" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/collect-pay   |src\test\resources\testdata\api\request\Drop2\UPI\collect-pay.json  |txnId 			|txnId			| collect.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\collect-pay.json|


@TestCaseKey=UDB-T30796
Scenario Outline: Verify "/transaction/list" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/list   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-list.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-list.json|


@TestCaseKey=UDB-T30840
Scenario Outline: Verify "/transaction/pending" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pending   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39883
Scenario Outline: Verify "/awareness" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/getAwarnessVideo   |src\test\resources\testdata\api\request\Drop2\UPI\recent.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39878 @Regression
Scenario Outline: Verify "/get-fvrt" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/getFavouriteTransactions   |src\test\resources\testdata\api\request\Drop2\UPI\recent.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39873 @Regression
Scenario Outline: Verify "/recent" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/recent   |src\test\resources\testdata\api\request\Drop2\UPI\recent.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|
