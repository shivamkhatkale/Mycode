Feature: Regression for NPS
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for mvp/nps
 

Scenario Outline: Verify "duplicateCheck" API "POST" Method for Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | \src/test/resources/testdata/api/request/mvp/nps/duplicateCheck.json |\src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck.json|

Scenario Outline: Verify "duplicateCheck" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_EmptyBody_400.json|

Scenario Outline: Verify "duplicateCheck" API "POST" Method returns Status code 400 if Request body is blank test

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_EmptyBody_400.json|

Scenario Outline: Verify "duplicateCheck" API "POST" Method returns Status code 400 if Request body is having invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_InvalidJson_400.json|

Scenario Outline: Verify "duplicateCheck" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "duplicateCheck" API for Status code returns 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateCheck | /src/test/resources/testdata/api/request/mvp/nps/duplicateCheck.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_DiffHTTPMethod_405.json|

Scenario Outline: Verify "duplicateCheck" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/duplicateChe | \src/test/resources/testdata/api/request/mvp/nps/duplicateCheck.json |/src/test/resources/testdata/api/response/expected/mvp/nps/duplicateCheck_InvalidEndPoint_404.json|

Scenario Outline: Verify "saveNPSAccountDetails" API "POST" Method for Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | \src/test/resources/testdata/api/request/mvp/nps/saveNPSAccountDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccountDetails.json|


Scenario Outline: Verify "saveNPSAccountDetails" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | /src/test/resources/testdata/api/request/mvp/nps/saveNPSAccount_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccount_EmptyBody_400.json|

Scenario Outline: Verify "saveNPSAccountDetails" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | /src/test/resources/testdata/api/request/mvp/nps/saveNPSAccount_InvalidJson_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccount_InvalidJson_400.json|

Scenario Outline: Verify "/saveNPSAccountDetails" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | /src/test/resources/testdata/api/request/mvp/nps/saveNPSAccount_MandatoryFieldBlank_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccount_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "saveNPSAccountDetails" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetails | \src/test/resources/testdata/api/request/mvp/nps/saveNPSAccountDetails.json |/src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccount_DiffHTTPMethod_405.json|

Scenario Outline: Verify "saveNPSAccountDetails" API returns Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/saveNPSAccountDetai | \src/test/resources/testdata/api/request/mvp/nps/saveNPSAccountDetails.json |/src/test/resources/testdata/api/response/expected/mvp/nps/saveNPSAccount_InvalidEndPoint_404.json|

Scenario Outline: Verify "openNPS" API "POST" Method returns Status code 200 with Only Mandatory fields

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/openNPS | /src/test/resources/testdata/api/request/mvp/nps/openNPS.json|/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS.json|

Scenario Outline: Verify "openNPS" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/openNPS | /src/test/resources/testdata/api/request/mvp/nps/openNPS_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS_EmptyBody_400.json|

Scenario Outline: Verify "openNPS" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/openNPS |/src/test/resources/testdata/api/request/mvp/nps/openNPS_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS_InvalidJson_400.json|


Scenario Outline: Verify "openNPS" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/openNPS |/src/test/resources/testdata/api/request/mvp/nps/openNPS_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "openNPS" API returns Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/openNPS | /src/test/resources/testdata/api/request/mvp/nps/openNPS.json|/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS_DiffHTTPMethod_405.json|

Scenario Outline: Verify "openNPS" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/open | /src/test/resources/testdata/api/request/mvp/nps/openNPS.json|/src/test/resources/testdata/api/response/expected/mvp/nps/openNPS_InvalidEndPoint_404.json|


Scenario Outline: Verify "detailsToResume" API "POST" Method returns Status code 200 with Only Mandatory fields

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResume | /src/test/resources/testdata/api/request/mvp/nps/detailsToResume.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume.json|

Scenario Outline: Verify "detailsToResume" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResume | /src/test/resources/testdata/api/request/mvp/nps/detailsToResume_EmptyBody_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_EmptyBody_400.json|

Scenario Outline: Verify "/detailsToResume" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResume | /src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_InvalidJson_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_InvalidJson_400.json|

Scenario Outline: Verify "detailsToResume" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResume | /src/test/resources/testdata/api/request/mvp/nps/detailsToResume_MandatoryFieldBlank_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "/detailsToResume" API returns Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResume | /src/test/resources/testdata/api/request/mvp/nps/detailsToResume.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_DiffHTTPMethod_405.json|

Scenario Outline: Verify "detailsToResume" API returns Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/npsDetailsToResu | /src/test/resources/testdata/api/request/mvp/nps/detailsToResume.json|/src/test/resources/testdata/api/response/expected/mvp/nps/detailsToResume_InvalidEndPoint_404.json|

