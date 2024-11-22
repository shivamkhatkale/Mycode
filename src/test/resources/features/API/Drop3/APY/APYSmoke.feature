Feature: Smoke of APY
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop3/APY



@TestCaseKey=UDB-T36351
Scenario Outline: Verify "saveAPY" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|saveApy| src/test/resources/testdata/api/request/Drop3/APY/SaveAPY.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/SaveAPY.json|


@TestCaseKey=UDB-T36352
Scenario Outline: Verify "saveAPY" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|saveApy|src/test/resources/testdata/api/request/Drop3/APY/SaveApy_MandatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/SaveApy_MandatoryFeilds.json|

@TestCaseKey=UDB-T36359
Scenario Outline: Verify "openAPY" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|openApy| src/test/resources/testdata/api/request/Drop3/APY/openApy_Mandatory_optional.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_Mandatory_optional.json|


@TestCaseKey=UDB-T36360
Scenario Outline: Verify "openAPY" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|openApy|src/test/resources/testdata/api/request/Drop3/APY/openApy_Mandatory_optional.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/openApy_Mandatory_optional.json|

@TestCaseKey=UDB-T36367
Scenario Outline: Verify "getPremiumPayable" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPremiumPayable.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getPremiumPayable.json|


@TestCaseKey=UDB-T36368
Scenario Outline: Verify "getPremiumPayable" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getPremiumPayable|src/test/resources/testdata/api/request/Drop3/APY/getPrimiumPayable_MAndatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getPrimiumPayable_MAndatoryFeilds.json|

@TestCaseKey=UDB-T36375
Scenario Outline: Verify "getInvestmentAccounts" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts.json|

@TestCaseKey=UDB-T36376
Scenario Outline: Verify "getInvestmentAccounts" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInvestmentAccounts|src/test/resources/testdata/api/request/Drop3/APY/getInvestmentAccounts.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInvestmentAccounts.json|

@TestCaseKey=UDB-T36383
Scenario Outline: Verify "getInitialContribution" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution.json|

@TestCaseKey=UDB-T36384
Scenario Outline: Verify "getInitialContribution" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getInitialContribution|src/test/resources/testdata/api/request/Drop3/APY/getInitialContribution_MandatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getInitialContribution_MandatoryFeilds.json|

@TestCaseKey=UDB-T36391
Scenario Outline: Verify "getGbmNominee" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee.json|

@TestCaseKey=UDB-T36392
Scenario Outline: Verify "getGbmNominee" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getGbmNominee|src/test/resources/testdata/api/request/Drop3/APY/getGbmNominee.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getGbmNominee.json|

@TestCaseKey=UDB-T36399
Scenario Outline: Verify "getFinancialYears" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears.json|

@TestCaseKey=UDB-T36400
Scenario Outline: Verify "getFinancialYears" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getFinancialYears|src/test/resources/testdata/api/request/Drop3/APY/getFinancialYears_MandatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getFinancialYears_MandatoryFeilds.json|

@TestCaseKey=UDB-T36407
Scenario Outline: Verify "getApyTermsAndCondition" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition.json|

@TestCaseKey=UDB-T36408
Scenario Outline: Verify "getApyTermsAndCondition" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyTermsAndCondition|src/test/resources/testdata/api/request/Drop3/APY/getApyTermsAndCondition_MandatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyTermsAndCondition_MandatoryFeilds.json|

@TestCaseKey=UDB-T36416
Scenario Outline: Verify "getApyStatus" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus.json|

@TestCaseKey=UDB-T36417
Scenario Outline: Verify "getApyStatus" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyStatus|src/test/resources/testdata/api/request/Drop3/APY/getApyStatus_MandatoryFeilds.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyStatus_MandatoryFeilds.json|

@TestCaseKey=UDB-UDB-T36424
Scenario Outline: Verify "getApyDetailsToResume" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume.json|

@TestCaseKey=UDB-T36425
Scenario Outline: Verify "getApyDetailsToResume" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyDetailsToResume|src/test/resources/testdata/api/request/Drop3/APY/getApyDetailsToResume_Mandatory.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyDetailsToResume_Mandatory.json|


@TestCaseKey=UDB-T36432
Scenario Outline: Verify "getApyAccountDetails" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyAccountDetails.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails.json|

@TestCaseKey=UDB-T36433
Scenario Outline: Verify "getApyAccountDetails" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|getApyAccountDetails|src/test/resources/testdata/api/request/Drop3/APY/getApyAccountDetails.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/getApyAccountDetails.json|

@TestCaseKey=UDB-T36457
Scenario Outline: Verify "checkExistingAccounts" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|checkExistingAccounts|src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts.json |null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts.json|

@TestCaseKey=UDB-T36458
Scenario Outline: Verify "checkExistingAccounts" API "POST" Method for Status code 200 with Only Mandatory fieldsGiven user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint        |requestBody                                                                  |requestField |responsefield     | filename   |responseBody|
|apy|checkExistingAccounts|src/test/resources/testdata/api/request/Drop3/APY/checkExistingAccounts_Mandatory.json|null					|null							 |null				|src/test/resources/testdata/api/response/expected/Drop3/APY/checkExistingAccounts_Mandatory.json|

