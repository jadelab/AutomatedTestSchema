# AutomatedTestSchema
Components that can assist with the writing and execution of unit and integration tests in Jade systems

## Description
AutomatedTestSchema is a set of components exposed as a package that can assist with automated testing in Jade Systems.

Out of the box unit tests can be written by creating classes and test methods under JadeTestCase in your schema. 

This schema takes that functionality further by assisting with:
- Inline Test double creation (mocking)
- Text fixture builder for setup of complex data
- Data Annotations for marking and filtering of Unit Tests
- Advanced searching for which Unit tests to run
- Multi-threaded batch runner with output to Jenkins
