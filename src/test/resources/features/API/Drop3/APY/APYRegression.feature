Feature: Regression of APY API
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/APY


@Regression @TestCaseKey=UDB-T36353
Scenario Outline: Verify "saveAPY" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/SaveApy_OnlyOptionalFeilds.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/SaveApy_OnlyOptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36354
Scenario Outline: Verify "saveAPY" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/SaveApy_BlankBody.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/SaveApy_BlankBody.json|

@Regression @TestCaseKey=UDB-T36355
Scenario Outline: Verify "saveAPY" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/SaveAPY_invalidJSONbody.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/SaveAPY_invalidJSONbody.json|

@Regression @TestCaseKey=UDB-T36356
Scenario Outline: Verify "saveApy" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/SaveAPY_405Response.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/SaveAPY_405Response.json|



@Regression @TestCaseKey=UDB-T36357
Scenario Outline: Verify "saveAPY" API for Status code 404 "Not Found" if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |requestBody                                                                 |requestField |responsefield     | filename   |responseBody|
|apy|saveApy1|src/test/resources/testdata/api/request/Drop3/APY/SaveAPY.json|null         |null              |null        |src/test/resources/testdata/api/response/expected/Drop3/APY/SaveAPY.json|

@Regression @TestCaseKey=UDB-T36361
Scenario Outline: Verify "OpenAPY" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|openApy|src/test/resources/testdata/api/request/Drop3/APY/openApy_OptionalFeilds.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36362
Scenario Outline: Verify "OpenAPY" API "POST" Method for Status code 400 if Request body is blank
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|openApy|src/test/resources/testdata/api/request/Drop3/APY/openApy_BlankBody.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_BlankBody.json|

@Regression @TestCaseKey=UDB-T36363
Scenario Outline: Verify "OpenAPY" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|openApy|src/test/resources/testdata/api/request/Drop3/APY/openApy_InvalidJson.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_InvalidJson.json|

@Regression @TestCaseKey=UDB-T363364
Scenario Outline: Verify "OpenAPY" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|openApy1|src/test/resources/testdata/api/request/Drop3/APY/openApy.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_404Response.json|

@Regression @TestCaseKey=UDB-T36365
Scenario Outline: Verify "openApy" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|openApy|src/test/resources/testdata/api/request/Drop3/APY/openApy_405.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_405.json|


@Regression @TestCaseKey=UDB-T36369
Scenario Outline: Verify "getPremiumPayable" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable_OptionalFeilds.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36370
Scenario Outline: Verify "getPremiumPayable" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable_BlankBody.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable_BlankBody.json|

@Regression @TestCaseKey=UDB-T36371
Scenario Outline: Verify "getPremiumPayable" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable_InvalidJson.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36372
Scenario Outline: Verify "getPremiumPayable" API for Status code 404 "Not Found" if we pass wrong Endpoint url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getPremiumPayable.|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable.json|

@Regression @TestCaseKey=UDB-T36373
Scenario Outline: Verify "getPremiumPayable" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable_405.json|


@Regression @TestCaseKey=UDB-T36377
Scenario Outline: Verify "getInvestmentAccounts" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts_OptionalFeilds.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36378
Scenario Outline: Verify "getInvestmentAccounts" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts_BlankBody.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts_BlankBody.json|

@Regression @TestCaseKey=UDB-T36379
Scenario Outline: Verify "getInvestmentAccounts" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts_InvalidJson.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36380
Scenario Outline: Verify "getInvestmentAccounts" API for Status code 404 "Not Found" if we pass wrong Endpoint url
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInvestmentAccounts2|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts_404.json|

@Regression @TestCaseKey=UDB-T36381
Scenario Outline: Verify "getInvestmentAccounts" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts_405.json|


@Regression @TestCaseKey=UDB-T36385
Scenario Outline: Verify "getInitialContribution" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_OptionalFeilds.json|null         |null              |  null   |  src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36386
Scenario Outline: Verify "getInitialContribution" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_BlankBody.json|null         |null              |  null   |  src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_BlankBody.json|

@Regression @TestCaseKey=UDB-T36387
Scenario Outline:  Verify "getInitialContribution" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_InvalidJson.json|null         |null              |  null   | src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36388
Scenario Outline: Verify "getInitialContribution" API for Status code 404 "Not Found" if we pass wrong endpoint URL.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInitialContribution2|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution.json|

@Regression @TestCaseKey=UDB-T36389
Scenario Outline: Verify "getInitialContribution" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_405.json|


@Regression @TestCaseKey=UDB-T36393
Scenario Outline: Verify "getGbmNominee" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee_OptionalFeilds.json|null         |null              |  null   |  src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36394
Scenario Outline: Verify "getGbmNominee" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee_BlankBody.json|null         |null              |  null   |  src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee_BlankBody.json|

@Regression @TestCaseKey=UDB-T36395
Scenario Outline:  Verify "getGbmNominee" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee_InvalidJson.json|null         |null              |  null   | src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36396
Scenario Outline: Verify "getGbmNominee" API for Status code 404 "Not Found" if we pass wrong endpoint URL.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getGbmNominee2|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee.json|

@Regression @TestCaseKey=UDB-T36397
Scenario Outline: Verify "getGbmNominee" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee_405.json|


@Regression @TestCaseKey=UDB-T36401
Scenario Outline: Verify "getFinancialYears" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears_OptionalFeilds.json|null         |null              |  null   | src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36402
Scenario Outline:  Verify "getFinancialYears" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears_BlankBody.json|null         |null              |  null   | src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears_BlankBody.json|

@Regression @TestCaseKey=UDB-T36403
Scenario Outline: Verify "getFinancialYears" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36404
Scenario Outline: Verify "getFinancialYears" API for Status code 404 "Not Found" if we pass wrong Endpoint URL.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getFinancialYearss|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears.json|

