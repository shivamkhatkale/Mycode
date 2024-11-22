Feature: Regression for Registration

@TestCaseKey=UDB-T1294 @Regression
Scenario Outline: Verify "custInqByMob" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|prelogin|/custInqByMob |\src\test\resources\testdata\api\request\mvp\registration\custInqByMob_404_NotFound.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custInqByMob_404_NotFound.json|

@TestCaseKey=UDB-T1291 @Regression
Scenario Outline: Verify "custInqByMob" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|prelogin|/custInqByMob |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custInqByMob_400_Blank.json|

#@TestCaseKey=UDB-T1293 @Regression
#Scenario Outline: Verify "custInqByMob" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a get request with body <requestBody>
#Then user verifies that status is 405
#Then user verifies json from <responseBody>
#Examples:
#|service |endpoint      |requestBody|responseBody|
#|prelogin|/custInqByMob |\src\test\resources\testdata\api\request\mvp\registration\custInqByMob_404_NotFound.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custInqByMob_405_MethodNotAllowed.json|

@TestCaseKey=UDB-T1365 @Regression
Scenario Outline: Verify "mbreregistration" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/mbreregistration |\src\test\resources\testdata\api\request\mvp\registration\deregister_400_OptionalField.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1366 @Regression
Scenario Outline: Verify "mbreregistration" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/mbreregistration |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


#@TestCaseKey=UDB-T1368 @Regression
#Scenario Outline: Verify "mbreregistration" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
#Given user sets the environment of endpoint
#Given user set the basepath to <service>
#Then set the endpoint <endpoint>
#Then user triggers a get request with body <requestBody>
#Then user verifies that status is 405
#Then user verifies json from <responseBody>
#Examples:
#|service     |endpoint          |requestBody                                                                 |responseBody|
#|registration|/mbreregistration |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\deregister.json|

@TestCaseKey=UDB-T1358 @Regression
Scenario Outline: Verify "checkmbregistrationwithdeviceid_v1" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/checkmbregistrationwithdeviceid_v1 |\src\test\resources\testdata\api\request\mvp\registration\deviceid_400.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1359 @Regression
Scenario Outline: Verify "checkmbregistrationwithdeviceid_v1" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/checkmbregistrationwithdeviceid_v1 |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1356 @Regression
@TestCaseKey=UDB-T1357 @Regression
Scenario Outline: Verify "checkmbregistrationwithdeviceid_v1" API "POST" Method for Status code 200 with all fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/checkmbregistrationwithdeviceid_v1 |\src\test\resources\testdata\api\request\mvp\registration\checkmbregistrationwithdeviceid_v1.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_200.json|

@TestCaseKey=UDB-T1351 @Regression
Scenario Outline: Verify "checkmbregistration" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint         	   |requestBody                                                                 |responseBody|
|registration|/checkmbregistration |\src\test\resources\testdata\api\request\mvp\registration\deviceid_400.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1352 @Regression
Scenario Outline: Verify "checkmbregistration" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/checkmbregistration |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1390 @Regression
Scenario Outline: Verify "mbsilentsmsgetstatus" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsgetstatus |\src\test\resources\testdata\api\request\mvp\registration\mbsilentsmsgetstatus_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbsilentsmsgetstatus_404.json|

