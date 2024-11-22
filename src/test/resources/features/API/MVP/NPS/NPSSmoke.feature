Feature: Smoke for NPS
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/nps
 
Scenario Outline: Verify user existing nps account in protean

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck.json|

Scenario Outline: Verify the User is able to fetch Schemes

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/fetchNpsPfmScheme | \src/test/resources/testdata/api/request/mvp/nps/fetchNpsPfmScheme.json |\src/test/resources/testdata/api/response/expected/mvp/nps/fetchNpsPfmScheme.json|

Scenario Outline: Verify user is able to save NPS for valid customer

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | \src/test/resources/testdata/api/request/mvp/nps/saveNPSAccountDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccountDetails.json|

Scenario Outline: Verify user is able to upload Document for valid customer

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | \src/test/resources/testdata/api/request/mvp/nps/uploadDocument.json |\src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument.json|

Scenario Outline: Verify user is able to review the saveDetails

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/npsDetailsToResume | \src/test/resources/testdata/api/request/mvp/nps/npsDetailsToResume.json |\src/test/resources/testdata/api/response/expected/mvp/nps/npsDetailsToResume.json|


Scenario Outline: Verify user is able to view the Contribution Details

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSummary | \src/test/resources/testdata/api/request/mvp/nps/getContributionSummary.json |\src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary.json|

Scenario Outline: Verify "schemeDetails" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetails | \src/test/resources/testdata/api/request/mvp/nps/schemeDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails.json|

Scenario Outline: Verify "viewSubscriberDetails" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDetails | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails.json|


Scenario Outline: Verify the NPS account created by user display on Account-Investment tab

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message
Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/checkNpsAccBal | \src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal.json |\src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal.json|


Scenario Outline: Verify the user get is able to make Contribution of Existing Account

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
#Then user verfies json from <responseBody> which is not exact message

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/contribute | \src/test/resources/testdata/api/request/mvp/nps/contribute.json |\src/test/resources/testdata/api/response/expected/mvp/nps/contribute.json|

Scenario Outline: Verify "openNPS" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/openNPS | /src/test/resources/testdata/api/request/mvp/nps/openNPS.json|/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS.json|

Scenario Outline: Verify "emailNPSStatement" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verfies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/emailNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json|/src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json|

Scenario Outline: Verify "downloadNPSStatement" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verfies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/downloadNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json|/src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json|

