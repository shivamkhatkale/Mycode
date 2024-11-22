Feature: Regression of Business Services API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/BusinessServices



@Regression @TestCaseKey=UDB-T38472
Scenario Outline: Verify fetchGstList API with Invalid cif and Invalid pan
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint    |requestBody                                                                                        |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|fetchGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTListWithInvalidDetails.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchGSTListWithIvalideDetails.json|

@Regression @TestCaseKey=UDB-T38515
Scenario Outline: Verify verifyUdhyam for Status code 400 with Invalid udyamNumber and valid account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint           |requestBody                                                                                           |requestField  |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber  |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumWithInvalidUdyamName.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyUdyamNumberWithIndudyamName.json|

@Regression @TestCaseKey=UDB-T38517
Scenario Outline: Verify verifyUdhyam for Status code 400 without udyamNumber and valid account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
#Then user verifies json from <responseBody>



Examples:
|service              |endpoint         |requestBody                                                                                         |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumberWithoutUNumber.json   |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/veriyUdyamwithoutUdyanNumber.json|


@Regression @TestCaseKey=UDB-T38514
Scenario Outline: Verify verifyUdhyam for Status code 400 with valid udyamNumber and Invalid account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint         |requestBody                                                                                              |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumberInvalideAccountName.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyUdyamNumberWithIndudyamName.json|

@Regression @TestCaseKey=UDB-T38467
Scenario Outline: Verify verifyUdhyam for Status code 404 with Invalid url 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint          |requestBody                                                                                         |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber.|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumberwithInvalidUrl.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyudyamNumberWithInvalidUrl.json|


@Regression @TestCaseKey=UDB-T38517
Scenario Outline: Verify verifyUdhyam  for Status code 400 without udyamNumber no 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint         |requestBody                                                                                        |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumberWithoutUNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/veriyUdyamwithoutUdyanNumber.json|



@Regression @TestCaseKey=UDB-T38520
Scenario Outline: Verify if Udyam number is not linked to cif API giving 400
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint           |requestBody                                                                                   |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber  |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumCifnotLinked.json|null				 |null							|null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/veriyUdyamNumberCifNotLinked.json|

@Regression @TestCaseKey=UDB-T38503
Scenario Outline: Verify if Udyam number is not linked to account giving 400
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint       |requestBody                                                                              |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLienotlinktoAcc.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifylieNotlinktoAcc.json|


@Regression @TestCaseKey=UDB-T38504
Scenario Outline: Verify Lie API for Status code 400 with Inavlide account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint       |requestBody                                                                                    |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLiewitibvalideAccname.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyleinumberinvalideaccname.json|


@Regression @TestCaseKey=UDB-T38505
Scenario Outline: Verify verifyLEI API  for Status code 400 with Invalid Lei number and valid account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint       |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyinvalideLieNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyIvalideLieNumber.json|


@Regression @TestCaseKey=UDB-T38506
Scenario Outline: Verify verifyLEI API  for Status code 400 without account name
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint       |requestBody                                                                                      |requestField      |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLieNumberwithoutAccName.json|null					     |null			        |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLieNumberWithoutAccountName.json|

@Regression @TestCaseKey=UDB-T38507
Scenario Outline: Verify verify LEI  for Status code 400 without Lei number  
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint           |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber    |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyWithoutLieNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/VerfyWithoutLiNumber.json|


@Regression @TestCaseKey=UDB-T38508
Scenario Outline: Verify  verifyLEI API  for Status code 400 without cif    
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint       |requestBody                                                                            |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLieWithoutCif.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifylieWithoutCif.json|


@Regression @TestCaseKey=UDB-T38509
Scenario Outline: Verify  verify LEI API for Status code 400 invalid cif      
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:

|service              |endpoint       |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifylieWithIvalideCif.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLieWithIvalideCif.json|


@Regression @TestCaseKey=UBI-T38512
Scenario Outline: Verify verifyLEI API  for Status code 400 with Invalid Lei number 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message





Examples:
|service              |endpoint           |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber    |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyinvalideLieNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyIvalideLieNumber.json|


@Regression @TestCaseKey=UBI-T38510
Scenario Outline: Verify verifyLEI API for Status code 404 with valid account name and Lei number
(invalid endpoint url) 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint           |requestBody                                                                                 |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber.   |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifuLiewithInvalideUrl.json|null					|null							 |null				|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifuLiewithInvalideUrl.json|


@Regression @TestCaseKey=UDB-T38454
Scenario Outline: Verify  {{bs-bff-base-url}}/bs-bff-mobile-service/api/v1/addGst for 400 status code without gstin
(invalid endpoint url) 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint |requestBody                                                                           |requestField  |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|addGst   |src/test/resources/testdata/api/request/Drop3/BusinessServices/addGstWithoutgstin.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addGstWithoutgstin.json|


