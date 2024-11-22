Feature: Regression of PPF
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/ppf
 
@TestCaseKey=UDB-T33014 @Regression
Scenario Outline: Verify get PPF account details with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  						|cif				|requestBody                                                     	 	|responseBody|
|invst	 |/getPPFAccountDetails |2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|

@TestCaseKey=UDB-T33015 @Regression
Scenario Outline: Verify get PPF account details if request body is blank 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  						|cif				|requestBody                                                     	 	|responseBody|
|invst	 |/getPPFAccountDetails |2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400_invalidcif.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|

@TestCaseKey=UDB-T33016 @Regression
Scenario Outline: Verify get PPF account details if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif			|requestBody                                                     	 	|responseBody|
|invst	 |/getPPFAccountDetails |2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400_invalidjson.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|


@TestCaseKey=UDB-T33017 @Regression
Scenario Outline: Verify get PPF account details if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif			|requestBody                                                     	 	|responseBody|
|invst	 |/getPPFAccountDetails |2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400_invalidjson.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|


@TestCaseKey=UDB-T33019 @Regression
Scenario Outline: Verify get PPF account details if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif			|requestBody                                                     	 	|responseBody|
|invst	 |/getPPFAccountDetails |2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400_invalidjson.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|


#@TestCaseKey=UDB-T33018
#Scenario Outline: Verify get PPF account details if Mandatory Field is Invalid
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 404
#Then user verifies json from <responseBody>

#Examples:
#|service 	|endpoint  				| cif			|requestBody                                                     	 	|responseBody|
#|deposits	|/getPPFAccountDetails 	|2005946706 	|src\test\resources\testdata\api\request\mvp\ppf\getPPFAccountDetails_Request400_invalid.json 	|src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFAccountDetails_Response400blank.json|


@TestCaseKey=UDB-T5527 @Regression
Scenario Outline: Verify get PPF account details if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/getPPFAccountDetails |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T5528 @Regression
Scenario Outline: Verify get PPF account details if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  				|cif			|requestBody                                                     	 	|responseBody|
|customer	|/getPPFAccountDetails 	|2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response.json|

#@TestCaseKey=UDB-T5529 @Regression
#Scenario Outline: Verify get PPF account details if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/getPPFAccountDetails	|<cif>|

@TestCaseKey=UDB-T33026 @Regression
Scenario Outline: Verify save PPF with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																								|responseBody|                                          	 	
|invst|/savePpf	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response400.json|


@TestCaseKey=UDB-T33027 @Regression
Scenario Outline: Verify save PPF with request body is blank 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																								|responseBody|                                          	 	
|invst|/savePpf	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response400.json|


@TestCaseKey=UDB-T33028 @Regression
Scenario Outline: Verify save PPF if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif	|requestBody       |responseBody|  
|invst	 |/savePpf 				|2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request400invalidjson.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response400.json|


@TestCaseKey=UDB-T33029 @Regression
Scenario Outline: Verify save PPF if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  	|cif			|requestBody       |responseBody|                                            	
|invst	 |/savePpf 		|2005946706|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response400.json|


@TestCaseKey=UDB-T33031 @Regression
Scenario Outline: Verify save PPF if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |cif		|requestBody    |responseBody| 
|invst	 |/savePpf |2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response400.json|


@TestCaseKey=UDB-T33030 @Regression
Scenario Outline: Verify save PPF if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  	|cif		|requestBody                                                     	 	|responseBody|
|customer	|/savePpf 	|2005946706 |\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request404invalidmandate.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response404invalid.json|

@TestCaseKey=UDB-T33032 @Regression
Scenario Outline: Verify get PPF account details if method is other than POST  for Eg: GET, PUT, Delete for saveppf
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  	|cif			|requestBody                                                     	 					|responseBody|
|invst		|/savePpf 	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T33033 @Regression
Scenario Outline: Verify save PPF if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  	|cif			|requestBody                                                     	 	|responseBody|
|customer	|/savePpf 	|2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\savePpf_Request.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\savePpf_Response.json|

#@TestCaseKey=UDB-T33034 @Regression
#Scenario Outline: Verify get PPF account details if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/savePpf	|<cif>|

@TestCaseKey=UDB-T33038 @Regression
Scenario Outline: Verify open PPF with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service	|endpoint  	|cif		|requestBody        																													|responseBody|                                          	 	
|invst		|/openPpf		|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|

