Feature: Smoke of Business Services
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/BusinessServices



@TestCaseKey=UBI-T38485
Scenario Outline: Verify getAccountList API for status code 200 with valid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service                |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service  |getAccountList  |src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccountList.json|


@TestCaseKey=UDB-T38521
Scenario Outline: Verify verifyGst  POST api for 200 status code.(valid request body parameters
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint |requestBody                                                                   |requestField  |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGST.json|null					|null							 |null				|src/test/resources/testdata/api/response/Drop3/BusinessServices/verifyGST.json|


@TestCaseKey=UBI-T38477
Scenario Outline: Verify getGstList  POST api for 200 status code
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint  |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|bs-bff-mobile-service|getGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getGSTList.json|null				 |null							|null				|src/test/resources/testdata/api/response/Drop3/BusinessServices/getGSTList.json|

#need correct request data for fetach GST List API
@TestCaseKey=UDB-T38469
Scenario Outline: Verify fetchGstList API for 200 staus with verified and unverified Gst list
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service |endpoint                 |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|fetchGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTList.json|null					|null							 |null				|src/test/resources/testdata/api/response/Drop3/BusinessServices/getGSTList.json|






@TestCaseKey=UDB-T38464
Scenario Outline: Verify addUdhyam API   for Status code 200 without account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                                 |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|addUdyam |src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdayamWithoutAccName.json |null					|null							 |null				|src/test/resources/testdata/api/response/Drop3/BusinessServices/addUdayamWithoutAccName.json|




@TestCaseKey=UBI-T38502
Scenario Outline: Verify verifyLeiNumber API for 200 staus with verified and unverified Gst list
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service |endpoint                    |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLieNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLieNumber.json|

#below API is not working currently getting error code 504
@TestCaseKey=UDB-T38513
Scenario Outline: Verify valid Udyam Number linked to Cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service |endpoint           |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber| src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyudyamNumber.json|


@TestCaseKey=UDB-T38490
Scenario Outline: Verify getCashFlow API  returns a successful response with a valid cash flow data when period type years.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>





Examples:
|service              |endpoint   |requestBody                                                                    |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getCashFlow|src/test/resources/testdata/api/request/Drop3/BusinessServices/getCashFlow.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getCashFlowResponse.json|