@Regression @TestCaseKey=UDB-T38448
Scenario Outline: Verify  {{bs-bff-base-url}}/bs-bff-mobile-service/api/v1/addGst for 400 status code with Invalid gstin 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint      |requestBody                                                                                      |requestField |responsefield     |filename     |responseBody|
|bs-bff-mobile-service|addGst        |src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTrequestWithIvalideGstin.json|null					|null							 |null				|src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTrequestWithIvalideGstin.json|


@TestDataScenario  @TestCaseKey=UDB-T38453
Scenario Outline: Verify user can add GST number to the specified account successfully with {{bs-bff-base-url}}/bs-bff-mobile-service/api/v1/addGst with different valid input
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint       |requestBody                                                                                         |requestField |responsefield     |filename     |responseBody|
|bs-bff-mobile-service|addGst         |src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTResponceWithDiffValidInput.json|null					|null							 |null				|src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTResponceWithDiffValidInput.json|

@Regression @TestCaseKey=UBI-T38486
Scenario Outline: Verify getAccountList API  with invalid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint      |requestBody                                                                                   |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|getAccountList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccListWithInvalidCif.json  |null				  |null							 |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccListWithInvalideCif.json|


@Regression @TestCaseKey=UBI-T38487
Scenario Outline: Verify getAccountList with valid cif but single acc linked
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint      |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getAccountList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccountList.json|


@Regression @TestCaseKey=UBI-T38488
Scenario Outline: Verify getAccountList with Invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint        |requestBody                                                                       |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getAccountList. |src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccountList.json|

#need to update status code 500
@Regression @TestCaseKey=UBI-T38489
Scenario Outline: Verify getAccountList API for status code 500 with valid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint      |requestBody                                                                       |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|getAccountList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json|null					|null							 |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccountList.json|


#need to update status code 500
@Regression @TestCaseKey=UDB-T38519
Scenario Outline: Verify  API for 500 staus with verified and unverified Gst list
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint         |requestBody                                                                          |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyudyamNumber.json|



@Regression @TestCaseKey=UDB-T38478
Scenario Outline: Verify getGstList API with Invalid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint  |requestBody                                                                                       |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getGstList|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getGSTListInvalidCif.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLieNumber.json|


@Regression @TestCaseKey=UDB-T38484
Scenario Outline: Verify getGstList  API for 404 with valid cif but incorrect endpoint url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>



Examples:
|service              |endpoint   |requestBody                                                                              |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getGstList.|src/test/resources/testdata/api/request/Drop3/BusinessServices/getGStListInvalideUrl.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getGSTListInvalideUrl.json|





@Regression @TestCaseKey=UDB-T38475
Scenario Outline: Verify fetchGstListAPI for 404 with valid cif but incorrect endpoint url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint     |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|fetchGstList.| src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTListInvalidUrl.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchGSTListInavlideUrl.json|

#need to chnage status code 500
@Regression @TestCaseKey=UDB-T38476
Scenario Outline: Verify fetchGstListAPI for 500 with valid details
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint    |requestBody                                                                     |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|fetchGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTList.json|null					|null							 |null				|src/test/resources/testdata/api/response/Drop3/BusinessServices/getGSTList.json|





@Regression @TestCaseKey=UDB-T38467
Scenario Outline: Verify addUdhyam API   for Status code 404 with invalide URL 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                                |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|addUdyam.|src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdyamWithInvalidUrl.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdyamWithIvalidUrl.json|


@Regression @TestCaseKey=UDB-T38468
Scenario Outline: Verify fetchGstList API for 500 staus with add udyam number 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                   |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|addUdyam|src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdayam.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdayam.json|



@Regression @TestCaseKey=UDB-T38522
Scenario Outline: Verify verifyGst API  for Status code 400 with gtin linked to different account 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTWithDiffGstinLink.json |null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTWithDiffGstinLink.json|


@Regression @TestCaseKey=UDB-T38523
Scenario Outline: Verify verifyGst API  for Status code 400 with Invalid gstin 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTWithInvalidGstin.json |null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTInvalidGstin.json|

#NA TEst CAse
@Regression @TestCaseKey=UDB-T38524
Scenario Outline: Verify verifyGst API  for Status code 400  with Invalid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                                   |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTWithInvalidCif.json |null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTInvalidCif.json|


@Regression @TestCaseKey=UDB-T38527
Scenario Outline: Verify verifyGst API  for Status code 404  with Invalid url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst.|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGST.json   |null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTWithInavalidUrl.json|


@Regression @TestCaseKey=UDB-T38528
Scenario Outline: Verify verifyGst API  for Status code 400  without cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTwithoutCif.json|null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTwithoutCif.json|

@Regression @TestCaseKey=UDB-T38529
Scenario Outline: Verify verifyGst API  for Status code 400  without gstin
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTwihtougstin.json|null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTwithoutGstin.json|

@Regression @TestCaseKey=UDB-T38530
Scenario Outline: Verify verifyGst API  for Status code 400  without businessName
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTwithoutbusinessName.json|null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGstwithoutAccBusinessName.json|


@Regression @TestCaseKey=UDB-T38531
Scenario Outline: Verify verifyGst API  for Status code 400  without AccountName
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                     |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|verifyGst|src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGSTwithoutAccName.json|null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTwihtoutAccName.json|