@Regression @TestCaseKey=UDB-T36405
Scenario Outline: Verify "getFinancialYears" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears_405.json|


@Regression @TestCaseKey=UDB-T36409
Scenario Outline: Verify "getApyTermsAndCondition" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition_OptionalFeilds.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36410
Scenario Outline: Verify "getApyTermsAndCondition" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition_BlankBody.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition_BlankBody.json|

@Regression @TestCaseKey=UDB-T36411
Scenario Outline: Verify "getApyTermsAndCondition" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36412
Scenario Outline: Verify "getApyTermsAndCondition" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition_405Response.json|


@Regression @TestCaseKey=UDB-T36413
Scenario Outline: Verify "getApyTermsAndCondition" API for Status code 404 "Not Found" if we pass wrong Endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyTermsAndConditionhj|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition.json|


@Regression @TestCaseKey=UDB-T36418
Scenario Outline: Verify "getApyStatus" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus_OptionalFeilds.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36419
Scenario Outline:  Verify "getApyStatus" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus_BlankBody.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus_BlankBody.json|

@Regression @TestCaseKey=UDB-T36420
Scenario Outline: Verify "getApyStatus" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus_InvalidJson.json|


@Regression @TestCaseKey=UDB-T36421
Scenario Outline: Verify "getApyStatus" API for Status code 404 "Not Found" if we pass wrong Endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyStatus5|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getAPYStatus_404.json|

@Regression @TestCaseKey=UDB-T36422
Scenario Outline: Verify "getApyStatus" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus_405.json|


@Regression @TestCaseKey=UDB-T36426
Scenario Outline: Verify "getApyDetailsToResume" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_OptionalFeilds.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36427
Scenario Outline:  Verify "getApyDetailsToResume" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_BlankBody.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_BlankBody.json|

@Regression @TestCaseKey=UDB-T36428
Scenario Outline: Verify "getApyDetailsToResume" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36429
Scenario Outline: Verify "getApyDetailsToResume" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyDetailsToResume1|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36430
Scenario Outline: Verify "getApyDetailsToResume" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_405.json|


@Regression @TestCaseKey=UDB-T36434
Scenario Outline: Verify "getApyAccountDetails" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyAccountDetails_OptionalFeilds.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36435
Scenario Outline: Verify "getApyAccountDetails" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyAccountDetails_BlankBody.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails_BlankBody.json|

@Regression @TestCaseKey=UDB-T36436
Scenario Outline: Verify "getApyAccountDetails" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyAccountDetails_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36437
Scenario Outline: Verify "getApyAccountDetails" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getApyAccountDetails56|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails_404Response.json|

@Regression @TestCaseKey=UDB-T36438
Scenario Outline: Verify "getApyAccountDetails" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_405.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_405.json|


@Regression @TestCaseKey=UDB-T36459
Scenario Outline: Verify "checkExistingAccounts" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|checkExistingAccounts|src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts_OptionalFeilds.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_OptionalFeilds.json|

@Regression @TestCaseKey=UDB-T36460
Scenario Outline: Verify "checkExistingAccounts" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|checkExistingAccounts|src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts_BlankBody.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_BlankBody.json|

@Regression @TestCaseKey=UDB-T36461
Scenario Outline: Verify "checkExistingAccounts" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|checkExistingAccounts|src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts_InvalidJson.json|null         |null              |  null   |src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_InvalidJson.json|

@Regression @TestCaseKey=UDB-T36462
Scenario Outline: Verify "checkExistingAccounts" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends get request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|checkExistingAccounts| src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_405Response.json|


@Regression @TestCaseKey=UDB-T36463
Scenario Outline: Verify "checkExistingAccounts" API for Status code 404 "Not Found"
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for Credit Card features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint                |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy     |checkExistingAccounts905| src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_404Response.json|


@EdgeCase @TestCaseKey=UDB-T39009
Scenario Outline: Verify that  "saveAPY" API does not accept a monthly pension amount greater than 5000.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/saveAPY_Pension.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/saveAPY_Pension.json|


@EdgeCase @TestCaseKey=UDB-T39010
Scenario Outline: Verify "saveAPY" API does not accept Contribution Frequency other than 1 month, Quarterly (3 Months) ani 6 months(half yearly)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/saveAPY_MonthlyContribution.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/saveAPY_MonthlyContribution.json|

@EdgeCase @TestCaseKey=UDB-T39013
Scenario Outline: Verify "saveAPY" API gives an error when minorFlag is true and guardian details are missing.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/saveAPY_MonthlyContribution.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/saveAPY_MonthlyContribution.json|


@EdgeCase @TestCaseKey=UDB-T39011
Scenario Outline: Verify "getInitialContribution" API does not accept monthly pension amount more than  5000.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_MonthlyPension.json|null         |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_MonthlyPension.json|

@EdgeCase @TestCaseKey=UDB-T39012
Scenario Outline: Verify "saveAPY" API gives an error when maritial status is 'Married' and Relationsheep with nominee is other than 'Spouse'
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/saveApy_Marital_status.json|applicationFormNumber       |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/saveApy_Marital_status.json|

@EdgeCase @TestCaseKey=UDB-T39058
Scenario Outline: Verify that 'saveAPY' API returns an error when the marital status is 'Married' and the spouse's Aadhaar number is not included.
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user sends post request for APY features <requestBody>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint    |requestBody                                                                          |requestField |responsefield     | filename|responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/Save_apy_Spouse_aadhar.json|applicationFormNumber       |null              |  null   |     src/test/resources/testdata/api/response/expected/Drop3/APY/Save_apy_Spouse_aadhar.json|