@TestCaseKey=UDB-T1387 @Regression
Scenario Outline: Verify "mbsilentsmsgetstatus" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsgetstatus |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1386 @Regression
Scenario Outline: Verify "mbsilentsmsgetstatus" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsgetstatus |\src\test\resources\testdata\api\request\mvp\registration\deviceid_400.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1380 @Regression
Scenario Outline: Verify "mbsilentsmsupdatestatus" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsupdatestatus |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1379 @Regression
Scenario Outline: Verify "mbsilentsmsupdatestatus" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsupdatestatus |\src\test\resources\testdata\api\request\mvp\registration\mbsilentsmsupdatestatus_400.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1298 @Regression
Scenario Outline: Verify "generateaadharotp" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateaadharotp |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1297 @Regression
Scenario Outline: Verify "generateaadharotp" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateaadharotp |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1305 @Regression
Scenario Outline: Verify "verifyaadharotp" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1304 @Regression
Scenario Outline: Verify "verifyaadharotp" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1345 @Regression
Scenario Outline: Verify "verifybranchtoken" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 							|responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1344 @Regression
Scenario Outline: Verify "verifybranchtoken" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 							|responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1339 @Regression
Scenario Outline: Verify "generatebranchtoken" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 							|responseBody|
|registration|/generatebranchtoken |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1373 @Regression
Scenario Outline: Verify "mblogin" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1372 @Regression
Scenario Outline: Verify "mblogin" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\deviceid_400.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1334 @Regression
Scenario Outline: Verify "verifydebitcard_v1" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 				 		|requestBody                                                                 							|responseBody|
|registration|/verifydebitcard_v1 |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1333 @Regression
Scenario Outline: Verify "verifydebitcard_v1" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint            |requestBody                                                                 							|responseBody|
|registration|/verifydebitcard_v1 |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1312 @Regression
Scenario Outline: Verify "mbregistration" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 				 		|requestBody                                                                 							|responseBody|
|registration|/mbregistration |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1311 @Regression
Scenario Outline: Verify "mbregistration" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint            |requestBody                                                                 							|responseBody|
|registration|/mbregistration |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1320 @Regression
Scenario Outline: Verify "setloginpin" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 				 		|requestBody                                                                 							|responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1319 @Regression
Scenario Outline: Verify "setloginpin" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint            |requestBody                                                                 							|responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|



@TestCaseKey=UDB-T1327 @Regression
Scenario Outline: Verify "settpin" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1326 @Regression
Scenario Outline: Verify "settpin" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1394 @Regression
Scenario Outline: Verify "generateotp" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/generateotp |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1393 @Regression
Scenario Outline: Verify "generateotp" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/generateotp |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1401 @Regression
Scenario Outline: Verify "verifyotp" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/verifyotp |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1400 @Regression
Scenario Outline: Verify "verifyotp" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/verifyotp |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|


@TestCaseKey=UDB-T1376 @Regression
Scenario Outline: Verify "mblogin" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\mblogin_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

@TestCaseKey=UDB-T1348 @Regression
Scenario Outline: Verify "verifybranchtoken" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\verifybranchtoken_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

@TestCaseKey=UDB-T1337 @Regression
Scenario Outline: Verify "verifydebitcard_v1" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/verifydebitcard_v1 |\src\test\resources\testdata\api\request\mvp\registration\verifydebitcard_v1_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|


@TestCaseKey=UDB-T1323 @Regression
Scenario Outline: Verify "setloginpin" API for Status code 404 "Not Found"s
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\setloginpin_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

@TestCaseKey=UDB-T1330 @Regression
Scenario Outline: Verify "settpin" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\settpin_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

#400 Invalid Json
@TestCaseKey=UDB-T1402 @Regression
Scenario Outline: Verify "verifyotp" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifyotp |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1395 @Regression
Scenario Outline: Verify "generateotp" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateotp |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1388 @Regression
Scenario Outline: Verify "mbsilentsmsgetstatus" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsgetstatus |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1381 @Regression
Scenario Outline: Verify "mbsilentsmsupdatestatus" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbsilentsmsupdatestatus |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1374 @Regression	
Scenario Outline: Verify "mblogin" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1360 @Regression
Scenario Outline: Verify "checkmbregistrationwithdeviceid_v1" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/checkmbregistrationwithdeviceid_v1 |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1353 @Regression
Scenario Outline: Verify "checkmbregistration" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/checkmbregistration |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1346 @Regression
Scenario Outline: Verify "verifybranchtoken" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1335 @Regression
Scenario Outline: Verify "verifydebitcard_v1" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifydebitcard_v1 |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1328 @Regression
Scenario Outline: 	Verify "settpin" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1321 @Regression
Scenario Outline: Verify "setloginpin" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1313 @Regression
Scenario Outline: Verify "mbregistration" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/mbregistration |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1306 @Regression
Scenario Outline: Verify "verifyaadharotp" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1299 @Regression
Scenario Outline: Verify "generateaadharotp" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateaadharotp |\src\test\resources\testdata\api\request\mvp\registration\400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\400_MissingMandatoryField.json|