@Regression @TestCaseKey=UBI-T38456
Scenario Outline: Verify addLeiNumber API  for Status code 400 with invalid cif
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                                                  |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|addLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/addLeiNujmberWithInvalideCif.json          |null					|null				       |null			 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addLeiNujmberWithInvalideCif.json|


@Regression @TestCaseKey=UBI-T38459
Scenario Outline: Verify addLeiNumber API  for Status code 404 when endpoint url is incorrect
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>



Examples:
|service              |endpoint |requestBody                                                                              |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|addLeiNumber.|src/test/resources/testdata/api/request/Drop3/BusinessServices/addLieNumber.json       |null					|null				       |null		 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addLeiNumberWithInvalidUrl.json|

#need 500 Status 
@Regression @TestCaseKey=UBI-T38460
Scenario Outline: Verify POST /bs-bff-mobile-service/api/v1/addLeiNumber API  for Status code 500
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint    |requestBody                                                                     |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|addLeiNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/addLieNumber.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addLieNumber.json|


#Edge cases 

@EgdeCases @TestCaseKey=UDB-T38466
Scenario Outline: Verify addUdhyam API  for Status code 200 without account Type as its not mandatory
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint |requestBody                                                                                   |requestField  |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|addUdyam |src/test/resources/testdata/api/request/Drop3/BusinessServices/addudyamWithoutAccType.json    |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdyamWithoutAccType.json|


@EgdeCases @TestCaseKey=UDB-T38465
Scenario Outline: Verify addUdhyam API   for Status code 200 without account Number as it is non mandatory.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint |requestBody                                                                                        |requestField  |responsefield    | filename   |responseBody|
|bs-bff-mobile-service|addUdyam |src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdayamWithoutAccNumber.json      |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdyamWithoutAccNumber.json|



@EgdeCases @TestCaseKey=UDB-01
Scenario Outline: Verify fetchGstList API for 405 staus with GET method 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                          |requestField  |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|fetchGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/fetchGSTList.json |null					|null							 |null			|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/fetchGSTListWithGET.json|



@EgdeCases @TestCaseKey=UDB-02
Scenario Outline: Verify getGstList Get Gst List API for 405 status with GET method 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                      |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|getGstList|src/test/resources/testdata/api/request/Drop3/BusinessServices/getGSTList.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getGSTListWithGET.json|


@EgdeCases @TestCaseKey=UDB-03
Scenario Outline: Verify addUdyam  API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                               |requestField |responsefield     |filename   |responseBody|
|bs-bff-mobile-service|addUdyam|src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdayam.json             |null					|null							 |null		 	 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdyamWithGET.json|


@EgdeCases @TestCaseKey=UDB-04
Scenario Outline: Verify addLieNumber  API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint    |requestBody                                                                           |requestField      |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|addLieNumber|src/test/resources/testdata/api/request/Drop3/BusinessServices/addLieNumber.json      |null					     |null						  |null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addLieWithGET.json|


@EgdeCases @TestCaseKey=UDB-05
Scenario Outline: Verify addGST API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                               |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|addGst  |src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTrequest.json         |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addGSTWithGET.json|


@EgdeCases @TestCaseKey=UDB-06
Scenario Outline: Verify getAccountList API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                                        |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|getAccountList  |src/test/resources/testdata/api/request/Drop3/BusinessServices/getAccountList.json         |null				 |null							|null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/getAccoutnListWithGET.json|


@EgdeCases @TestCaseKey=UDB-07
Scenario Outline: Verify verifyLeiNumber API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint|requestBody                                                                                        |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyLeiNumber  |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyLieNumber.json         |null				 |null							|null				 |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyLieNumberWithGET.json|


@EgdeCases @TestCaseKey=UDB-08
Scenario Outline: Verify verifyGst API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint   |requestBody                                                                                        |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyGst  |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyGST.json                      |null				  |null						  |null				  |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyGSTWithGET.json|


@EgdeCases @TestCaseKey=UDB-09
Scenario Outline: Verify verifyUdyamNumber API for 405 status with GET method
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>



Examples:
|service              |endpoint           |requestBody                                                                                         |requestField |responsefield     |filename    |responseBody|
|bs-bff-mobile-service|verifyUdyamNumber  |src/test/resources/testdata/api/request/Drop3/BusinessServices/verifyUdyamNumber.json               |null				  |null						  |null				  |src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/verifyUdyamNumberWithGET.json|


@E2E @TestCaseKey=UDB-T38447
Scenario Outline: Verify user can add GST number to the specified account successfully
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service              |endpoint  |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|addGst    |src/test/resources/testdata/api/request/Drop3/BusinessServices/addGSTrequest.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addGSTResponce.json|


@E2E @TestCaseKey=UDB-T38461
Scenario Outline: Verify user can add Udyam number to the specified account successfully with POST/account/udyam
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service              |endpoint           |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|bs-bff-mobile-service|addUdyam          |src/test/resources/testdata/api/request/Drop3/BusinessServices/addUdayam.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/BusinessServices/addUdayam.json|

