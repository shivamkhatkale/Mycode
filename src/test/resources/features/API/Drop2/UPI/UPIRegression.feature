# Feature: UPI API
# Author: Rohit Sharma
# Description: Regression Testing : UPI API
# Test Environment: SIT
# Preconditions: UPI API should be up and running

#################################################################
Feature: Regression of UPI 
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/UPI
#################################################################

@TestCaseKey=UDB-T30767 @Regression
Scenario Outline: Verify "deregister" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/deRegister   |src\test\resources\testdata\api\response\expected\Drop2\UPI\de-register.json	|src\test\resources\testdata\api\request\Drop2\UPI\de-register.json|


@TestCaseKey=UDB-T30768 @Regression
Scenario Outline: Verify "deregister" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint						|requestBody|
|UPI     |/deRegister   |src\test\resources\testdata\api\request\Drop2\UPI\deregister-invalid.json|


@TestCaseKey=UDB-T30769 @Regression
Scenario Outline: Verify "deregister" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody					|responseBody|
|UPI     |/deRegister   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30770 @Regression
Scenario Outline: Verify "deregister" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint         	|requestBody|
|UPI     |/deRegister123   	|src\test\resources\testdata\api\request\Drop2\UPI\de-register.json|


@TestCaseKey=UDB-T30771 @Regression
Scenario Outline: Verify "deregister" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint        	|requestBody|															responseBody|
|UPI     |/deRegister   	|src\test\resources\testdata\api\request\Drop2\UPI\de-register.json|	src\test\resources\testdata\api\response\Drop2\UPI\405.json|

#############################################################################################################################
@TestCaseKey=UDB-T30781 @Regression
Scenario Outline: Verify "registartion-direct" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																				|requestBody|
|UPI     |/registration-direct   |src\test\resources\testdata\api\response\expected\Drop2\UPI\registration-direct.json	|src\test\resources\testdata\api\request\Drop2\UPI\registration-direct.json|


@TestCaseKey=UDB-T30782 @Regression
Scenario Outline: Verify "registration-direct" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint          	|requestBody|
|UPI     |/registration-direct 	|src\test\resources\testdata\api\request\Drop2\UPI\registration-direct-invalid.json|


@TestCaseKey=UDB-T30783 @Regression
Scenario Outline: Verify "registration-direct" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  			|requestBody |responseBody|
|UPI     |/registration-direct   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30784 @Regression
Scenario Outline: Verify "registration-direct" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint          		|requestBody|
|UPI     |/registration-direct123   |src\test\resources\testdata\api\request\Drop2\UPI\registration-direct.json|


@TestCaseKey=UDB-T30785 @Regression
Scenario Outline: Verify "registration-direct" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          	|requestBody|																	responseBody|
|UPI     |/registration-direct  |src\test\resources\testdata\api\request\Drop2\UPI\registration-direct.json|	src\test\resources\testdata\api\response\Drop2\UPI\405.json|

#############################################################################################################################################################
@TestCaseKey=UDB-T30777 @Regression
Scenario Outline: Verify "list keys" API "POST" Method for Status code 200 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listkeys   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-keys.json|


@TestCaseKey=UDB-T30779 @Regression
Scenario Outline: Verify "list keys" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listkeys123   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-keys.json|


@TestCaseKey=UDB-T30780 @Regression
Scenario Outline: Verify "list keys" API "GET" Method for Status code 405 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listkeys123   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-keys.json|

############################################################################################################################################
@TestCaseKey=UDB-T30772 @Regression
Scenario Outline: Verify "token" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/token   |src\test\resources\testdata\api\response\expected\Drop2\UPI\token.json	|src\test\resources\testdata\api\request\Drop2\UPI\token.json|


@TestCaseKey=UDB-T30773 @Regression
Scenario Outline: Verify "token" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/token   	|src\test\resources\testdata\api\request\Drop2\UPI\token-invalid.json|