@TestCaseKey=UDB-T1292 @Regression
Scenario Outline: Verify "custInqByMob" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|prelogin|/custInqByMob |\src\test\resources\testdata\api\request\mvp\registration\custInqByMob_400_InvalidJSON.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custInqByMob_400_InvalidJSON.json|

@TestCaseKey=UDB-T1367 @Regression
Scenario Outline: Verify "mbreregistration" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint          |requestBody                                                                 |responseBody|
|registration|/mbreregistration |\src\test\resources\testdata\api\request\mvp\registration\400_BlankBody.json |\src\test\resources\testdata\api\response\expected\mvp\registration\deregister.json|

#404 


@TestCaseKey=UDB-T1341 @Regression
Scenario Outline: Verify "generatebranchtoken" API for Status code 404 "Not Found"    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/generatebranchtoken |\src\test\resources\testdata\api\request\mvp\registration\generatebranchtoken_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|


@TestCaseKey=UDB-T1308 @Regression
Scenario Outline: Verify "verifyaadharotp" API for Status code 404 "Not Found"    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\verifyaadharotp_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

@TestCaseKey=UDB-T1397  @Regression
Scenario Outline: Verify "generateotp" API for Status code 404 "Not Found"    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/generateotp |\src\test\resources\testdata\api\request\mvp\registration\generateotp_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\generateotp_404.json|

@TestCaseKey=UDB-T1404	 @Regression
Scenario Outline: Verify "verifyotp" API for Status code 404 "Not Found"    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 					 |requestBody                                                                 				 |responseBody|
|registration|/verifyotp |\src\test\resources\testdata\api\request\mvp\registration\verifyotp_404.json |\src\test\resources\testdata\api\response\expected\mvp\registration\verifyotp_404.json|

########New#########
 @Regression
Scenario Outline: Verify "generateaadharotp" API "POST" Method for Status code 400 if invalid aadhar number is passed
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateaadharotp |\src\test\resources\testdata\api\request\mvp\registration\generateaadharotp_400_InvalidAadhar.json |\src\test\resources\testdata\api\response\expected\mvp\registration\generateaadharotp_400_InvalidAadhar.json|

#To verify that ETB user wiithout aadhaar number in CBS is not able to register using Aadhaar card
@TestCaseKey=UDB-T34318 @edgecase
Scenario Outline: Verify "generateaadharotp" API "POST" Method for Status code 400 if User aadhaar is not linked with given CIF or without aadhaar number in CBS
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/generateaadharotp |\src\test\resources\testdata\api\request\mvp\registration\generateaadharotp_400_InvalidAadharLinked.json |\src\test\resources\testdata\api\response\expected\mvp\registration\generateaadharotp_400_InvalidAadharLinked.json|

# To verify that  NTB user should not be able to register to DBP - Prelogin API is used for DBP registration Validation
@TestCaseKey=UDB-T34315 @edgecase
Scenario Outline: To verify that  NTB user should not be able to register to DBP    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint 			|requestBody                                                                 				 |responseBody|
|prelogin|/custByMobile |\src\test\resources\testdata\api\request\mvp\registration\custByMobile_NTB.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custByMobile_NTB.json|

#To verify that ETB user gets error when enters incorrect Aadhar OTP
@TestCaseKey=UDB-T34322 @edgecase
Scenario Outline: To verify that ETB user gets error when enters incorrect Aadhar OTP
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service |endpoint      |requestBody                                                                 							|responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\verifyaadharotp_InvalidOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\AadharTwo_AttemptLeft.json|

#To verify that ETB user is not able to set Same TPIN as that of Login PIN
@TestCaseKey=UDB-T34319 @edgecase
Scenario Outline: To verify that ETB user is not able to set Same TPIN as that of Login PIN
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\settpin_asLoginPIN.json |\src\test\resources\testdata\api\response\expected\mvp\registration\settpin_asLoginPIN.json|