@TestCaseKey=UDB-T33039 @Regression
Scenario Outline: Verify open PPF with request body is blank 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint |cif			|requestBody        																								|responseBody|                                          	 	
|invst		|/openPpf	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|


@TestCaseKey=UDB-T33040 @Regression
Scenario Outline: Verify open PPF if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif			|requestBody       |responseBody|  
|invst	 |/openPpf 				|2005946706 |\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|


@TestCaseKey=UDB-T33041 @Regression
Scenario Outline: Verify open PPF if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  			|cif			|requestBody       |responseBody|  
|invst	 |/openPpf 				|2005946706 |\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|


@TestCaseKey=UDB-T33042 @Regression
Scenario Outline: Verify open PPF if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|cif	|requestBody       |responseBody|  
|customer	|/openPpf 			|2005946706 |\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|


@TestCaseKey=UDB-T33043 @Regression
Scenario Outline: Verify open PPF account if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif			|requestBody                                                     	 	|responseBody|
|invst	 |/openPpf 	|2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|


@TestCaseKey=UDB-T33044 @Regression
Scenario Outline: Verify open PPF if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint |cif		|requestBody                                                     	 	|responseBody|
|invst		|/openPpf |2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T33045 @Regression
Scenario Outline: Verify open PPF if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  	|cif			|requestBody                                                     	 	|responseBody|
|customer	|/openPpf 	|2005946706 	|\src\test\resources\testdata\api\request\mvp\ppf\openPpf_Request400.json 	|\src\test\resources\testdata\api\response\expected\mvp\ppf\openPpf_Response400.json|

#@TestCaseKey=UDB-T33046 @Regression
#Scenario Outline: Verify open PPF if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/openPpf	|<cif>|


@TestCaseKey=UDB-T33050 @Regression
Scenario Outline: Verify get PPF status with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33051 @Regression
Scenario Outline: Verify get PPF status if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  	|cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33052 @Regression
Scenario Outline: Verify get PPF status if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  	|cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33053 @Regression
Scenario Outline: Verify get PPF status if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33054 @Regression
Scenario Outline: Verify get PPF status if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33055 @Regression
Scenario Outline: Verify get PPF status if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|cif				|requestBody        																													|responseBody|                                          	 	
|invst		|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|


@TestCaseKey=UDB-T33056 @Regression
Scenario Outline: Verify get PPF status if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/getPPFStatus |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T330457 @Regression
Scenario Outline: Verify get PPF status if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/getPPFStatus	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|

#@TestCaseKey=UDB-T33046 @Regression
#Scenario Outline: Verify get PPF status if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/getPPFAccountDetails	|<cif>|

@TestCaseKey=UDB-T33062 @Regression
Scenario Outline: Verify email PPF statement with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  		|cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33063 @Regression
Scenario Outline: Verify email PPF statement if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  	|cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400_blank.json|


@TestCaseKey=UDB-T33064 @Regression
Scenario Outline: Verify email PPF statement if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33065 @Regression
Scenario Outline: Verify email PPF statement if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400_blank.json|


@TestCaseKey=UDB-T33066 @Regression
Scenario Outline: Verify email PPF statement if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33067 @Regression
Scenario Outline: Verify email PPF statement if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33068 @Regression
Scenario Outline: Verify email PPF statement if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/emailStatement |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T33069 @Regression
Scenario Outline: Verify email PPF statement if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/emailStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|

#@TestCaseKey=UDB-T33070 @Regression
#Scenario Outline: Verify email statement if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/emailStatement	|<cif>|


@TestCaseKey=UDB-T33074 @Regression
Scenario Outline: Verify download PPF statement with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33075 @Regression
Scenario Outline: Verify download PPF statement if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400_blank.json|


@TestCaseKey=UDB-T33076 @Regression
Scenario Outline: Verify download PPF statement if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33077 @Regression
Scenario Outline: Verify download PPF statement if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400_blank.json|


@TestCaseKey=UDB-T33078 @Regression
Scenario Outline: Verify download PPF statement if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33079 @Regression
Scenario Outline: Verify download PPF statement if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\emailstatement_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\emailstatement_Response400.json|


@TestCaseKey=UDB-T33080 @Regression
Scenario Outline: Verify download PPF statement if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/downloadStatement |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|


@TestCaseKey=UDB-T33081 @Regression
Scenario Outline: Verify download PPF statement if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/downloadStatement	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPF_Response400.json|