@TestCaseKey=UDB-T30774 @Regression
Scenario Outline: Verify "token" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/token   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30775 @Regression
Scenario Outline: Verify "token" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/token123 	|src\test\resources\testdata\api\request\Drop2\UPI\token.json|


@TestCaseKey=UDB-T30776 @Regression
Scenario Outline: Verify "token" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|										responseBody|
|UPI     |/token   	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account.json|src\test\resources\testdata\api\response\expected\Drop2\UPI\405.json|


#############################################################################################################################################
#@TestCaseKey=UDB-T30725 @Regression
#Scenario Outline: Verify "list all banks" API "POST" Method for Status code 200 with blank body
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 200
#	
#Examples:
#|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
#|UPI     |/listbanks/all   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30727 @Regression
Scenario Outline: Verify "list banks with credit lines" API "POST" Method for Status code 200 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/cl   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30728 @Regression
Scenario Outline: Verify "list banks with debit accounts" API "POST" Method for Status code 200 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/account   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30726 @Regression
Scenario Outline: Verify "list banks with credit cards" API "POST" Method for Status code 200 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/cc   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-banks.json|


@TestCaseKey=UDB-T30729 @Regression
Scenario Outline: Verify "list all banks" API "POST" Method for Status code 400 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint          |requestBody 																																		|requestField   |responsefield	|filename |responseBody|
|UPI     |/listbanks/all123   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|null						|null						|null			|src\test\resources\testdata\api\response\expected\Drop2\UPI\list-keys.json|


@TestCaseKey=UDB-T30731 @Regression
Scenario Outline: Verify "list all banks" API "GET" Method for Status code 405 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint  |
|UPI     |/listbanks/all   |

######################################################################################################################
@TestCaseKey=UDB-T30732 @Regression
Scenario Outline: Verify "fetch account" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/fetch-accounts   |src\test\resources\testdata\api\response\expected\Drop2\UPI\fetch-accounts.json	|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts.json|


@TestCaseKey=UDB-T30733 @Regression
Scenario Outline: Verify "fetch-accounts" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/fetch-accounts   	|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts-invalid.json|


@TestCaseKey=UDB-T30734 @Regression
Scenario Outline: Verify "fetch accounts" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/fetch-accounts   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30735 @Regression
Scenario Outline: Verify "fetch accounts" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/fetch-accounts123 	|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts.json|


@TestCaseKey=UDB-T30736 @Regression
Scenario Outline: Verify "fetch-accounts" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/fetch-accounts   	|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts.json|

####################################################################################################################################
@TestCaseKey=UDB-T30762 @Regression
Scenario Outline: Verify "getlistVpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/getlistVpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\list-vpas.json	|src\test\resources\testdata\api\request\Drop2\UPI\list-vpas.json|


@TestCaseKey=UDB-T30763 @Regression
Scenario Outline: Verify "getlistVpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/getlistVpa  	|src\test\resources\testdata\api\request\Drop2\UPI\list-vpas-invalid.json|


@TestCaseKey=UDB-T30764 @Regression
Scenario Outline: Verify "getlistVpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/getlistVpa   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30765 @Regression
Scenario Outline: Verify "getlistVpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/getlistVpa123 	|src\test\resources\testdata\api\request\Drop2\UPI\list-vpas.json|


@TestCaseKey=UDB-T30766 @Regression
Scenario Outline: Verify "getlistVpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody> for cheque services <requestBody> 
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/getlistVpa   	|src\test\resources\testdata\api\request\Drop2\UPI\list-vpas.json|

#######################################################################################################################################
@TestCaseKey=UDB-T30737 @Regression
Scenario Outline: Verify "suggest-vpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/SuggestVPA   |src\test\resources\testdata\api\response\expected\Drop2\UPI\suggest-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa.json|


@TestCaseKey=UDB-T30738 @Regression
Scenario Outline: Verify "suggest-vpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/SuggestVPA   	|src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa-invalid.json|


