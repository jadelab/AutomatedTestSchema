# AutomatedTestSchema
Components that can assist with the writing and execution of unit and integration tests in [Jade](https://www.jadeworld.com) systems.

## Overview
AutomatedTestSchema is a set of components exposed as a package that can assist with automated testing in Jade Systems.  

Jade provides unit testing capability which allows developers to define test classes and functions under JadeTestCase, which for many applications may be all that is needed.  

This schema extends this model to help address pain points that can arise from needing to retrospectively add tests to legacy code and/or where environments require hundreds or thousands of tests to be written and maintenance may become an issue.

## Functionality
All of the following components are available through AutomatedTestPackage, however each has been designed so it can be used independently should only one part be important to you.

| Component | Description |
| --------- | ----------- |
| [Test doubles](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Doubles) | Allows for inline creation of test doubles (mocking) to replace and track function calls which can improve readability and isolation of unit tests.|
| [Text fixtures](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Fixtures) | A template to ease the creation, maintenance and removal of complex data that may be needed to perform integration tests.|
| [Annotating Tests](https://github.com/jadelab/AutomatedTestSchema/wiki/Annotating-Tests) | A pattern for labelling unit tests based on their characteristics (eg. #IntegrationTest, #SlowTest) to help determine when they should run.|
| [Searching for Tests](https://github.com/jadelab/AutomatedTestSchema/wiki/Test-Locator) | A component to search for what unit tests to run based on criteria such as schema, parent class, user, date created and annotations.|
| [Batch Runner](https://github.com/jadelab/AutomatedTestSchema/wiki/Batch-Runner) | A multi-threaded runner of unit tests with pre-built output formats into csv or continuous integration friendly files (for direct import into [Jenkins](https://jenkins.io/)).|

## Installation
Full installation instructions are available [here](https://github.com/jadelab/AutomatedTestSchema/wiki/Installation).

## Contributing
Any contribution to this project, be-it coding, testing, documentation, ideas or highlighting faults is most welcome. 

**Issues:**  
Please provide detailed instructions on how to recreate - ideally a reproducer script.  
Information should also be provided on what version you're running (see AutomatedTestSchema Global constant ATVersion).

**Code Contributions:**  
Please ensure you have the permission of your Employer, and that any code submitted is yours to submit.  

Once your full or partial schema is extracted, run AutomatedTestSchema::JadeScript:cleanSchemaFiles() prior to committing it to your local repo. This will strip out all environmental content making it easier to read and merge. Then submit a 'Pull Request'.