#To verify that ETB user is not able to set same Login PIN as that of previous login PIN
@TestCaseKey=UDB-T34320 @edgecase
Scenario Outline: To verify that ETB user is not able to set same Login PIN as that of previous login PIN
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |requestBody                                                                 							|responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\setloginpin_sameasprevious.json |\src\test\resources\testdata\api\response\expected\mvp\registration\setloginpin_sameasprevious.json|

#To verify that ETB user gets error popup when enters incorrect branch token
@TestCaseKey=UDB-T34321 @edgecase
Scenario Outline: To verify that ETB user gets error popup when enters incorrect branch token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 							|responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\verifybranchtoken_IncorrectOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\Branchtwo_AttemptLeft.json|


#To verify that ETB user gets error popup when enters incorrect debit card details
@TestCaseKey=UDB-T34323 @edgecase
Scenario Outline: To verify that ETB user gets error popup when enters incorrect debit card details
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 							|responseBody|
|registration|/verifydebitcard_v1 |\src\test\resources\testdata\api\request\mvp\registration\verifydebitcard_v1_Incorrect.json |\src\test\resources\testdata\api\response\expected\mvp\registration\Debittwo_AttemptLeft.json|


#To verify that ETB user is blocked for 24 hours after 3 attempts on Branch token
@TestCaseKey=UDB-T34324 @edgecase
Scenario Outline: To verify that ETB user is blocked for 24 hours after 3 attempts on Branch token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 							|responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\verifybranchtoken_IncorrectOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\BranchOne_AttemptLeft.json|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\verifybranchtoken_IncorrectOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\Branch_Block.json|

#To verify that ETB user is blocked for 24 hours after 3 attempts on Debit card
@TestCaseKey=UDB-T34325 @edgecase
Scenario Outline: To verify that ETB user is blocked for 24 hours after 3 attempts on Debit card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is <responseCode>
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |responseCode|requestBody                                                                 							|responseBody|
|registration|/verifydebitcard_v1 |500|\src\test\resources\testdata\api\request\mvp\registration\verifydebitcard_v1_Incorrect.json |\src\test\resources\testdata\api\response\expected\mvp\registration\DebitOne_AttemptLeft.json|
|registration|/verifydebitcard_v1 |400|\src\test\resources\testdata\api\request\mvp\registration\verifydebitcard_v1_Incorrect.json |\src\test\resources\testdata\api\response\expected\mvp\registration\Debit_Block.json|


#To verify that ETB user is blocked for 24 hours after 3 attempts on Aadhar card
@TestCaseKey=UDB-T34326 @edgecase
Scenario Outline: To verify that ETB user is blocked for 24 hours after 3 attempts on Aadhar card
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
Examples:
|service     |endpoint         |requestBody                                                                 							|responseBody|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\verifyaadharotp_InvalidOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\AadharOne_AttemptLeft.json|
|registration|/verifyaadharotp |\src\test\resources\testdata\api\request\mvp\registration\verifyaadharotp_InvalidOTP.json |\src\test\resources\testdata\api\response\expected\mvp\registration\Aadhar_Block.json|


#To verify that ETB user is blocked for 24 hours after 3 attempts on Incorrect Login PIN
@TestCaseKey=UDB-T34327 @edgecase
Scenario Outline: To verify that ETB user is blocked for 24 hours after 3 attempts on Incorrect Login PIN
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is <responseCode>
Then user verifies json from <responseBody>
Examples:
|service     |endpoint |responseCode|requestBody                                                                 							|responseBody|
|registration|/mblogin |400|\src\test\resources\testdata\api\request\mvp\registration\mblogin_InvalidPIN.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mblogin_2Attempt.json|
|registration|/mblogin |400|\src\test\resources\testdata\api\request\mvp\registration\mblogin_InvalidPIN.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mblogin_1Attempt.json|
|registration|/mblogin |500|\src\test\resources\testdata\api\request\mvp\registration\mblogin_InvalidPIN.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mblogin_Block.json|