@TestCaseKey=UDB-T30739 @Regression
Scenario Outline: Verify "suggest-vpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/SuggestVPA   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30740 @Regression
Scenario Outline: Verify "suggest-vpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/SuggestVPA123 	|src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa.json|


@TestCaseKey=UDB-T30741 @Regression
Scenario Outline: Verify "suggest-vpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/SuggestVPA   	|src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa.json|

###############################################################################################################################################
@TestCaseKey=UDB-T30742 @Regression
Scenario Outline: Verify "set-vpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\set-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa.json|


@TestCaseKey=UDB-T30743 @Regression
Scenario Outline: Verify "set-vpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/setvpa   	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa-invalid.json|


@TestCaseKey=UDB-T30744 @Regression
Scenario Outline: Verify "set-vpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30745 @Regression
Scenario Outline: Verify "set-vpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/setvpa123 	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa.json|


@TestCaseKey=UDB-T30746 @Regression
Scenario Outline: Verify "set-vpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint        |requestBody| responseBody|
|UPI     |/setvpa   	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa.json|src\test\resources\testdata\api\response\Drop2\UPI\405.json|

#############################################################################################################################################
@TestCaseKey=UDB-T30747 @Regression
Scenario Outline: Verify "verify-vpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/verify/vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\verify-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\verify-vpa.json|


@TestCaseKey=UDB-T30748 @Regression
Scenario Outline: Verify "verify-vpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/verify/vpa   	|src\test\resources\testdata\api\request\Drop2\UPI\verify-vpa-invalid.json|


@TestCaseKey=UDB-T30749 @Regression
Scenario Outline: Verify "verify-vpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/verify/vpa   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30750 @Regression
Scenario Outline: Verify "verify-vpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/verify/vpa123 	|src\test\resources\testdata\api\request\Drop2\UPI\verify-vpa.json|


@TestCaseKey=UDB-T30751 @Regression
Scenario Outline: Verify "verify-vpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/verify/vpa   	|src\test\resources\testdata\api\request\Drop2\UPI\verify-vpa.json|

#########################################################################################################################################
@TestCaseKey=UDB-T30752 @Regression
Scenario Outline: Verify "OTP" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/OTP   |src\test\resources\testdata\api\response\expected\Drop2\UPI\otp.json	|src\test\resources\testdata\api\request\Drop2\UPI\otp.json|


@TestCaseKey=UDB-T30753 @Regression
Scenario Outline: Verify "OTP" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/OTP  	|src\test\resources\testdata\api\request\Drop2\UPI\otp-invalid.json|


@TestCaseKey=UDB-T30754 @Regression
Scenario Outline: Verify "OTP" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/OTP   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30755 @Regression
Scenario Outline: Verify "OTP" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/OTP123 	|src\test\resources\testdata\api\request\Drop2\UPI\otp.json|


@TestCaseKey=UDB-T30756 @Regression
Scenario Outline: Verify "OTP" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         				|requestBody| 															responseBody|
|UPI     |/OTP   	|src\test\resources\testdata\api\request\Drop2\UPI\otp.json|src\test\resources\testdata\api\response\Drop2\UPI\405.json|

########################################################################################################################################
@TestCaseKey=UDB-35850	@Regression @E2E
Scenario Outline: Verify that user is able to link Saving account to UPI Id through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\setvpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa1.json|

#########################################################################################################################################
@TestCaseKey=UDB-35838 @E2E
Scenario Outline: Verify that "fetch-account" api successfully fetches the accounts of the user
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service       | endpoint    		| requestBody 														 |requestField  |responsefield	|filename   | responseBody                                                                 |
| UPI 			|/fetch-accounts   	|src\test\resources\testdata\api\request\Drop2\UPI\fetch-accounts.json|null 			|null			| null 		|src\test\resources\testdata\api\response\expected\Drop2\UPI\fetch-accounts.json|
 
  
@TestCaseKey=UDB-35838 @E2E
Scenario Outline: Verify that "suggest-vpa" verifies whether VPA is available or not
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/SuggestVPA   |src\test\resources\testdata\api\request\Drop2\UPI\suggest-vpa2.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\suggest-vpa.json|


