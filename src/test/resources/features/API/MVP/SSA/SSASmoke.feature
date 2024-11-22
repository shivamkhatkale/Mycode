Feature: Smoke for SSA
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/ssa

@TestCaseKey=UDB-T10420
Scenario Outline: Verify user existing ssa account in gbm
#Given user sets the bearer token 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingssa.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexisting.json|

@TestCaseKey=UDB-T10420
Scenario Outline: Verify user have 2 existing ssa account in gbm
#Given user sets the bearer token 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/checkExistingAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_checkexistingssa2.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_checkexisting2.json|


@TestCaseKey=UDB-T10474
Scenario Outline: Verify list of ssa account created by user on Account-Investment tab
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getInvestmentAccounts |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getInvestmentAccounts.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getInvestmentAccounts.json|

@TestCaseKey=UDB-T10494
Scenario Outline: Verify the user downloads the Terms and Conditions
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|ssa|/getSSATermsAndCondition |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getTermsandConditions.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_gettermsandconditions.json|

@TestCaseKey=UDB-T10471
Scenario Outline: Verify Birthtype dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint       |responseBody |
|refmaster|/birth_type |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getBirthtype.json|


@TestCaseKey=UDB-T31341 
Scenario Outline: Verify Birthorder dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint |responseBody|
|refmaster|/birth_order|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getBirthorder.json|

@TestCaseKey=UDB-T10473
Scenario Outline: Verify Relationship dropdown display on Girl Child details screen
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a get request
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint  |responseBody|
|refmaster|/SSY_RELATION_WITH_MINOR|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getRelationship.json|

@TestCaseKey=UDB-T31343
Scenario Outline: Verify the user search for preferred branch for ssa 
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|masterdata|/findBranch|\src\test\resources\testdata\api\request\mvp\ssa\SSA_findbranch.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_findbranch.json|

@TestCaseKey=UDB-T10430
Scenario Outline: Verify the deatils of drop-off SSA application
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSADetailsToResume|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getResume.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getResume.json|


@TestCaseKey=UDB-T10440
Scenario Outline: Verify the user is able to save the created SSA account details
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody  |requestField |responsefield    |filename  |responseBody|												
|ssa|/saveSsa|\src\test\resources\testdata\api\request\mvp\ssa\SSA_saveSSA.json |null |null| null|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_saveSSAresp.json|

@TestCaseKey=UDB-T10450
Scenario Outline: Verify the user is able to open the SSA account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint   | requestBody 																											|requestField       |responsefield              |filename     |responseBody|
|ssa        |/openSsa   |\src\test\resources\testdata\api\request\mvp\ssa\SSA_openSSA.json  |applNum            |applicationFrmNum         |SSA_saveSSA.json  |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_openSSA.json|


@TestCaseKey=UDB-T10410
Scenario Outline: Verify the status of created SSA Application
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message


Examples:
|service    |endpoint      | requestBody 																											        |requestField        |responsefield              | filename                      |responseBody |
|ssa        |/getSSAStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getStatus.json       |applNum   |applicationFrmNum           |SSA_openSSA.json          |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getStatus.json|


@TestCaseKey=UDB-T10399
Scenario Outline: Verify the user get the account details of SSA
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSAAccountDetails|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getSSAAccountDetails|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getSSAAccountDetails|

@TestCaseKey=UDB-T31280
Scenario Outline: Verify the user is able to upload the documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint       |requestBody                                                             |requestField          |responsefield     | filename  |responseBody|
|ssa|/upload|src\test\resources\testdata\api\request\mvp\ssa\SSA_uploadBirthCertificate.json      |applicationFrmNum   |applicationFrmNum           |SSA_openSSA.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_uploadBirthCertificate.json|

@TestCaseKey=UDB-T31290
Scenario Outline: Verify the user is able to download the documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service    |endpoint          | requestBody                                                                 |requestField            |responsefield              | filename                    |responseBody| 
|ssa|/download|\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadBirthCertificate.json             |uri                    | documents.uri             |SSA_uploadBirthCertificate.json    |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadBirthCertificate.json|

@TestCaseKey=UDB-T31300
Scenario Outline: Verify the user delete the uploaded documents(Birth Certificate or Legal Certificate)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint       |requestBody                                                             |requestField          |responsefield     | filename  |responseBody|
|ssa|/removedoc|\src\test\resources\testdata\api\request\mvp\ssa\SSA_removeBirthCertificate.json  |applNum               |applicationFrmNum             |SSA_uploadBirthCertificate.json |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_removeBirthCertificate.json|


@TestCaseKey=UDB-T10389
Scenario Outline: Verify the user is able to download the Acknowledgment Letter
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/AcknowledgementLetter|\src\test\resources\testdata\api\request\mvp\ssa\SSA_acknowledgementLetter.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_acknowledgementLetter.json|

@TestCaseKey=UDB-T10357
Scenario Outline: Verify the user is able to send statement on email
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/emailStatement|\src\test\resources\testdata\api\request\mvp\ssa\SSA_emailStatement.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_emailStatement.json|


@TestCaseKey=UDB-T10367
Scenario Outline: Verify the user is able to download the statement
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/downloadStatement|\src\test\resources\testdata\api\request\mvp\ssa\SSA_downloadStatement.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_downloadStatement.json|

@TestCaseKey=UDB-T10645
Scenario Outline: Verify the user validate the amount contribution on SSA
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/validateContribution|\src\test\resources\testdata\api\request\mvp\ssa\SSA_validateContribution.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_validateContribution.json|

@TestCaseKey=UDB-T10460
Scenario Outline: Verify the user make the contribution on SSA Account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint       |requestBody                                                             |requestField          |responsefield     | filename  |responseBody|
|ssa     |/contribution  |\src\test\resources\testdata\api\request\mvp\ssa\SSA_contribution.json  | null                 |  null            | null      |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_contribution.json|


@TestCaseKey=UDB-T10484
Scenario Outline: Verify the user fetch the Payment status of SSA account contribution
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service    |endpoint          | requestBody                                                                 |requestField            |responsefield              | filename                    |responseBody| 
|ssa        |/getPaymentStatus |\src\test\resources\testdata\api\request\mvp\ssa\SSA_getPaymentStatus.json   |investmentContribution.channelTxnId            | investmentContribution.channelTxnId              | SSA_contribution.json       |\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getPaymentStatus.json|

@TestCaseKey=UDB-T10347
Scenario Outline: Verify the user fetch the transactions statement of SSA account
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message
Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/getSSATransactions|\src\test\resources\testdata\api\request\mvp\ssa\SSA_getTransaction.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_getTransaction.json|

@TestCaseKey=UDB-T31330
Scenario Outline: Verify the user generate the CRM lead on click of events(Closure/Partial Withdrawal/Transfer Branch)
#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verifies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|ssa|/createLead|\src\test\resources\testdata\api\request\mvp\ssa\SSA_createLead.json|\src\test\resources\testdata\api\response\expected\mvp\ssa\SSA_createLead.json|