Scenario Outline: Verify "/uploadDocuments" API "POST" Method for Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | \src/test/resources/testdata/api/request/mvp/nps/uploadDocument.json |\src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument.json|



Scenario Outline: Verify "uploadDocuments" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | /src/test/resources/testdata/api/request/mvp/nps/uploadDocument_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument_EmptyBody_400.json|

Scenario Outline: Verify "uploadDocuments" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | /src/test/resources/testdata/api/request/mvp/nps/uploadDocument_InvalidJson_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument_InvalidJson_400.json|


Scenario Outline: Verify "uploadDocuments" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | /src/test/resources/testdata/api/request/mvp/nps/uploadDocument_MandatoryFieldBlank_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument_MandatoryFieldBlank_400.json|


Scenario Outline: Verify "uploadDocuments" API returns Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocument | \src/test/resources/testdata/api/request/mvp/nps/uploadDocument.json|/src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument_DiffHTTPMethod_405.json|


Scenario Outline: Verify "/uploadDocuments" API returns Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/uploadDocu | \src/test/resources/testdata/api/request/mvp/nps/uploadDocument.json|/src/test/resources/testdata/api/response/expected/mvp/nps/uploadDocument_InvalidEndPoint_404.json|

Scenario Outline: Verify "/getContributionSummary" API "POST" Method for Status code 200 with Only Mandatory fields

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


Scenario Outline: Verify "getContributionSummary" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSummary | /src/test/resources/testdata/api/request/mvp/nps/getContributionSummary_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary_EmptyBody_400.json|

Scenario Outline: Verify "getContributionSummary" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSummary | /src/test/resources/testdata/api/request/mvp/nps/getContributionSummary_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary_InvalidJson_400.json|

Scenario Outline: Verify "getContributionSummary" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSummary | /src/test/resources/testdata/api/request/mvp/nps/getContributionSummary_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "getContributionSummary" API returns Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSummary | \src/test/resources/testdata/api/request/mvp/nps/getContributionSummary.json |\src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary_DiffHTTPMethod_405.json|

Scenario Outline: Verify "getContributionSummary" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/getContributionSumm | \src/test/resources/testdata/api/request/mvp/nps/getContributionSummary.json |\src/test/resources/testdata/api/response/expected/mvp/nps/getContributionSummary_InvalidEndPoint_404.json|

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


Scenario Outline: Verify "viewSubscriberDetails" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDetails | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails_EmptyBody_400.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails_EmptyBody_400.json|

Scenario Outline: Verify "viewSubscriberDetails" API "POST" Method returns Status code 400 if Request body is invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDetails | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails_InvalidJson_400.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails_InvalidJson_400.json|

Scenario Outline: Verify "viewSubscriberDetails" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDetails | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails_MandatoryFieldBlank_400.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "viewSubscriberDetails" API returns Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDetails | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails_DiffHTTPMethod_405.json|


Scenario Outline: Verify "/viewSubscriberDetails" API returns Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/viewSubscriberDeta | \src/test/resources/testdata/api/request/mvp/nps/viewSubscriberDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/viewSubscriberDetails_InvalidEndPoint_404.json|

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


Scenario Outline: Verify "schemeDetails" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetails| /src/test/resources/testdata/api/request/mvp/nps/schemeDetails_InvalidJson_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails_InvalidJson_400.json|


Scenario Outline: Verify "schemeDetails " API "POST" Method returns Status code  400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetails | /src/test/resources/testdata/api/request/mvp/nps/schemeDetails_EmptyBody_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails_EmptyBody_400.json|

Scenario Outline: Verify "schemeDetails" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetails| /src/test/resources/testdata/api/request/mvp/nps/schemeDetails_DiffHTTPMethod_405.json|/src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails_DiffHTTPMethod_405.json|


Scenario Outline: Verify "schemeDetails" API returns Status code 404 "Not Found" if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetail | \src/test/resources/testdata/api/request/mvp/nps/schemeDetails.json |\src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails_InvalidEndPoint_404.json|

Scenario Outline: Verify "schemeDetails" API "POST" Method for Status code 400 if Mandatory Field is Blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/schemeDetails| /src/test/resources/testdata/api/request/mvp/nps/schemeDetails_MandatoryFieldBlank_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/schemeDetails_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "checkNpsAccBal" API "POST" Method returns Status code  400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/checkNpsAccBal| /src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal_EmptyBody_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal_EmptyBody_400.json|

Scenario Outline: Verify "checkNpsAccBal" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/checkNpsAccBal| /src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal_InvalidJson_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal_InvalidJson_400.json|