@TestCaseKey=UDB-35838 @E2E
Scenario Outline: Verify that "set-vpa" api successfully sets the UPI ID
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/setvpa   |src\test\resources\testdata\api\request\Drop2\UPI\set-vpa2.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\set-vpa.json|

########################################################################################################################################
@TestCaseKey=UDB-35853	@EdgeScenario
Scenario Outline: Verify that user should not be able to create more than 3 UPI IDs with the same device through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>

Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/setvpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\setvpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\set-vpa3.json|
###########################################################################################################################################################
@TestCaseKey=UDB-T30835	@Regression
Scenario Outline: Verify "profile-vpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/profile-vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\profile-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa.json|


@TestCaseKey=UDB-UDB-35855	@Regression @E2E
Scenario Outline: Verify that user is able to set the primary UPI Id through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/profile-vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\profile-vpa1.json	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa1.json|


@TestCaseKey=UDB-T30836 @Regression
Scenario Outline: Verify "profile-vpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/profile-vpa  	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa-invalid.json|


@TestCaseKey=UDB-T30837 @Regression
Scenario Outline: Verify "profile-vpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/profile-vpa   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30838 @Regression
Scenario Outline: Verify "profile-vpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/profile-vpa123 	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa.json|


@TestCaseKey=UDB-T30839 @Regression
Scenario Outline: Verify "profile-vpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/profile-vpa   	|src\test\resources\testdata\api\request\Drop2\UPI\profile-vpa.json|

######################################################################################################################################
@TestCaseKey=UDB-T30830 @Regression
Scenario Outline: Verify "delink vpa" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\delink-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa.json|


@TestCaseKey=UDB-T30831 @Regression
Scenario Outline: Verify "delink vpa" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/delink/vpa 	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa-invalid.json|


@TestCaseKey=UDB-T30832 @Regression
Scenario Outline: Verify "delink vpa" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30833 @Regression
Scenario Outline: Verify "delink vpa" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/delink/vpa123 	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa.json|


@TestCaseKey=UDB-T30834 @Regression
Scenario Outline: Verify "delink vpa" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/delink/vpa   	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa.json|

######################################################################################################################################
@TestCaseKey=UDB-35859 @E2E
Scenario Outline: Verify that user is able to delete the UPI ID for which no active number and mandate is there
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\response\expected\Drop2\UPI\delink-vpa.json	|src\test\resources\testdata\api\request\Drop2\UPI\delink-vpa1.json|


###############################################################################################################################
@TestCaseKey=UDB-T30810 @Regression
Scenario Outline: Verify "remove account" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/removeaccount   |src\test\resources\testdata\api\response\expected\Drop2\UPI\remove-account.json	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account.json|


@TestCaseKey=UDB-T30811 @Regression
Scenario Outline: Verify "remove account" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/removeaccount 	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account-invalid.json|


@TestCaseKey=UDB-T30812 @Regression
Scenario Outline: Verify "remove account" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody |responseBody|
|UPI     |/removeaccount   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30813 @Regression
Scenario Outline: Verify "remove account" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/removeaccount123 	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account.json|


@TestCaseKey=UDB-T30814 @Regression
Scenario Outline: Verify "remove account" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         				|requestBody|
|UPI     |/removeaccount   	|src\test\resources\testdata\api\request\Drop2\UPI\remove-account.json|

#######################################################################################################################################
@TestCaseKey=UDB-T30791 @Regression
Scenario Outline: Verify "balance-inquiry" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |responseBody 																|requestBody|
|UPI     |/balance-inquiry   |src\test\resources\testdata\api\response\expected\Drop2\UPI\balance-inquiry.json	|src\test\resources\testdata\api\request\Drop2\UPI\balance-inquiry.json|


