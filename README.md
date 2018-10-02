# AutomatedTestSchema
Components that can assist with the writing and execution of unit and integration tests in [Jade](https://www.jadeworld.com) systems

## Overview
AutomatedTestSchema is a set of components exposed as a package that can assist with automated testing in Jade Systems.

Out of the box unit tests can be written by creating classes and test methods under JadeTestCase in your schema. 

This schema takes that functionality further by assisting with:
- Inline [Test double](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Doubles) creation (mocking)
- [Text fixture](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Fixtures) builder for setup of complex data
- [Data Annotations](https://github.com/jadelab/AutomatedTestSchema/wiki/Annotating-Tests) for marking and filtering of Unit Tests
- [Advanced searching](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Locator) to find which Unit tests to run
- Multi-threaded [batch runner](https://github.com/jadelab/AutomatedTestSchema/wiki/Batch-Runner) with predefined output to csv and Jenkins

## Installation
- Load AutomatedTestSchema into your Jade environment
- Import the AutomatedTestPackage into your highest schema(s)

- For mocking, create ATMock::createClass() on the imported class, replacing the body of the method from ATMock::zcode_createClass

- For the batch runner, create app::intialiseAutomatedTestRunner per the following code. Then create a Non-GUI application called AutomatedTestRunner, selecting intialiseAutomatedTestRunner() as the initialize method.
```
intialiseAutomatedTestRunner( batchRequest : Object ) updating, protected;

vars
	runTests	: ATBatchWorkerInitialiser;
	
begin
	create runTests transient;
	runTests.initialiseWorkerApp( batchRequest );
end;
```
## Contributing
Any contribution to this project, be-it coding, testing, documentation or ideas is most welcome. 

Developers can contribute to any or all schemas. 

Until a formal source control tool is available please submit full schema files that have been stripped all environmental content. This can be done by running AutomatedTestSchema::JadeScript::cleanSchemaFiles().



