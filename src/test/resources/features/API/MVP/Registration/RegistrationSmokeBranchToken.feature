Feature: Smoke for Registration using Branch token

Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/registration

@TestCaseKey=UDB-T1363
@TestCaseKey=UDB-T1364
Scenario Outline: Verify to deregister the user using mbreregistration API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mbreregistration |\src\test\resources\testdata\api\request\mvp\registration\deregister.json |\src\test\resources\testdata\api\response\expected\mvp\registration\deregister.json|

@TestCaseKey=UDB-T1362
Scenario Outline: Verify to check mb registration with deviceID using checkmbregistrationwithdeviceid_v1 API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/checkmbregistrationwithdeviceid_v1 |\src\test\resources\testdata\api\request\mvp\registration\checkmbregistrationwithdeviceid_v1.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistrationwithdeviceid_v1_404.json|

@TestCaseKey=UDB-T1377
@TestCaseKey=UDB-T1378
Scenario Outline: Verify to check silent sms is updated with deviceID using mbsilentsmsupdatestatus API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mbsilentsmsupdatestatus |\src\test\resources\testdata\api\request\mvp\registration\mbsilentsmsupdatestatus.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbsilentsmsupdatestatus.json|

@TestCaseKey=UDB-T1384
@TestCaseKey=UDB-T1385
Scenario Outline: Verify to get mobilenumber using mbsilentsmsgetstatus API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mbsilentsmsgetstatus |\src\test\resources\testdata\api\request\mvp\registration\mbsilentsmsgetstatus.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbsilentsmsgetstatus.json|

@TestCaseKey=UDB-T1289
@TestCaseKey=UDB-T1290
Scenario Outline: Verify to get customer cif using custInqByMob API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|prelogin|/custInqByMob |\src\test\resources\testdata\api\request\mvp\registration\custInqByMob.json |\src\test\resources\testdata\api\response\expected\mvp\registration\custInqByMob.json|

@TestCaseKey=UDB-T1309
@TestCaseKey=UDB-T1310
Scenario Outline: Verify to register User using mbregistration API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mbregistration |\src\test\resources\testdata\api\request\mvp\registration\mbregistration.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbregistration.json|

@TestCaseKey=UDB-T1349
@TestCaseKey=UDB-T1350
Scenario Outline: Verify to check mb registration using checkmbregistration API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/checkmbregistration |\src\test\resources\testdata\api\request\mvp\registration\checkmbregistration.json |\src\test\resources\testdata\api\response\expected\mvp\registration\checkmbregistration.json|

@TestCaseKey=UDB-T1338
Scenario Outline: Verify to generate branch token using generatebranchtoken API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/generatebranchtoken |\src\test\resources\testdata\api\request\mvp\registration\generatebranchtoken.json |\src\test\resources\testdata\api\response\expected\mvp\registration\generatebranchtoken.json|

@TestCaseKey=UDB-T1342
@TestCaseKey=UDB-T1343
Scenario Outline: Verify to verify branch token using verifybranchtoken API
Given user enters OTP on console
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers OTP with a post request <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint           |requestBody                                                                 |responseBody|
|registration|/verifybranchtoken |\src\test\resources\testdata\api\request\mvp\registration\verifybranchtoken.json |\src\test\resources\testdata\api\response\expected\mvp\registration\verifybranchtoken.json|

@TestCaseKey=UDB-T1317
@TestCaseKey=UDB-T1318
Scenario Outline: Verify to set loginpin using setloginpin API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/setloginpin |\src\test\resources\testdata\api\request\mvp\registration\setloginpin.json |\src\test\resources\testdata\api\response\expected\mvp\registration\setloginpin.json|

@TestCaseKey=UDB-T1391
@TestCaseKey=UDB-T1392
Scenario Outline: Verify to generate otp for setting transaction pin using generateotp API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody   |requestField   |responsefield  |filename           |responseBody|
|registration|/generateotp |\src\test\resources\testdata\api\request\mvp\registration\generateotp.json |null | null | null|\src\test\resources\testdata\api\response\expected\mvp\registration\generateotp.json|

@TestCaseKey=UDB-T1398
@TestCaseKey=UDB-T1399
Scenario Outline: Verify to validate otp for setting transaction pin using verifyotp API
Given user enters OTP on console
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers OTP with a post request <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint   |requestBody |requestField   |responsefield  |filename           |responseBody|
|registration|/verifyotp |\src\test\resources\testdata\api\request\mvp\registration\verifyotp.json |id,otphint  |response.stateId,response.hint         |generateotp.json   | \src\test\resources\testdata\api\response\expected\mvp\registration\verifyotp.json|


@TestCaseKey=UDB-T1324
@TestCaseKey=UDB-T1325
Scenario Outline: Verify to set transaction pin using settpin API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/settpin |\src\test\resources\testdata\api\request\mvp\registration\settpin.json |\src\test\resources\testdata\api\response\expected\mvp\registration\settpin.json|

@TestCaseKey=UDB-T1370
@TestCaseKey=UDB-T1371
@TestCaseKey=UDB-T34434
Scenario Outline: Verify to login with Loginpin on mobile using mblogin API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\mblogin_req.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbloginResponse.json|

@TestCaseKey=UDB-T34435
Scenario Outline: Verify to login with biometric on mobile using mblogin API
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service     |endpoint             |requestBody                                                                 |responseBody|
|registration|/mblogin |\src\test\resources\testdata\api\request\mvp\registration\mblogin_req_biometric.json |\src\test\resources\testdata\api\response\expected\mvp\registration\mbloginResponse.json|