@TestCaseKey=UDB-T30792 @Regression
Scenario Outline: Verify "balance-inquiry" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/balance-inquiry 	|src\test\resources\testdata\api\request\Drop2\UPI\balance-inquiry-invalid.json|


@TestCaseKey=UDB-T30793 @Regression
Scenario Outline: Verify "balance-inquiry" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/balance-inquiry   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30794 @Regression
Scenario Outline: Verify "balance-inquiry" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/balance-inquiry123 	|src\test\resources\testdata\api\request\Drop2\UPI\balance-inquiry.json|


@TestCaseKey=UDB-T30795 @Regression
Scenario Outline: Verify "balance-inquiry" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         		|requestBody|																														responseBody|
|UPI     |/balance-inquiry   	|src\test\resources\testdata\api\request\Drop2\UPI\balance-inquiry.json|src\test\resources\testdata\api\response\Drop2\UPI\405.json|

########################################################################################################################################
@TestCaseKey=UDB-T30801 @Regression
Scenario Outline: Verify "transaction id" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody|responseBody|
|UPI     |/transactionid   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\expected\Drop2\UPI\transactionid.json|


@TestCaseKey=UDB-T30803 @Regression
Scenario Outline: Verify "transaction id" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint|requestBody|
|UPI     |/transactionid123|src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|
	

@TestCaseKey=UDB-T30804 @Regression
Scenario Outline: Verify "transaction id" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
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
 

################################################################################################################################
@TestCaseKey=UDB-T30805 @Regression
Scenario Outline: Verify "transaction pay" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
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


@TestCaseKey=UDB-T30806 @Regression
Scenario Outline: Verify "transaction pay" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/transaction/pay 	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-pay-invalid.json|


@TestCaseKey=UDB-T30807 @Regression
Scenario Outline: Verify "transaction pay" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/transaction/pay  |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json |src\test\resources\testdata\api\response\Drop2\UPI\400.json|


@TestCaseKey=UDB-T30808 @Regression
Scenario Outline: Verify "transaction pay" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     			|requestBody|
|UPI     |/transaction/pay123	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-pay.json|


@TestCaseKey=UDB-T30809 @Regression
Scenario Outline: Verify "transaction pay" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         		|requestBody| responseBody|
|UPI     |/transaction/pay   	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-pay.json| src\test\resources\testdata\api\response\Drop2\UPI\405.json|

#####################################################################################################################################
@TestCaseKey=UDB-35860 @E2E
Scenario Outline: Verify that "transactionid" api generates the transaction id
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
 
  
@TestCaseKey=UDB-35860 @E2E
Scenario Outline: Verify that user is able to make the payment of 59rs within UBI with "/transaction/pay" API
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

########################################################################################################################################
@TestCaseKey=UDB-35851 @EdgeScenario
Scenario Outline: Verify that User should not be  able to delete UPI ID for which UPI number is active through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																					|responseBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\request\Drop2\UPI\delete_vpa_active_number.json	|src\test\resources\testdata\api\response\expected\Drop2\UPI\delink-vpa.json|

#######################################################################################################################################
@TestCaseKey=UDB-35852 @EdgeScenario
Scenario Outline: Verify that User should not be  able to delete primary UPI ID through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint          |requestBody 																																					|responseBody|
|UPI     |/delink/vpa   |src\test\resources\testdata\api\request\Drop2\UPI\delete-primary-vpa.json	|src\test\resources\testdata\api\response\expected\Drop2\UPI\delete-primary-vpa.json|

#######################################################################################################################################
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


@TestCaseKey=UDB-T30846 @Regression
Scenario Outline: Verify "collect" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint   |requestBody|
|UPI     |/collect 	|src\test\resources\testdata\api\request\Drop2\UPI\collect-invalid.json|