#@TestCaseKey=UDB-T33082 @Regression
#Scenario Outline: Verify download PPF statement if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/downloadStatement	|<cif>|


@TestCaseKey=UDB-T33086 @Regression
Scenario Outline: Verify get journey state with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response400.json|


@TestCaseKey=UDB-T33087 @Regression
Scenario Outline: Verify get journey state if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400_blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response500blank.json|

@TestCaseKey=UDB-T33088 @Regression
Scenario Outline: Verify get journey state if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  | cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response400.json|

@TestCaseKey=UDB-T33089 @Regression
Scenario Outline: Verify get journey state if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400_blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response500blank.json|

@TestCaseKey=UDB-T33090 @Regression
Scenario Outline: Verify get journey state if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response400.json|

@TestCaseKey=UDB-T33091 @Regression
Scenario Outline: Verify get journey state if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|deposits|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response400.json|

@TestCaseKey=UDB-T33092 @Regression
Scenario Outline: Verify get journey state if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  				|requestBody                                                     	 	|responseBody|
|deposits	|/getTDJournyState |\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|

@TestCaseKey=UDB-T33093 @Regression
Scenario Outline: Verify get journey state if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/getTDJournyState	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getjourneystate_Request400.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getjournystate_Response400.json|

#@TestCaseKey=UDB-T33094 @Regression
#Scenario Outline: Verify get journey state if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/getTDJournyState	|<cif>|


@TestCaseKey=UDB-T33110 @Regression
Scenario Outline: Verify make Contribute with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makeContribute_Response400_Optional.json|


@TestCaseKey=UDB-T33111 @Regression
Scenario Outline: Verify make Contribute if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makecontribute_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makecontribute_Response400_blank.json|

@TestCaseKey=UDB-T33112 @Regression
Scenario Outline: Verify make Contribute if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makeContribute_Response400_Optional.json|

@TestCaseKey=UDB-T33113 @Regression
Scenario Outline: Verify make Contribute if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makecontribute_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makecontribute_Response400_blank.json|

@TestCaseKey=UDB-T33114 @Regression
Scenario Outline: Verify make Contribute if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makeContribute_Response400_Optional.json|

@TestCaseKey=UDB-T33115 @Regression
Scenario Outline: Verify make Contribute if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makeContribute_Response400_Optional.json|

@TestCaseKey=UDB-T33116 @Regression
Scenario Outline: Verify make Contribute if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/makeContribute |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|

@TestCaseKey=UDB-T33117 @Regression
Scenario Outline: Verify make Contribute if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/makeContribute	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\makeContribute_Response400_Optional.json|

#@TestCaseKey=UDB-T33118 @Regression
#Scenario Outline: Verify make Contribute if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/makeContribute	|<cif>|

#PPF Certificate is removed
#@TestCaseKey=UDB-T5749
#Scenario Outline: Verify download PPF certificate with Only Optional fields available in request body
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\PPFCertificate_Request400Optional.json |src\test\resources\testdata\api\response\expected\mvp\ppf\PPFCertificate_Response400_Optional.json|


#@TestCaseKey=UDB-T5750
#Scenario Outline: Verify download PPF certificate if Request body is blank
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

#@TestCaseKey=UDB-T5751
#Scenario Outline: Verify download PPF certificate if Request body is invalid JSON
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\PPFCertificate_Request400Optional.json |src\test\resources\testdata\api\response\expected\mvp\ppf\PPFCertificate_Response400_Optional.json|

#@TestCaseKey=UDB-T5752
#Scenario Outline: Verify download PPF certificate if Mandatory Field is Blank
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

#@TestCaseKey=UDB-T5753
#Scenario Outline: Verify download PPF certificate if Mandatory Field is Invalid
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\PPFCertificate_Request400Optional.json |src\test\resources\testdata\api\response\expected\mvp\ppf\PPFCertificate_Response400_Optional.json|

#@TestCaseKey=UDB-T5754
#Scenario Outline: Verify download PPF certificate if Mandatory Field TAG is Invalid
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 400
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|invst|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\makeContribute_Request400Optional.json |src\test\resources\testdata\api\response\expected\mvp\ppf\PPFCertificate_Response400_Optional.json|

#@TestCaseKey=UDB-T5755
#Scenario Outline: Verify download PPF certificate if method is other than POST  for Eg: GET, PUT, Delete
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a get request with <requestBody>
#Then user verifies that status is 405
#Then user verifies json from <responseBody>

