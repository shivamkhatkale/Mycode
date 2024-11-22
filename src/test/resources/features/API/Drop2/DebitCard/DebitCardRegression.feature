Feature: Regression for DebitCard
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/DebitCard


@TestCaseKey=UDB-T30160 @Smoke @E2E @Regression 
Scenario Outline:200 Verify "Debit Card Profile" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T30161 @Regression 
Scenario Outline:200 Verify "Debit Card Profile" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\debitCardProfile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T30162 @Regression 
Scenario Outline:Verify "Debit Card Profile" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
 
Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|
 
 
@TestCaseKey=UDB-T30163 @Regression 
Scenario Outline: 400 Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400

 
Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|
 
 
 @TestCaseKey=UDB-T30164 @Regression 
Scenario Outline:400 Verify "Debit Card Profile" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400


Examples:
|service    |endpoint            |requestBody                                                                        |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|
 
 
 @TestCaseKey=UDB-T30165 @Regression 
Scenario Outline: 405 Verify "Debit Card Profile" API for Status code 405 if HTTP metod is other than POST 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                          |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T30166 @Regression 
Scenario Outline: 404 Verify "Debit Card Profile" API for Status code 404 "Not Found" if URl is not correct
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>
 
Examples:
|service    |endpoint            |requestBody                                                                    |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|
 
 
@TestCaseKey=UDB-T30168 @Regression 
Scenario Outline:Verify "Green Pin" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\green-pin.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|
 
@TestCaseKey=UDB-T30169 @Regression 
Scenario Outline:Verify "Green Pin" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 GreenPin.json  |null           | null         | null  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T30170 @Regression 
Scenario Outline: 400 Verify "Green Pin" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service    |endpoint           |requestBody                                                              	|requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 GreenPin.json  |null            			| null         					| null  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T30171 @Regression 
Scenario Outline:400 Verify "Green Pin" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 GreenPin.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|


@TestCaseKey=UDB-T30172 @Regression 
Scenario Outline:405 Verify "Green Pin" API for Status code 405 if HTTP metod is other than POST for Eg: GET
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 405
Then user verifies json from <responseBody>

Examples:
|service    |endpoint           |requestBody                                                              |responseBody                                                       |
|debitCard  |green-pin          |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 GreenPin.json   |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|


@TestCaseKey=UDB-T30173 @Regression 
Scenario Outline:404 Verify "Green Pin" API for Status code 404 "Not Found"  if URl is not correct
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404


Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pi          |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 GreenPin.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T30175 @Smoke @E2E @Regression 
Scenario Outline: Verify post fhmUpdateLimit api returns correct response for valid account number and card number
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
@TestCaseKey=UDB-T30176 @Regression 
Scenario Outline:Verify "Update Limit" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
 @TestCaseKey=UDB-T30177 @Regression 
Scenario Outline:400 Verify "Update Limit" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|

@TestCaseKey=UDB-T30179 @Regression 
Scenario Outline:405 Verify "Update Limit" API for Status code 405 if HTTP metod is other than POST 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>

Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
@TestCaseKey=UDB-T30180 @Regression @test
Scenario Outline:404 Verify "Update Limit" API for Status code 404 "Not Found" if URl is not correct 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimi     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 fhmUpdateLimit.json  |null           | null         | null  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
@TestCaseKey=UDB-T30181 @Smoke @E2E @Regression 
Scenario Outline: Verify post Block/Unblock api returns correct response for Valid card number and card Status as true(Unblock Card).
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|
 
@TestCaseKey=UDB-T30182 @Regression 
Scenario Outline:Verify "Block/Unblock" API "POST" Method for Status code 200 with Only Mandatory fields
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\fhmBlockUnblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|
 

@TestCaseKey=UDB-T30183 @Regression 
Scenario Outline:Verify "Block/Unblock" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500



Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|


@TestCaseKey=UDB-T30184 @Regression 
Scenario Outline:400 Verify "Block/unblock" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>


Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

@TestCaseKey=UDB-T30185 @Regression 
Scenario Outline:400 Verify "Block/Unblock" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>
Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|


@TestCaseKey=UDB-T30186 @Regression 
Scenario Outline:405 Verify "Block/Unblock" API for Status code 405 if HTTP metod is other than POST
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a get request with <requestBody>
Then user verifies that status is 200
Then user verifies json from <responseBody>



Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

@TestCaseKey=UDB-T30187 @Regression @test
Scenario Outline:404 Verify "Block/Unblock" API for Status code 404 "Not Found"if URl is not correct
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404



Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnbloc     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