@TestCaseKey=UDB-T30847 @Regression
Scenario Outline: Verify "collect" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/collect   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30848 @Regression
Scenario Outline: Verify "collect" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/collect123 	|src\test\resources\testdata\api\request\Drop2\UPI\collect.json|


@TestCaseKey=UDB-T30849 @Regression
Scenario Outline: Verify "collect" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         		|requestBody| responseBody|
|UPI     |/collect   	|src\test\resources\testdata\api\request\Drop2\UPI\collect.json|src\test\resources\testdata\api\response\Drop2\UPI\405.json|

########################################################################################################################################
@TestCaseKey=UDB-T30850 @Regression
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


@TestCaseKey=UDB-T30851 @Regression
Scenario Outline: Verify "collect-pay" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/collect-pay   |src\test\resources\testdata\api\request\Drop2\UPI\collect-pay-invalid.json  |txnId 			|txnId			| collect.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\collect-pay.json|


@TestCaseKey=UDB-T30852 @Regression
Scenario Outline: Verify "collect-pay" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/collect-pay   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30853 @Regression
Scenario Outline: Verify "collect-pay" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/collect-pay123 	|src\test\resources\testdata\api\request\Drop2\UPI\collect-pay.json|


@TestCaseKey=UDB-T30854 @Regression
Scenario Outline: Verify "collect-pay" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint         		|requestBody| responseBody|
|UPI     |/collect-pay   	|src\test\resources\testdata\api\request\Drop2\UPI\collect-pay.json|src\test\resources\testdata\api\response\Drop2\UPI\405.json|

########################################################################################################################################
@TestCaseKey=UDB-T30796 @Regression
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


@TestCaseKey=UDB-T30797 @Regression
Scenario Outline: Verify "/transaction/list" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/list   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-list-invalid.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-list.json|


@TestCaseKey=UDB-T30798 @Regression
Scenario Outline: Verify "/transaction/list" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/transaction/list   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30799 @Regression
Scenario Outline: Verify "/transaction/list" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/transaction/list123 	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-list.json|


@TestCaseKey=UDB-T30800 @Regression
Scenario Outline: Verify "/transaction/list" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         		|requestBody|
|UPI     |/transaction/list   	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-list.json|

########################################################################################################################################
@TestCaseKey=UDB-T30840 @Regression
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


@TestCaseKey=UDB-T30841 @Regression
Scenario Outline: Verify "/transaction/pending" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pending   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending-invalid.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T30842 @Regression
Scenario Outline: Verify "/transaction/pending" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/transaction/pending   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T30843 @Regression
Scenario Outline: Verify "/transaction/pending" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/transaction/pending123 	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T30844 @Regression
Scenario Outline: Verify "/transaction/pending" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         		|requestBody|
|UPI     |/transaction/pending   	|src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending.json|

########################################################################################################################################
@TestCaseKey=UDB-35861 @EdgeScenario
Scenario Outline: Verify that "transactionid" api generates the transaction id for transaction of 1000001
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
 
  
@TestCaseKey=UDB-35861 @EdgeScenario
Scenario Outline: Verify that user is not able to make the payment of 100001rs within UBI with "/transaction/pay" API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pay   |src\test\resources\testdata\api\request\Drop2\UPI\payment1L.json  |txnId 			|data			| transactionid.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pay.json|

########################################################################################################################################
@TestCaseKey=UDB-35862 @EdgeScenario
Scenario Outline: Verify that "transactionid" api generates the transaction id for payment of 0 rs
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
 
  
@TestCaseKey=UDB-35862 @EdgeScenario
Scenario Outline: Verify that user is not able to make the payment of  0 rs within UBI with "/transaction/pay" API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pay   |src\test\resources\testdata\api\request\Drop2\UPI\payment0.json  |txnId 			|data			| transactionid.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pay.json|