#Examples:
#|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
#|invst	|/PPFCertificate |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|

#@TestCaseKey=UDB-T5756
#Scenario Outline: Verify download PPF certificate if 404 Status code is "Not Found"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request with <requestBody>
#Then user verifies that status is 404
#Then user verifies json from <responseBody>

#Examples:
#|service |endpoint  | cif				|requestBody        																													| responseBody|                                          	 	
#|customer|/PPFCertificate	|2005946706	|src\test\resources\testdata\api\request\mvp\ppf\PPFCertificate_Request400Optional.json |src\test\resources\testdata\api\response\expected\mvp\ppf\PPFCertificate_Response400_Optional.json|

#@TestCaseKey=UDB-T5757
#Scenario Outline: Verify download PPF certificate if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/PPFCertificate	|<cif>|

@TestCaseKey=UDB-T33134 @Regression
Scenario Outline: Verify get Existing Accounts with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|


@TestCaseKey=UDB-T33135 @Regression
Scenario Outline: Verify get Existing Accounts if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

@TestCaseKey=UDB-T33136 @Regression
Scenario Outline: Verify get Eisting Accounts if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33137 @Regression
Scenario Outline: Verify get Existing Accounts if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

@TestCaseKey=UDB-T33138 @Regression
Scenario Outline: Verify get Existing Accounts if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33139 @Regression
Scenario Outline: Verify get Existing Accounts if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33140 @Regression
Scenario Outline: Verify get Existing Accounts if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/getPPFExistingAccount |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|

@TestCaseKey=UDB-T33141 @Regression
Scenario Outline: Verify get Existing Accounts if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/getPPFExistingAccount	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

#@TestCaseKey=UDB-T33142
#Scenario Outline: Verify get Existing Accounts if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/getPPFExistingAccount	|<cif>|

@TestCaseKey=UDB-T33146 @Regression
Scenario Outline: Verify get PPF details to resume with Only Optional fields available in request body
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|


@TestCaseKey=UDB-T33147 @Regression
Scenario Outline: Verify get PPF details to resume if Request body is blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

@TestCaseKey=UDB-T33148 @Regression
Scenario Outline: Verify get PPF details to resume if Request body is invalid JSON
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33149 @Regression
Scenario Outline: Verify get PPF details to resume if Mandatory Field is Blank
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400blank.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_blank.json|

@TestCaseKey=UDB-T33150 @Regression
Scenario Outline: Verify get PPF details to resume if Mandatory Field is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33151 @Regression
Scenario Outline: Verify get PPF details to resume if Mandatory Field TAG is Invalid
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|invst|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

@TestCaseKey=UDB-T33152 @Regression
Scenario Outline: Verify get PPF details to resume if method is other than POST  for Eg: GET, PUT, Delete
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service 	|endpoint  			|requestBody                                                     	 	|responseBody|
|invst	|/getPPFDetailsToResume |\src\test\resources\testdata\api\request\mvp\ppf\getPPFStatus_Request.json	|\src\test\resources\testdata\api\response\expected\mvp\ppf\ppf_405methoderror.json|

@TestCaseKey=UDB-T33153 @Regression
Scenario Outline: Verify get PPF details to resume if 404 Status code is "Not Found"
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |cif				|requestBody        																													|responseBody|                                          	 	
|customer|/getPPFDetailsToResume	|2005946706	|\src\test\resources\testdata\api\request\mvp\ppf\getPPFExistingAccount_Request400_Optional.json |\src\test\resources\testdata\api\response\expected\mvp\ppf\getPPFExistingAccount_Response400_Optional.json|

#@TestCaseKey=UDB-T33154
#Scenario Outline: Verify get PPF details to resume if Status code 500 "Internal Server Error"
##Given user sets the bearer token
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a post request without request
#Then user triggers a get request with parameter <cif>
#Then user verifies that status is 500

#Examples:
#|service 		|endpoint          	|cif|							
#|customer	 	|/getPPFDetailsToResume	|<cif>|

#Verify that User is unable to contribute invalid amount in existing PPF account
@TestCaseKey=UDB-T34022
Scenario Outline: Verify make contribution of invalid amount in existing PPF account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service	|endpoint			|cif			|requestBody																		|responseBody|
|invst		|/makeContribute	|274309887		|src\test\resources\testdata\api\request\mvp\ppf\invalidamountcontribution_req.json		|invalidamtmakeContribute_Res.json|

