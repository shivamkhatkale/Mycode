Feature: Regression for VirtualCard
Background: SettingFileHandlerPath
Given user sets the file path for this feature file for Drop2/DebitCard

@TestCaseKey=UDB-T36239 @Smoke @E2E @Regression 
Scenario Outline:200 Verify "Virtual Card Profile" API "POST" Method for Status code 200 with all fields (Mandatory and Optional)
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

@TestCaseKey=UDB-T36240 @Regression 
Scenario Outline:200 Verify "Virtual Card Profile" API "POST" Method for Status code 200 with Only Mandatory fields
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

@TestCaseKey=UDB-T36241 @Regression
Scenario Outline:Verify "Virtual Card Profile" API "POST" Method for Status code 400 with Only Optional fields available in request body
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
 
 
 @TestCaseKey=UDB-T36242 @Regression
Scenario Outline: 400 Verify "Virtual Card Profile" API "POST" Method for Status code 400 if Request body is blank
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
 
 
 @TestCaseKey=UDB-T36243 @Regression
Scenario Outline:400 Verify "Virtual Card Profile" API "POST" Method for Status code 400 if Request body is invalid JSON
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400
Then user verifies json from <responseBody>

Examples:
|service    |endpoint            |requestBody                                                                        |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|
 
 
@TestCaseKey=UDB-T36244 @Regression 
Scenario Outline: 405 Verify "Virtual Card Profile" API for Status code 405 if HTTP metod is other than POST 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 400



Examples:
|service    |endpoint            |requestBody                                                                          |requestField |responsefield     | filename  |responseBody|
|debitCard  |debitCardProfile    |\src\test\resources\testdata\api\request\Drop2\DebitCard\400 Debit Card Profile.json | null        | null             | null      | \src\test\resources\testdata\api\response\expected\Drop2\DebitCard\debitCardProfile.json|

@TestCaseKey=UDB-T36245 @Regression 
Scenario Outline: 404 Verify "Virtual Card Profile" API for Status code 404 "Not Found" if URl is not correct
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
 
 
@TestCaseKey=UDB-T36246 @Smoke @E2E @Regression
Scenario Outline:Verify Vritual card "Green Pin" API "POST" Method for Status code 200 with Only Mandatory fields
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
 
@TestCaseKey=UDB-T36247 @Regression
Scenario Outline:Verify Virtual Card "Green Pin" API "POST" Method for Status code 400 with Only Optional fields available in request body
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

@TestCaseKey=UDB-T36248 @Regression 
Scenario Outline: 400 Verify Virtual Card "Green Pin" API "POST" Method for Status code 400 if Request body is blank
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

@TestCaseKey=UDB-T36249 @Regression
Scenario Outline:400 Verify Virtual Card "Green Pin" API "POST" Method for Status code 400 if Request body is invalid JSON
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


@TestCaseKey=UDB-T36250 @Regression
Scenario Outline:405 Verify Virtual Card "Green Pin" API for Status code 405 if HTTP metod is other than POST for Eg: GET
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


@TestCaseKey=UDB-T36251 @Regression
Scenario Outline:404 Verify Virtual Card "Green Pin" API for Status code 404 "Not Found"  if URl is not correct
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404

Examples:
|service    |endpoint           |requestBody                                                              |requestField               |responsefield               | filename               |responseBody                                                       |
|debitCard  |green-pi          |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 GreenPin.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\green-pin.json|

@TestCaseKey=UDB-T36252 @Regression 
Scenario Outline: Verify Virtual Card post fhmUpdateLimit api returns correct response for valid account number and card number
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
 
@TestCaseKey=UDB-T36253 @Smoke @E2E @Regression 
Scenario Outline:Verify Virtual Card "Update Limit" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
 @TestCaseKey=UDB-T36254 @Regression
Scenario Outline:400 Verify Virtual Card "Update Limit" API "POST" Method for Status code 400 if Request body is blank
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimit     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 fhmUpdateLimit.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|

@TestCaseKey=UDB-T3624155 @Regression 
Scenario Outline:405 Verify Virtual card "Update Limit" API for Status code 405 if HTTP metod is other than POST 
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
 
@TestCaseKey=UDB-T36256 @Regression
Scenario Outline:404 Verify Virtual Card "Update Limit" API for Status code 404 "Not Found" if URl is not correct 
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404


Examples:
|service    |endpoint           |requestBody                                                                   |requestField                                    |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmUpdateLimi     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 fhmUpdateLimit.json  |null           | null         | null  |\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmUpdateLimit.json|
 
@TestCaseKey=UDB-T36257 @Regression
Scenario Outline: Verify Virtual Card post Block/Unblock api returns correct response for Valid card number and card Status as true(Unblock Card).
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
 
@TestCaseKey=UDB-T36258 @Regression  
Scenario Outline:Verify Virtual Card "Block/Unblock" API "POST" Method for Status code 200 with Only Mandatory fields
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
 

@TestCaseKey=UDB-T36259 @Smoke @E2E @Regression  
Scenario Outline:Verify Virtual Card "Block/Unblock" API "POST" Method for Status code 400 with Only Optional fields available in request body
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 500



Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnblock     |\src\test\resources\testdata\api\request\Drop2\DebitCard\500 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|


@TestCaseKey=UDB-T36260 @Regression  
Scenario Outline:400 Verify Virtual Card "Block/unblock" API "POST" Method for Status code 400 if Request body is blank
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

@TestCaseKey=UDB-T36261 @Regression  
Scenario Outline:400 Verify Virtual Card "Block/Unblock" API "POST" Method for Status code 400 if Request body is invalid JSON
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


@TestCaseKey=UDB-T36262 @Regression 
Scenario Outline:405 Verify Virutal Card  "Block/Unblock" API for Status code 405 if HTTP metod is other than POST
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

@TestCaseKey=UDB-T36263 @Regression
Scenario Outline:404 Verify Virtual Card "Block/Unblock" API for Status code 404 "Not Found"if URl is not correct
Given user sets the environment of endpoint
Given user set the basepath to <service>
Then set the endpoint <endpoint>
Then user updates the requestField <requestField> of request body from <requestBody> with responsefield <responsefield> from filename <filename>
Then user triggers a post request with <requestBody>
Then user verifies that status is 404



Examples:
|service    |endpoint            |requestBody                                                                   |requestField                     |responsefield       | filename               |responseBody                                                       |
|debitCard  |fhmBlockUnbloc     |\src\test\resources\testdata\api\request\Drop2\DebitCard\405 Block-Unblock.json  |null           | null| null|\src\test\resources\testdata\api\response\expected\Drop2\DebitCard\fhmBlockUnblock.json|