########################################################################################################################################
@TestCaseKey=UDB-35857 @EdgeScenario
Scenario Outline: Verify that "transactionid" api generates the transaction id while making payment to invalid vpa
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
 
  
@TestCaseKey=UDB-35857 @EdgeScenario
Scenario Outline: Verify that user is not able to make  payment to invalid VPA UBI with "/transaction/pay" API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/transaction/pay   |src\test\resources\testdata\api\request\Drop2\UPI\paymentWrongVPA.json  |txnId 			|data			| transactionid.json    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pay.json|

########################################################################################################################################
@TestCaseKey=UDB-T35858 @EdgeScenario
Scenario Outline: Verify that user is not able to raise collect request through invalid UPI ID through API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>

Examples: 
| service       | endpoint    		| requestBody 														 |requestField  |responsefield	|filename   | responseBody                                                                 |
| UPI 			|/collect   	|src\test\resources\testdata\api\request\Drop2\UPI\collectWrongVPA.json|null 			|null			| null 		|src\test\resources\testdata\api\response\expected\Drop2\UPI\collect.json|

############################################################################################################################################
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


@TestCaseKey=UDB-T39874 @Regression
Scenario Outline: Verify "/recent" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/recent   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending-invalid.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39875 @Regression
Scenario Outline: Verify "/recent" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/recent   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T39876 @Regression
Scenario Outline: Verify "/recent" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/recent123 	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|


@TestCaseKey=UDB-T39877 @Regression
Scenario Outline: Verify "/recent" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         		|requestBody|
|UPI     |/recent   	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|

########################################################################################################################################
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


@TestCaseKey=UDB-T39879 @Regression
Scenario Outline: Verify "/get-fvrt" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/getFavouriteTransactions   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending-invalid.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39880 @Regression
Scenario Outline: Verify "/get-fvrt" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/getFavouriteTransactions   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T39881 @Regression
Scenario Outline: Verify "/get-fvrt" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/getFavouriteTransactions123 	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|


@TestCaseKey=UDB-T39882 @Regression
Scenario Outline: Verify "/get-fvrt" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         		|requestBody|
|UPI     |/getFavouriteTransactions   	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|

########################################################################################################################################
@TestCaseKey=UDB-T39883 @Regression
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


@TestCaseKey=UDB-T39884 @Regression
Scenario Outline: Verify "/awareness" API "POST" Method for Status code 400 with invalid body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint> 
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200

Examples: 
| service   | endpoint    		| requestBody 															|requestField   |responsefield	|filename				| responseBody|
| UPI 		|/getAwarnessVideo   |src\test\resources\testdata\api\request\Drop2\UPI\transaction-pending-invalid.json  |null 			|null			| null    |src\test\resources\testdata\api\response\expected\Drop2\UPI\transaction-pending.json|


@TestCaseKey=UDB-T39885 @Regression
Scenario Outline: Verify "/awareness" API "POST" Method for Status code 400 with blank body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
	
Examples:
|service |endpoint  	|requestBody|responseBody|
|UPI     |/getAwarnessVideo   |src\test\resources\testdata\api\request\Drop2\UPI\list-banks.json|src\test\resources\testdata\api\response\Drop2\UPI\400.json|



@TestCaseKey=UDB-T39886 @Regression
Scenario Outline: Verify "/awareness" API "POST" Method for Status code 404 with invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
	
Examples:
|service |endpoint     	|requestBody|
|UPI     |/getAwarnessVideo123 	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|


@TestCaseKey=UDB-T39887 @Regression
Scenario Outline: Verify "/awareness" API "GET" Method for Status code 405 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request for cheque services <requestBody>
Then user verifies that status is 405
	
Examples:
|service |endpoint         		|requestBody|
|UPI     |/getAwarnessVideo   	|src\test\resources\testdata\api\request\Drop2\UPI\recent.json|

########################################################################################################################################