Scenario Outline: Verify "checkNpsAccBal" API "POST" Method for Status code 400 if Mandatory Field is Blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/checkNpsAccBal| /src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal_MandatoryFieldBlank_400.json|/src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "checkNpsAccBal" API for Status code 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/checkNpsAccBal| /src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal_MethodInvalid_405.json|/src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal_DiffHTTPMethod_405.json|

Scenario Outline: Verify "/checkNpsAccBal" API returns Status code 404 "Not Found" if we pass invalid endpoint URL
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>
Examples:
|service |endpoint |requestBody |responseBody|
|nps|/checkNpsAccBa | \src/test/resources/testdata/api/request/mvp/nps/checkNpsAccBal.json |\src/test/resources/testdata/api/response/expected/mvp/nps/checkNpsAccBal_InvalidEndPoint_404.json|

Scenario Outline: Verify "emailNPSStatement" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service |endpoint |requestBody |responseBody|
|nps|/emailNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json|/src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json|


Scenario Outline: Verify "emailNPSStatement" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/emailNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/emailNPSStatement_EmptyBody_400.json|

Scenario Outline: Verify "emailNPSStatement" API "POST" Method returns Status code 400 if Request body is having invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/emailNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/emailNPSStatement_InvalidJson_400.json|


Scenario Outline: Verify "emailNPSStatement" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/emailNPSStatement| /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/emailNPSStatement_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "emailNPSStatement" API for Status code returns 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/emailNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json |/src/test/resources/testdata/api/response/expected/mvp/nps/emailNPSStatement_DiffHTTPMethod_405.json|

Scenario Outline: Verify "emailNPSStatement" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/emailNPSStateme | /src/test/resources/testdata/api/request/mvp/nps/emailNPSStatement.json |/src/test/resources/testdata/api/response/expected/mvp/nps/emailNPSStatement_InvalidEndPoint_404.json|

Scenario Outline: Verify "downloadNPSStatement" API "POST" Method returns Status code 200 with Only Mandatory fields

#Given user sets the bearer token
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service |endpoint |requestBody |responseBody|
|nps|/downloadNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json|/src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json|


Scenario Outline: Verify "downloadNPSStatement" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/downloadNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/downloadNPSStatement_EmptyBody_400.json|

Scenario Outline: Verify "downloadNPSStatement" API "POST" Method returns Status code 400 if Request body is having invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/downloadNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/downloadNPSStatement_InvalidJson_400.json|


Scenario Outline: Verify "downloadNPSStatement" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/downloadNPSStatement| /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/downloadNPSStatement_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "downloadNPSStatement" API for Status code returns 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/downloadNPSStatement | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json |/src/test/resources/testdata/api/response/expected/mvp/nps/downloadNPSStatement_DiffHTTPMethod_405.json|

Scenario Outline: Verify "downloadNPSStatement" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/downloadNPSStateme | /src/test/resources/testdata/api/request/mvp/nps/downloadNPSStatement.json |/src/test/resources/testdata/api/response/expected/mvp/nps/downloadNPSStatement_InvalidEndPoint_404.json|

Scenario Outline: Verify "/Contribute" API "POST" Method for Status code 200 with Only Mandatory fields

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

Scenario Outline: Verify "Contribute" API "POST" Method returns Status code 400 if Request body is blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/contribute | /src/test/resources/testdata/api/request/mvp/nps/contribute_EmptyBody_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/contribute_EmptyBody_400.json|

Scenario Outline: Verify "Contribute" API "POST" Method returns Status code 400 if Request body is having invalid JSON

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/contribute | /src/test/resources/testdata/api/request/mvp/nps/contribute_InvalidJson_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/contribute_InvalidJson_400.json|


Scenario Outline: Verify "Contribute" API "POST" Method returns Status code 400 if Mandatory Field is Blank

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/contribute| /src/test/resources/testdata/api/request/mvp/nps/contribute_MandatoryFieldBlank_400.json |/src/test/resources/testdata/api/response/expected/mvp/nps/contribute_MandatoryFieldBlank_400.json|

Scenario Outline: Verify "Contribute" API for Status code returns 405 if HTTP metod is other than POST  for Eg: GET, PUT, Delete

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user checks error message for different HTTP method with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/contribute | /src/test/resources/testdata/api/request/mvp/nps/contribute.json |/src/test/resources/testdata/api/response/expected/mvp/nps/contribute_DiffHTTPMethod_405.json|

Scenario Outline: Verify "Contribute" API for Status code 404 "Not Found" if we pass invalid endpoint URL 

Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404
Then user verifies json from <responseBody>

Examples:
|service |endpoint         |requestBody                                                      |responseBody|
|nps|/contribu | /src/test/resources/testdata/api/request/mvp/nps/contribute.json |/src/test/resources/testdata/api/response/expected/mvp/nps/contribute_InvalidEndPoint_404.json|

