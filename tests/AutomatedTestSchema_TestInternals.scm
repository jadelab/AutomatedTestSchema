
jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema_TestInternals subschemaOf AutomatedTestSchema completeDefinition; 
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
libraryDefinitions
typeHeaders
	AutomatedTestSchema_TestInternals subclassOf AutomatedTestSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	ATFixtures subclassOf AutomatedTest abstract, transient, subclassTransientAllowed; 
	ATFixtureMock subclassOf ATFixtures transient, transientAllowed, subclassTransientAllowed; 
	GAutomatedTestSchema_TestInternals subclassOf GAutomatedTestSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	ATTests subclassOf JadeTestCase abstract, transient, subclassTransientAllowed; 
	ATBatchRunnerTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATBatchSettingsTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATBatchTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATBuilderTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATChangeTrackerTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATCommandLineReaderTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATDatabaseTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATGarbageCollectorTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATLocatorSettingsTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATLocatorTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATMockMethodTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATMockTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATSchemaEntityFinderTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	ATSchemaFileCleanerTests subclassOf ATTests transient, transientAllowed, subclassTransientAllowed; 
	SAutomatedTestSchema_TestInternals subclassOf SAutomatedTestSchema transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
 
interfaceDefs
membershipDefinitions
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	AutomatedTestSchema completeDefinition
	(
	)
	AutomatedTestSchema_TestInternals completeDefinition
	(
	)
	AutomatedTest completeDefinition
	(
	)
	ATFixtures completeDefinition
	(
	)
	ATFixtureMock completeDefinition
	(
 
	jadeMethodDefinitions
		methodDoesNothing() updating; 
		param1Method(param1: String) updating; 
		param2Method(
			param1: String; 
			param2: Integer) updating; 
		returnInteger(): Integer;
		returnObject(): Application updating, protected; 
		returnSelf(): ATFixtureMock protected; 
		returnString(): String updating; 
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GAutomatedTestSchema completeDefinition
	(
	)
	GAutomatedTestSchema_TestInternals completeDefinition
	(
	)
	JadeTestCase completeDefinition
	(
	)
	ATTests completeDefinition
	(
	documentationText
`Put an annotation in for ATTestCaseFinderTests
#dummy, #fast`

	)
	ATBatchRunnerTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldRunBatchGivenTwoTests() unitTest; 
		testDummySuccess() protected, unitTest; 
		testSummaryFailure() protected, unitTest; 
	)
	ATBatchSettingsTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldConvertFromString() unitTest; 
		shouldConvertToString() unitTest; 
		shouldFailValidationGivenWorkersInvalid() unitTest; 
		shouldValidateSuccessfulGivenDefaults() unitTest; 
	)
	ATBatchTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldGenerateCSV() unitTest; 
		shouldGenerateXML() unitTest; 
		testThatFails() protected, unitTest; 
		testThatIsIgnored() protected, unitTestIgnore; 
		testThatPasses() protected, unitTest; 
	)
	ATBuilderTests completeDefinition
	(
	attributeDefinitions
		dec1:                          Decimal[2,1] protected; 
		dec2:                          Decimal[2,1] protected; 
	referenceDefinitions
		collection:                    ObjectArray  implicitMemberInverse, protected; 
		myReference:                   Object  protected; 
 
	jadeMethodDefinitions
		makeStartObject(): Object protected; 
		shouldCloneObject() unitTest; 
		shouldCloneObjectWithKey() unitTest; 
		shouldExceptionIfNullReference() unitTest; 
		shouldMakeAndSet() unitTest; 
		shouldRefineVales() unitTest; 
		shouldSetPropertyToNull() unitTest; 
		shouldSetReference() unitTest; 
		shouldSetReferenceToNull() unitTest; 
		shouldTestDecimalSet() unitTest; 
	)
	ATChangeTrackerTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldDetectCreate() unitTest; 
		shouldDetectDelete() unitTest; 
		shouldDetectModification() unitTest; 
	)
	ATCommandLineReaderTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldIgnoreDefaultWhenItemExists() unitTest; 
		shouldReturnEmptyWhenItemIsEmpty() unitTest; 
		shouldReturnEmptyWhenItemNotDeclared() unitTest; 
		shouldReturnValueGivenQuotes() unitTest; 
		shouldReturnValueWhenDeclared() unitTest; 
		shouldUseDefaulWhenValueMissing() unitTest; 
	)
	ATDatabaseTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldBuildObjects() unitTest; 
		shouldCollateExistingObjects() unitTest; 
		shouldCountObjectsCorrectly() unitTest; 
		shouldPurgeCreatedObjects() unitTest; 
	)
	ATGarbageCollectorTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldPurgeObjects() unitTest; 
	)
	ATLocatorSettingsTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldConvertFromString() unitTest; 
		shouldConvertToString() unitTest; 
	)
	ATLocatorTests completeDefinition
	(
 
	jadeMethodDefinitions
		getUnitTestCountForClass(): Integer protected; 
		notAUnitTest() protected; 
		shouldFindAllFromAllSchemas() unitTest; 
		shouldFindAllFromCurrentSchema() unitTest; 
		shouldFindAllTests() unitTest; 
		shouldFindClassFromName() unitTest; 
		shouldFindFromClass() unitTest; 
		shouldFindFromClassAndChildren() unitTest; 
		shouldFindFromSubschemas() unitTest; 
		shouldFindMethod() unitTest; 
		shouldFindMethodGivenSettings() unitTest; 
		shouldFindMethodWithAnnotation() unitTest; 
		shouldFindMethodWithAnnotationFromClass() unitTest; 
		shouldFindMethodsWithPrefix() unitTest; 
		shouldIgnoreMethodWithAnnotation() unitTest; 
		shouldIgnoreMethodWithAnnotationToAvoid() unitTest; 
	)
	ATMockMethodTests completeDefinition
	(
 
	jadeMethodDefinitions
		doCompile(
			meth: Method; 
			source: String) protected; 
		shouldCompile() unitTest; 
		shouldGenerateDoNothing() unitTest; 
		shouldGenerateDoNothingWithReturnValue() unitTest; 
		shouldGenerateRaiseException() unitTest; 
		shouldGenerateReturnInteger() unitTest; 
		shouldGenerateReturnObject() unitTest; 
		shouldGenerateReturnObjectSelf() unitTest; 
		shouldGenerateReturnString() unitTest; 
	)
	ATMockTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldAddClassReference() unitTest; 
		shouldAddClassString() unitTest; 
		shouldCallMethodWithParam() unitTest; 
		shouldCallMethodWithParams() unitTest; 
		shouldCount0CallsToMethod() unitTest; 
		shouldCount2CallsToMethod() unitTest; 
		shouldCreate2MethodCalls() unitTest; 
		shouldCreateObject() unitTest; 
		shouldCreateTemporaryClass() unitTest; 
		shouldCreateTemporaryClasses() unitTest; 
		shouldDeleteTransientClass() unitTest; 
		shouldReturnNewValueMethodOverride() unitTest; 
		shouldSetStringValue() unitTest; 
	)
	ATSchemaEntityFinderTests completeDefinition
	(
 
	jadeMethodDefinitions
		shouldFindMethodFromQualifiedName() unitTest; 
		shouldFindThisMethod() unitTest; 
	)
	ATSchemaFileCleanerTests completeDefinition
	(
	constantDefinitions
		ClassExtract:                  String = 'jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema subschemaOf RootSchema partialDefinition; 
typeHeaders
	ATFixtureMaker subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
 
membershipDefinitions
 
typeDefinitions
	ATFixtureMaker completeDefinition
	(
	documentationText
`Coordinator of a temporary database being populated.

By defining pre-requisites this class will manage execution order and calling of static functions.`

	referenceDefinitions
		allMethodsExecuted:            ObjectSet  implicitMemberInverse, protected; 
	documentationText
`Recorder of all methods executed so we only run once.`

		applicationContext:            ApplicationContext  protected; 
	documentationText
`Methods need to be run in the context of the user schema.
`

		builder:                       ATBuilder;
		events:                        IATFixtureMakerEvents;
		lastResult:                    Object  readonly; 
	documentationText
`Result object from the last execution.`

		settings:                      Object;
	documentationText
`Parameter value of any type to pass through so the fixture functions 
can have some context eg. current user, current date.`

 
	jadeMethodDefinitions
		clear() updating; 
		create() updating; 
		eventBuilt() updating, protected; 
		eventCleared() updating, protected; 
		eventMethodTarget(functionName: String): Method protected; 
		eventStarted() updating, protected; 
		execute(mth: Method): Object updating; 
		executeInternal(mth: Method) updating, protected; 
		register(
			currentMethod: JadeMethod; 
			prerequisiteMethods: ParamListType) updating; 
		result(): Object;
	implementInterfaces
		IATFixtureMaker
		(
		clear is clear;
		execute is execute;
		result is result;
		)
		IATFixtureMakerRegistration
		(
		register is register;
		)
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchemaDb
	(
	databaseFileDefinitions
		"autotest";
	defaultFileDefinition "autotest";
	classMapDefinitions
	)
 
typeSources
	ATFixtureMaker (
	jadeMethodSources
clear
{
clear() updating;

vars
	db	: ATDatabase;
	
begin
	// clear the database
	if builder <> null then
		db	:= builder.db;
	endif;
	if db <> null then
		if db.purgeOnDelete then
			db.purge();
		else
			db.clear();
		endif;
	endif;
	
	// clear the execution list
	allMethodsExecuted.clear();
	
	// notify any listeners the db has been purged
	eventCleared();
end;

}

create
{
create() updating;

vars

begin
	applicationContext	:= ApplicationContext.firstProcessTransientInstance();
end;

}

eventBuilt
{
eventBuilt() protected, updating;

vars
	targetMethod	: Method;
	
begin
	targetMethod	:= eventMethodTarget( IATFixtureMakerEvents::fixtureBuilt.name );
	if targetMethod <> null then
		// call the interface function in the peer schema
		events.Object.invokeMethod( applicationContext, targetMethod );
	endif;
end;

}

eventCleared
{
eventCleared() protected, updating;

vars
	targetMethod	: Method;
	
begin
	targetMethod	:= eventMethodTarget( IATFixtureMakerEvents::fixtureCleared.name );
	if targetMethod <> null then
		// call the interface function in the peer schema
		events.Object.invokeMethod( applicationContext, targetMethod );
	endif;
end;

}

eventMethodTarget
{
eventMethodTarget( functionName	: String 
							   ): Method protected;
/*
	Find the reference to the methid in the user schema, otherwise jade will fallover with 1010/1011s

	CR			Patch		Who		When		Reason
	=======		=========	===		==========	=============================================
*/
vars
	targetClass		: Class;
	targetMethod	: Method;
	
begin
	if events = null then
		return null;
	endif;
	
	targetClass		:= events.Object.class;
	targetMethod	:= targetClass.getMethodInHTree( functionName );
	return targetMethod;
end;
}

eventStarted
{
eventStarted() protected, updating;

vars
	targetMethod	: Method;
	
begin
	targetMethod	:= eventMethodTarget( IATFixtureMakerEvents::fixtureStarted.name );
	if targetMethod <> null then
		// call the interface function in the peer schema
		events.Object.invokeMethod( applicationContext, targetMethod );
	endif;
end;

}

execute
{
execute( mth : Method ) 			// method to execute
			 : Object updating;		// main result value from the last execution

vars
	localTrans	:  Boolean;
	
begin
	eventStarted();

	if builder <> null 
	and builder.lifetime = builder.Lifetime_Persistent 
	and process.isInTransactionState = false then
		beginTransaction;
		localTrans	:= true;
	endif;	
	
	executeInternal( mth );
	
	if localTrans then
		commitTransaction;
		localTrans	:= false;
	endif;
	
	return lastResult;
	
epilog
	if localTrans then
		abortTransaction;
	endif;

	eventBuilt();
end;

}

executeInternal
{
executeInternal( mth : Method ) updating, protected; // method to execute
					 
vars
	executeClass		: Class;
	executeObject		: Object;
	executeInterface	: IATFixtureMakerTarget;
	
begin
	// guarantee we only run this once
	if allMethodsExecuted.includes( mth ) then
		return;
	endif;
	allMethodsExecuted.add( mth );
		
	// create and initialise the target object
	executeClass		:= mth.getSchemaType().Class;
	create executeObject as executeClass transient;
	executeInterface	:= executeObject.IATFixtureMakerTarget;
	executeInterface.initialise( self, builder, settings );
	
	// execute the function & record the result
	executeObject.invokeMethod( applicationContext, mth );
	lastResult	:= executeInterface.result();
		
epilog
	delete executeObject;
end;

}

register
{
register( currentMethod			: JadeMethod;
		  prerequisiteMethods	: ParamListType ) updating;

// calls any pre-requisite functions before the main function is called
		  
vars
	count	   : Integer;
	inx		   : Integer;
	meth	 	: Method;
	
begin
	// execute any prerequisities
	count	:= app.getParamListTypeLength( prerequisiteMethods );
	foreach inx in 1 to count do
		meth	:= app.getParamListTypeEntry( inx, prerequisiteMethods ).Method;
		executeInternal( meth );
	endforeach;
	
	// now call the main function (likely called already)
	executeInternal( currentMethod );
end;


}

result
{
result(): Object;
// Returns the result of the last execution

begin
	return lastResult;
end;

}

	)
' number = 1001;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:20:22:57:47.941;
 
	jadeMethodDefinitions
		shouldRemoveFieldNumber() unitTest, number = 1003;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 45 2018:09:24:20:46:40.997;
		shouldRemoveFieldNumberFromString() unitTest, number = 1006;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:24:23:47:50.088;
		shouldRemoveInterfaceNumber() unitTest, number = 1009;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:24:23:47:55.511;
		shouldRemoveJCF() unitTest, number = 1007;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:24:23:48:02.151;
		shouldRemoveMapNumber() unitTest, number = 1004;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 45 2018:09:20:23:38:38.519;
		shouldRemovePatchHeader() unitTest, number = 1005;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 45 2018:09:24:20:46:29.532;
		shouldRemoveSetModifiedTime() unitTest, number = 1001;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:24:23:48:09.182;
		shouldRemoveUser() unitTest, number = 1002;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 45 2018:09:20:23:00:28.487;
		shouldReplaceJadeVersion() unitTest, number = 1008;
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 45 2018:09:24:21:35:58.594;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SAutomatedTestSchema completeDefinition
	(
		setModifiedTimeStamp "JOHNB" "16.0.01" 2018:08:29:23:10:00;
	)
	SAutomatedTestSchema_TestInternals completeDefinition
	(
		setModifiedTimeStamp "jbeaufoy_2" "16.0.02" 2018:09:24:22:21:24.272;
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchema_TestInternals
	(
		setModifiedTimeStamp "JOHNB" "7.1.06" 2018:08:29:23:10:00;
	databaseFileDefinitions
		"autotest" number=73;
		setModifiedTimeStamp "JOHNB" "7.1.06" 2018:08:29:23:10:00;
	defaultFileDefinition "autotest";
	classMapDefinitions
		SAutomatedTestSchema_TestInternals in "_environ";
		AutomatedTestSchema_TestInternals in "_usergui";
		GAutomatedTestSchema_TestInternals in "autotest";
		ATTests in "autotest";
		ATBuilderTests in "autotest";
		ATDatabaseTests in "autotest";
		ATGarbageCollectorTests in "autotest";
		ATMockMethodTests in "autotest";
		ATMockTests in "autotest";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	ATFixtureMock (
	jadeMethodSources
methodDoesNothing
{
methodDoesNothing() updating;

vars

begin
	
end;

}

param1Method
{
param1Method( param1 : String ) updating;

vars

begin

end;

}

param2Method
{
param2Method( param1 : String; param2 : Integer ) updating;

vars

begin

end;

}

returnInteger
{
returnInteger(): Integer;

vars

begin
	return 10;
end;

}

returnObject
{
returnObject(): Application updating, protected;

vars

begin
	return null;
end;

}

returnSelf
{
returnSelf(): ATFixtureMock protected;

vars

begin
	return null;
end;

}

returnString
{
returnString(): String updating;

vars

begin
	return "A string";
end;

}

	)
	ATBatchRunnerTests (
	jadeMethodSources
shouldRunBatchGivenTwoTests
{
shouldRunBatchGivenTwoTests() unitTest;

vars
	runner	: ATBatchRunner;
	results	: ATBatchResultsRoot;
	
begin
	create runner transient;
	
	// find two tests defined on this class
	runner.locatorSettings.annotations.add( "#DummyTest" );
	runner.locatorSettings.schemas.add( currentSchema.name );
	runner.locator.applySettings( runner.locatorSettings );
	
	// turn off the output
	
	// run the tests
	runner.run();
	
	// checks
	results	:= runner.controller.results;
	assertNotNull( results );
	assertEqualsMsg( "One passed test", 1, results.countPassed );
	assertEqualsMsg( "One failed test", 1, results.countFailed );
	
epilog
	delete runner;
end;


}

testDummySuccess
{
testDummySuccess() unitTest, protected;

// #DummyTest

vars

begin
	assertTrue( true );
end;

}

testSummaryFailure
{
testSummaryFailure()  unitTest, protected;

// #DummyTest

vars

begin
	// fail the test only if we are inside another where we want to record a failed count	
	if app.name = ATAppNameBatchRunner then
		assertTrue( false );
	endif;		
end;

}

	)
	ATBatchSettingsTests (
	jadeMethodSources
shouldConvertFromString
{
shouldConvertFromString() unitTest;

vars
	settings	: ATBatchSettings;
	reader		: ATCommandLineReader;
	line		: String;
	
begin
	create reader transient;
	reader.commandLine	:= "SomeOther=Text WorkerApp=WorkerAppItem batchSize=10 folder=fileFolderItem outputStyle=1 workers=32 skipSchemas=false";

	create settings transient;
	settings.stringParse( reader );
	
	assertEqualsMsg( "Application name is valid", "WorkerAppItem", settings.applicationName );
	assertEqualsMsg( "Batch Size is valid", 10, settings.batchSize );
	assertEqualsMsg( "File folder is valid", "fileFolderItem", settings.outputFolder );
	assertEqualsMsg( "Output style is valid", 1, settings.outputFormat );
	assertEqualsMsg( "Worker count is valid", 32, settings.workers );
	assertEqualsMsg( "Unsupported schema value is valid", false, settings.skipUnsupportedSchemas );
	
epilog
	delete reader;
	delete settings;
end;
}

shouldConvertToString
{
shouldConvertToString() unitTest;

vars
	settings	: ATBatchSettings;
	reader		: ATCommandLineReader;
	builder		: ATCommandLineBuilder;
	line		: String;
	
begin
	create settings transient;
	settings.applicationName	:= "WorkerAppItem";
	settings.batchSize			:= 10;
	settings.outputFolder		:= "fileFolderItem";
	settings.outputFormat		:= ATBatchSettings.OutputFormatCSV;
	settings.workers			:= 32;
	settings.skipUnsupportedSchemas	:= false;
	
	create builder transient;
	line	:= settings.stringBuild(builder);

	create reader transient;
	reader.commandLine	:= line;
	
	assertEqualsMsg( "Application name is valid", settings.applicationName, reader.parseValue( ATBatchSettings.ItemApplicationName ));
	assertEqualsMsg( "Batch Size is valid", settings.batchSize, reader.parseValue( ATBatchSettings.ItemBatchSize ).Integer);
	assertEqualsMsg( "File folder is valid", settings.outputFolder, reader.parseValue( ATBatchSettings.ItemOutputFolder ));
	assertEqualsMsg( "Output format is valid", settings.outputFormat, reader.parseValue( ATBatchSettings.ItemOutputFormat ).Integer);
	assertEqualsMsg( "Worker count is valid", settings.workers, reader.parseValue( ATBatchSettings.ItemWorkers ).Integer);
	assertEqualsMsg( "Unsupported schema value is valid", settings.skipUnsupportedSchemas, reader.parseValue( ATBatchSettings.ItemUnsupportedSchemas ).Boolean);
	
epilog
	delete builder;
	delete reader;
	delete settings;
end;

}

shouldFailValidationGivenWorkersInvalid
{
shouldFailValidationGivenWorkersInvalid() unitTest;

vars
	settings	: ATBatchSettings;
	result		: String;

begin
	create settings transient;
	settings.workers	:= -1;
	result	:= settings.validate();
	
	assertTrueMsg( "Settings should fail", result.toLower().pos( "worker", 1 ) > 0 );
	
epilog
	delete settings;
end;

}

shouldValidateSuccessfulGivenDefaults
{
shouldValidateSuccessfulGivenDefaults() unitTest;

vars
	settings	: ATBatchSettings;
	result		: String;

begin
	create settings transient;
	
	result	:= settings.validate();
	if result <> null then
		result	:= " Error: " & result;
	endif;
	assertTrueMsg( "Settings should validate " & result, result = "" );
	
epilog
	delete settings;
end;

}

	)
	ATBatchTests (
	jadeMethodSources
shouldGenerateCSV
{
shouldGenerateCSV() unitTest;

vars
	batch		: ATBatchController;
	locator		: ATLocator;
	csv			: ATBatchOutputFormatCSV;
			
begin	
	// find the tests
	create locator transient;
	locator.addMethod(ATBatchTests::testThatPasses);
	locator.addMethod(ATBatchTests::testThatFails);
	locator.addMethod(ATBatchTests::testThatIsIgnored);

	// run the tests
	create batch transient;
	batch.workers			:= 0;
	locator.allMethods.copy( batch.allMethods );
	batch.execute();
	
	// output the tests
	create csv transient;
	csv.generate( batch.root );
	
	// checks
	assertTrueMsg( "testThatPasses must exist in results", csv.output.pos( "testThatPasses", 1 ) > 0);
	assertTrueMsg( "testThatFails must exist in results", csv.output.pos( "testThatFails", 1 ) > 0);
	
epilog
	delete batch;
	delete csv;
	delete locator;
end;
}

shouldGenerateXML
{
shouldGenerateXML() unitTest;

vars
	batch		: ATBatchController;
	finder		: ATLocator;
	xml			: ATBatchOutputFormatNUnit;
			
begin	
	// find the tests
	create finder transient;
	finder.addMethod(ATBatchTests::testThatPasses);
	finder.addMethod(ATBatchTests::testThatFails);
	finder.addMethod(ATBatchTests::testThatIsIgnored);

	// run the tests
	create batch transient;
	batch.workers			:= 0;
	finder.allMethods.copy( batch.allMethods );
	batch.execute();
	
	// output the tests
	create xml transient;
	xml.generate( batch.root );
	
	// checks
	assertTrueMsg( "testThatPasses must exist in results", xml.output.pos( "testThatPasses", 1 ) > 0);
	assertTrueMsg( "testThatFails must exist in results", xml.output.pos( "testThatFails", 1 ) > 0);
	
epilog
	delete batch;
	delete xml;
	delete finder;
end;
}

testThatFails
{
testThatFails() unitTest, protected;

vars

begin
	if ATBatchTests::shouldGenerateXML.isExecuting() 
	or ATBatchTests::shouldGenerateCSV.isExecuting() then

		assertFalseMsg( "I am meant to fail if called from another local unit test", true );
	endif;
end;

}

testThatIsIgnored
{
testThatIsIgnored() unitTestIgnore, protected;

vars

begin

end;

}

testThatPasses
{
testThatPasses() unitTest, protected;

vars

begin
	
end;

}

	)
	ATBuilderTests (
	jadeMethodSources
makeStartObject
{
makeStartObject(): Object protected;

vars
	builder	: ATBuilder;
	result	: JadeLog;
	
begin
	create builder transient;
	builder.db.purgeOnDelete	:= false;
	
	builder.make(JadeLog)
		.set(JadeLog::bufferOutput, true )
		.set(JadeLog::fileName, "some file" )
		.set(JadeLog::maxFileSize, 7 );
		
	result	:= builder.result.JadeLog;
	return result;
		
epilog
	delete builder;
end;

}

shouldCloneObject
{
shouldCloneObject() unitTest;

vars
	builder	: ATBuilder;
	start	: JadeLog;
	result	: JadeLog;
		
begin
	start	:= makeStartObject().JadeLog;
	assertEquals( "some file", start.fileName );

	create builder transient;
	
	builder.cloneObject(start)
		.set(JadeLog::fileName, "cloned" );
		
	result	:= builder.result.JadeLog;
	assertTrue( start <> result );
	assertEquals( start.bufferOutput, result.bufferOutput );
	assertEquals( "cloned", result.fileName );
		
epilog
	delete start;
	delete builder;
end;

}

shouldCloneObjectWithKey
{
shouldCloneObjectWithKey() unitTest;

vars
	builder	: ATBuilder;
	target	: ATBuilderTests;
	clone	: ATBuilderTests;
	
begin
	create target transient;
	target.myReference 	:= app;
	target.dec1 		:= 3.2;
	
	create builder transient;
	builder.cloneObjectWithKey(target, ATBuilderTests::dec1, 3.5 );
	clone	:= builder.result.ATBuilderTests;
	
	assertTrue( target <> clone );
	assertEquals( 3.5.Decimal, clone.dec1 );
	assertEquals( app, clone.myReference );
		
epilog
	delete target;
	delete builder;
end;

}

shouldExceptionIfNullReference
{
shouldExceptionIfNullReference() unitTest;

vars
	builder	: ATBuilder;
	target	: TcpIpConnection;
	
begin
	create target transient;
	assertNull( target.userObject );
	
	create builder transient;

	// set null reference
	expectedException(ATAssertError);
	builder.refine(target)
		.set(TcpIpConnection::userObject, null );
	assertEquals( self, target.userObject );
		
epilog
	delete target;
	delete builder;
end;

}

shouldMakeAndSet
{
shouldMakeAndSet() unitTest;

vars
	builder	: ATBuilder;
	result	: JadeLog;
	
begin
	create builder transient;
	
	builder.make(JadeLog)
		.set(JadeLog::bufferOutput, true )
		.set(JadeLog::fileName, "some file" )
		.set(JadeLog::maxFileSize, 7 );
		
	assertTrue(builder.result.isKindOf(JadeLog));
	
	result	:= builder.result.JadeLog;
	assertEquals( true, result.bufferOutput );
	assertEquals( "some file", result.fileName );
	assertEquals( 7, result.maxFileSize );
		
epilog
	delete result;
	delete builder;
end;

}

shouldRefineVales
{
shouldRefineVales() unitTest;

vars
	builder	: ATBuilder;
	start	: Object;
	result	: JadeLog;
		
begin
	start	:= makeStartObject();

	create builder transient;
	
	builder.refine(start)
		.set(JadeLog::fileName, "new name" )
		.set(JadeLog::maxFileSize, 8 );
		
	result	:= builder.result.JadeLog;
	assertEquals( start, result );
		
	assertEquals( true, result.bufferOutput );
	assertEquals( "new name", result.fileName );
	assertEquals( 8, result.maxFileSize );
		
epilog
	delete builder;
end;

}

shouldSetPropertyToNull
{
shouldSetPropertyToNull() unitTest;

vars
	builder	: ATBuilder;
	target	: Button;
	
begin
	create target transient;
	target.description	:= method.name;
	assertEquals( method.name, target.description );
	
	create builder transient;
	builder.refine(target)
		.setNull(Button::description);

	assertEquals( "", target.description );
		
epilog
	delete target;
	delete builder;
end;

}

shouldSetReference
{
shouldSetReference() unitTest;

vars
	builder	: ATBuilder;
	target	: TcpIpConnection;
	
begin
	create target transient;
	assertNull( target.userObject );
	
	create builder transient;

	// set reference
	builder.refine(target)
		.set(TcpIpConnection::userObject, self );
	assertEquals( self, target.userObject );
		
	// set null reference
	expectedException(ATAssertError);	// to change once asserts working properly
	builder.refine(target)
		.set(TcpIpConnection::userObject, null );
	assertEquals( self, target.userObject );
		
epilog
	delete target;
	delete builder;
end;

}

shouldSetReferenceToNull
{
shouldSetReferenceToNull()  unitTest;

vars
	builder	: ATBuilder;
	target	: TcpIpConnection;
	
begin
	create target transient;
	assertNull( target.userObject );
	
	create builder transient;
	builder.refine(target)
		.set(TcpIpConnection::userObject, self );
	
	// set null reference
	builder.refine(target)
		.setNull(TcpIpConnection::userObject );
	
	assertNull( target.userObject );
		
epilog
	delete target;
	delete builder;
end;

}

shouldTestDecimalSet
{
shouldTestDecimalSet() unitTest;

vars
	builder	: ATBuilder;
	target	: ATBuilderTests;
	
begin
	create target transient;
	target.dec1	:= 3.0;
	
	create builder transient;
	builder.refine(target)
		.set(ATBuilderTests::dec1, 3.5 );

	assertEquals( 3.5.Decimal, target.dec1 );
		
epilog
	delete target;
	delete builder;
end;

}

	)
	ATChangeTrackerTests (
	jadeMethodSources
shouldDetectCreate
{
shouldDetectCreate() unitTest;

vars
	snapshot	: ATChangeTracker;
	object		: StringArray;
	objectCheck	: Object;
	tracker		: ATChangeTrackerObject;
	
begin
	create snapshot transient;

	snapshot.startTracking();
		create object transient;
	snapshot.stopTracking();
	
	assertTrueMsg( "Change should be detected", snapshot.compare());
	
	tracker	:= snapshot.trackedObjects[object];
	if tracker = null then
		assertTrueMsg( "Change should be detected for object", tracker <> null);
	else
		assertTrueMsg( "Change should be a creation", tracker.status = Object_Create_Event);
	endif;
		
epilog
	delete object;
	delete snapshot;
end;

}

shouldDetectDelete
{
shouldDetectDelete() unitTest;

vars
	snapshot	: ATChangeTracker;
	object		: StringArray;
	objectCheck	: Object;
	tracker		: ATChangeTrackerObject;
	
begin
	create object transient;
	objectCheck	:= object;
	create snapshot transient;

	snapshot.startTracking();
		delete object;
	snapshot.stopTracking();
	
	assertTrueMsg( "Change should be detected", snapshot.compare());
	
	tracker	:= snapshot.trackedObjects[objectCheck];
	if tracker = null then
		assertTrueMsg( "Change should be detected for object", tracker <> null);
	else
		assertTrueMsg( "Change should be a deletion", tracker.status = Object_Delete_Event);
	endif;
		
epilog
	delete object;
	delete snapshot;
end;

}

shouldDetectModification
{
shouldDetectModification() unitTest;

vars
	snapshot	: ATChangeTracker;
	object		: StringArray;
	objectCheck	: Object;
	tracker		: ATChangeTrackerObject;
	
begin
	app.helpFile	:= "Original value";

	create snapshot transient;

	snapshot.startTracking();
		app.helpFile	:= "A modification";
	snapshot.stopTracking();
	
	assertTrueMsg( "Change should be detected", snapshot.compare());
	
	tracker	:= snapshot.trackedObjects[app];
	if tracker = null then
		assertTrueMsg( "Change should be detected for object", tracker <> null);
	else
		assertTrueMsg( "Change should be a mofification", tracker.status = Object_Update_Event);
	endif;
	
//	write snapshot.displayChanges;
		
epilog
	delete object;
	delete snapshot;
end;

}

	)
	ATCommandLineReaderTests (
	jadeMethodSources
shouldIgnoreDefaultWhenItemExists
{
shouldIgnoreDefaultWhenItemExists() unitTest;

vars
	cmdLine	: ATCommandLineReader;
	
begin
	create cmdLine transient;
	cmdLine.commandLine	:= "D:\Software\Jade\2016\bin\jade.exe ini=D:\Software\Jade\2016\system\jade.ini path=D:\Software\Jade\2016\system appServerPort=4505 server=SingleUser app=Jade";
	
	assertEqualsMsg( "Default value should be ignored", "SingleUser", 
				cmdLine.parseValueWithDefault( "server", "Default" ));
		
epilog
	delete cmdLine;
end;
}

shouldReturnEmptyWhenItemIsEmpty
{
shouldReturnEmptyWhenItemIsEmpty() unitTest;

vars
	cmdLine	: ATCommandLineReader;
	
begin
	create cmdLine transient;
	cmdLine.commandLine	:= "D:\Software\Jade\2016\bin\jade.exe ini=D:\Software\Jade\2016\system\jade.ini path=D:\Software\Jade\2016\system appServerPort=4505 server=SingleUser app=Jade";
	
	assertEqualsMsg( "Cmd setting shouldnt be found", "", cmdLine.parseValue( "Cmd" ));
		
epilog
	delete cmdLine;
end;

}

shouldReturnEmptyWhenItemNotDeclared
{
shouldReturnEmptyWhenItemNotDeclared() unitTest;

vars
	cmdLine	: ATCommandLineReader;
	
begin
	create cmdLine transient;
	cmdLine.commandLine	:= "D:\Software\Jade\2016\bin\jade.exe ini=D:\Software\Jade\2016\system\jade.ini path=D:\Software\Jade\2016\system appServerPort=4505 server=SingleUser app=Jade";
	
	assertEqualsMsg( "Cmd setting shouldnt be found", "", cmdLine.parseValue( "Cmd" ));
		
epilog
	delete cmdLine;
end;

}

shouldReturnValueGivenQuotes
{
shouldReturnValueGivenQuotes() unitTest;

vars
	cmdLine	: ATCommandLineReader;
		
begin
	create cmdLine transient;
	cmdLine.commandLine	:= 'Path=D:\Software\Jade\2016\system appServerPort=4505 quotes="Single User" app=Jade';
	
	assertEqualsMsg( "Server setting must be found", "Single User", cmdLine.parseValue( "quotes" ));
		
epilog
	delete cmdLine;
end;

}

shouldReturnValueWhenDeclared
{
shouldReturnValueWhenDeclared() unitTest;

vars
	cmdLine	: ATCommandLineReader;
		
begin
	create cmdLine transient;
	cmdLine.commandLine	:= "D:\Software\Jade\2016\bin\jade.exe ini=D:\Software\Jade\2016\system\jade.ini path=D:\Software\Jade\2016\system appServerPort=4505 server=SingleUser app=Jade";
	
	assertEqualsMsg( "Ini setting must be found", "D:\Software\Jade\2016\system\jade.ini", cmdLine.parseValue( "Ini" ));
	assertEqualsMsg( "App setting must be found", "Jade", cmdLine.parseValue( "App" ));
		
epilog
	delete cmdLine;
end;

}

shouldUseDefaulWhenValueMissing
{
shouldUseDefaulWhenValueMissing() unitTest;

vars
	cmdLine	: ATCommandLineReader;
	
begin
	create cmdLine transient;
	cmdLine.commandLine	:= "D:\Software\Jade\2016\bin\jade.exe ini=D:\Software\Jade\2016\system\jade.ini path=D:\Software\Jade\2016\system appServerPort=4505 server=SingleUser app=Jade";
	
	assertEqualsMsg( "Default value should be used", "valueIfNotThere", 
				cmdLine.parseValueWithDefault( "valueNotThere", "valueIfNotThere" ));
		
epilog
	delete cmdLine;
end;
}

	)
	ATDatabaseTests (
	jadeMethodSources
shouldBuildObjects
{
shouldBuildObjects() unitTest;

vars
	db		: ATDatabase;
	builder	: ATBuilder;
	inst1	: Object;
	inst2	: Object;
	inst3	: Object;	
	
begin
	create builder transient;
			
	inst1	:= builder.make( JadeScript ).result;
	inst2	:= builder.make( JadeScript ).result;
	inst3	:= builder.make( StringArray ).result;
	
	assertEquals( inst1, builder.db.get( JadeScript, 1 ));
			
epilog
	delete builder;
end;

}

shouldCollateExistingObjects
{
shouldCollateExistingObjects() unitTest;

vars
	db	: ATDatabase;
	
begin
	create db transient;
	db.purgeOnDelete	:= false;
	
	db.add( system );
	db.add( currentSchema );
	db.add( rootSchema );
	db.add( node );
	
	assertEquals( system, db.get( System, 1 ));
	assertEquals( currentSchema, db.get( Schema, 1 ));
	assertEquals( rootSchema, db.get( Schema, 2 ));
	assertEquals( node, db.get( Node, 1 ));
		
	assertTrue( db.includes( system ));
	assertFalse( db.includes( process ));
	
	expectedException( ATAssertError );
	assertEquals( null, db.get( Node, 2 ));
	assertEquals( null, db.get( Process, 1 ));
	assertFalse(true);
	
epilog
	delete db;
end;

}

shouldCountObjectsCorrectly
{
shouldCountObjectsCorrectly() unitTest;

vars
	repo	: ATDatabase;
	inst1	: JadeScript;
	inst2	: JadeScript;
	inst3	: JadeScript;
	inst4	: StringArray;
	
begin
	create inst1 transient;
	create inst2 transient;
	create inst3 transient;
	create inst4 transient;

	create repo transient;
	repo.add( inst1 );
	repo.add( inst2 );
	repo.add( inst3 );
	repo.add( inst4 );
	
	assertEquals( 3, repo.classCount( JadeScript ));
	assertEquals( 1, repo.classCount( StringArray ));
	assertEquals( 0, repo.classCount( Object ));
	
epilog
	delete repo;
end;


}

shouldPurgeCreatedObjects
{
shouldPurgeCreatedObjects() unitTest;

vars
	repo	: ATDatabase;
	inst1	: JadeScript;
	inst2	: JadeScript;
	inst3	: JadeScript;
	inst4	: StringArray;
	
begin
	create inst1 transient;
	create inst2 transient;
	create inst3 transient;
	create inst4 transient;

	create repo transient;
	repo.add( inst1 );
	repo.add( inst2 );
	repo.add( inst3 );
	repo.add( inst4 );
	assertEquals( inst3, repo.get( JadeScript, 3 ));
	
	assertTrue( repo.includes( inst1 ));
	
	repo.purge();
	
	assertFalse( repo.includes( inst1 )); 
	
	assertFalse( app.isValidObject(inst1));
	assertFalse( app.isValidObject(inst2));
	assertFalse( app.isValidObject(inst3));
	assertFalse( app.isValidObject(inst4));
		
epilog
	delete repo;
end;


}

	)
	ATGarbageCollectorTests (
	jadeMethodSources
shouldPurgeObjects
{
shouldPurgeObjects() unitTest;

vars
	gc		: ATGarbageCollector;
	inst1	: JadeScript;
	inst2	: JadeScript;
	inst3	: JadeScript;
	
begin
	create gc transient;
	
	create inst1 transient;
	gc.add( inst1 );
		
	create inst2 transient;
	gc.add( inst2 );
	
	create inst3 transient;
	gc.add( inst3 );
	
	gc.remove( inst3 );
	
	delete gc;
	
	assertFalse( app.isValidObject( inst1 ));
	assertFalse( app.isValidObject( inst2 ));
	assertTrue( app.isValidObject( inst3 ));
	
epilog
	delete inst3;
	delete gc;
end;

}

	)
	ATLocatorSettingsTests (
	jadeMethodSources
shouldConvertFromString
{
shouldConvertFromString() unitTest;

vars
	settings	: ATLocatorSettings;
	reader		: ATCommandLineReader;
	
begin
	create reader transient;
	reader.commandLine	:= "SomeOther=Text skipSchemas=false TestSchemas=AutomatedTestSchema,AutomatedTestSchema_TestInternals" &
				" annotations=#annotation annotationsAvoid=#avoid1,#avoid2";

	create settings transient;
	settings.stringParse( reader );
	
	assertTrueMsg( "Main schema included", settings.schemas.includes( "AutomatedTestSchema" ));
	assertTrueMsg( "Test schema included", settings.schemas.includes( "AutomatedTestSchema_TestInternals" ));
	
	assertTrueMsg( "Annotation found", settings.annotations.includes( "#annotation" ));
	assertTrueMsg( "Annotation to avoid found", settings.annotationsAvoid.includes( "#avoid2" ));
	
epilog
	delete reader;
	delete settings;
end;
}

shouldConvertToString
{
shouldConvertToString() unitTest;

vars
	items		: StringArray;
	settings	: ATLocatorSettings;
	reader		: ATCommandLineReader;
	builder		: ATCommandLineBuilder;
	line		: String;
	
begin
	create settings transient;
	
	settings.schemas.add( "AutomatedTestSchema" );
	settings.schemas.add( "AutomatedTestSchema_TestInternals" );

	settings.annotations.add( "#annotation" );
	
	settings.annotationsAvoid.add( "#avoid1" );
	settings.annotationsAvoid.add( "#avoid2" );
	
	create builder transient;
	line	:= settings.stringBuild(builder);

	create reader transient;
	reader.commandLine	:= line;

	assertEqualsMsg( "Schemas defined", "AutomatedTestSchema,AutomatedTestSchema_TestInternals", reader.parseValue( ATLocatorSettings.ItemSchemas ));
	
epilog
	delete settings;
	delete reader;
	delete builder;
	delete items;
end;

}

	)
	ATLocatorTests (
	jadeMethodSources
getUnitTestCountForClass
{
getUnitTestCountForClass() : Integer protected;

vars

begin
	return self.class().getPropertyValue( Class::methods.name ).Collection.size() - 2;
end;

}

notAUnitTest
{
notAUnitTest() protected;

vars

begin
	// added as a decoy to test its not included in the hits
end;

}

shouldFindAllFromAllSchemas
{
shouldFindAllFromAllSchemas() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addSchema( rootSchema, true );
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));
	
epilog	
	delete testLocator;
end;

}

shouldFindAllFromCurrentSchema
{
shouldFindAllFromCurrentSchema() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addSchema( currentSchema, false );
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));

epilog	
	delete testLocator;
end;

}

shouldFindAllTests
{
shouldFindAllTests() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	testLocator.addAll();
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));
	assertTrueMsg( "Should find at least 30 tests", testLocator.unitTests.size() >= 30 );
		
epilog	
	delete testLocator;
end;

}

shouldFindClassFromName
{
shouldFindClassFromName() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addClassName( currentSchema.name, self.class().name );
		
	assertEqualsMsg( "All local methods should be found", getUnitTestCountForClass, testLocator.unitTests.size() );
		
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));
	
	assertFalseMsg( "Shouldnt find " & ATLocatorTests::notAUnitTest.name, 
			testLocator.unitTests.includes( ATLocatorTests::notAUnitTest ));	

epilog	
	delete testLocator;
end;
}

shouldFindFromClass
{
shouldFindFromClass() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addClass( ATLocatorTests );
	
	assertEqualsMsg( "All local methods should be found", getUnitTestCountForClass, testLocator.unitTests.size() );
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));
	
	assertFalseMsg( "Shouldnt find " & ATLocatorTests::notAUnitTest.name, 
			testLocator.unitTests.includes( ATLocatorTests::notAUnitTest ));	

epilog	
	delete testLocator;
end;
}

shouldFindFromClassAndChildren
{
shouldFindFromClassAndChildren() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addClasses( ATTests, currentSchema );
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));

epilog	
	delete testLocator;
end;
}

shouldFindFromSubschemas
{
shouldFindFromSubschemas() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addClassesDown( JadeTestCase, currentSchema.superschema );
	
	assertTrueMsg( "Should find " & method.name, testLocator.unitTests.includes( method ));

epilog	
	delete testLocator;
end;
}

shouldFindMethod
{
shouldFindMethod() unitTest;

vars
	testLocator	: ATLocator;
		
begin	
	create testLocator transient;
	
	testLocator.addMethod( ATLocatorTests::shouldFindMethod );
	testLocator.addMethod( ATLocatorTests::shouldFindMethod );
	testLocator.addMethod( ATLocatorTests::notAUnitTest );
	
	assertTrueMsg( "Should find " & ATLocatorTests::shouldFindMethod.name, 
			testLocator.unitTests.includes( ATLocatorTests::shouldFindMethod ));
	
	assertFalseMsg( "Shouldnt find " & ATLocatorTests::notAUnitTest.name, 
			testLocator.unitTests.includes( ATLocatorTests::notAUnitTest ));	
			
epilog	
	delete testLocator;
end;

}

shouldFindMethodGivenSettings
{
shouldFindMethodGivenSettings() unitTest;

// #SettingsTest

vars
	settings : ATLocatorSettings;
	locator	 : ATLocator;
	
begin
	create settings transient;
	settings.annotations.add( "#SettingsTest" );
	settings.schemas.add( currentSchema.name );
	
	create locator transient;
	locator.applySettings( settings );
	locator.inspectModal();
	assertTrueMsg( "Only find one unit test", locator.unitTests.size() = 1 );
	assertTrueMsg( "Only find this unit test", locator.unitTests.includes( ATLocatorTests::shouldFindMethodGivenSettings));
	
epilog
	delete settings;
	delete locator;
end;

}

shouldFindMethodWithAnnotation
{
shouldFindMethodWithAnnotation() unitTest;

// #sampleannotation1

vars
	testLocator	: ATLocator;
	annotation	: String;
	
begin
	// arrange
	create testLocator transient;
	
	// act
	testLocator.annotations.add( "#dummy" & "annotation" );	// string concat means we wont find this txt in method
	testLocator.annotations.add( "#sample" & "annotation1" );	// string concat means we wont find this txt in method
	testLocator.addClass( ATLocatorTests );
	
	// assert
	assertEquals( 1, testLocator.unitTests.size());
	assertTrueMsg( "Found only method that matches criteria", testLocator.unitTests.includes( method ));
	
epilog
	delete testLocator;
end;


}

shouldFindMethodWithAnnotationFromClass
{
shouldFindMethodWithAnnotationFromClass() unitTest;

vars
	testLocator	: ATLocator;
	annotation	: String;
	
begin
	// arrange
	create testLocator transient;
	
	// act
	testLocator.annotations.add( "#dummy" & "annotation" );	// string concat means we wont find this txt in method
	testLocator.annotations.add( "#fas" & "t" );				
	testLocator.addClass( ATLocatorTests );
	
	// assert
	assertTrueMsg( "Multiple methods should have been found", testLocator.unitTests.size() > 10);
	assertTrueMsg( "Found this method that matches criteria", testLocator.unitTests.includes( method ));
	
epilog
	delete testLocator;
end;


}

shouldFindMethodsWithPrefix
{
shouldFindMethodsWithPrefix() unitTest;

vars
	testLocator	: ATLocator;
	prefix		: String;
	
begin
	// arrange
	create testLocator transient;
	prefix	:= ATLocatorTests::shouldFindMethodsWithPrefix.name;
	prefix	:= prefix[1:prefix.length()-1];
	
	// act
	testLocator.methodPrefix	:= prefix;
	testLocator.addClass( ATLocatorTests );
	
	// assert
	assertEquals( 1, testLocator.unitTests.size());
	assertTrueMsg( "Found only method that matches criteria", testLocator.unitTests.includes( method ));
	
epilog
	delete testLocator;
end;

}

shouldIgnoreMethodWithAnnotation
{
shouldIgnoreMethodWithAnnotation() unitTest;

vars
	testLocator	: ATLocator;
	annotation	: String;
	
	// #sampleannotation2	(ignore as too far down method definition)
	
begin
	// arrange
	create testLocator transient;
	
	// act
	testLocator.annotations.add( "#sample" & "annotation2" );	// string concat means we wont find this txt in method
	testLocator.addClass( ATLocatorTests );
	
	// assert
	assertEquals( 0, testLocator.unitTests.size());
	
epilog
	delete testLocator;
end;


}

shouldIgnoreMethodWithAnnotationToAvoid
{
shouldIgnoreMethodWithAnnotationToAvoid() unitTest;

// #sampleannotation3, #slow

vars
	testLocator	: ATLocator;
	annotation	: String;
		
begin
	// arrange
	create testLocator transient;
	
	// act
	testLocator.annotations.add( "#sample" & "annotation3" );	// string concat means we wont find this txt in method
	testLocator.annotationsAvoid.add( "#slow" );	// string concat means we wont find this txt in method
	testLocator.addClass( ATLocatorTests );
	
	// assert
	assertEquals( 0, testLocator.unitTests.size());
	
epilog
	delete testLocator;
end;


}

	)
	ATMockMethodTests (
	jadeMethodSources
doCompile
{
doCompile( meth		: Method;
			   source	: String ) protected;

vars
	mock	: ATMock;
	mockMth	: ATMockMethod;
	cls		: Class;
	obj		: Object;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	
	mock.methodOverride( meth )
		.withSource( source );
		
	obj	:= mock.createTransient();	// create kicks off the compile
		
epilog
	delete obj;
	delete mock;
end;

}

shouldCompile
{
shouldCompile() unitTest;

vars
	source		: String;
	
begin
	source	:= 
'returnString() : String updating;
begin
	return "some text";
end;';

	doCompile( ATFixtureMock::returnString, source );
end;

}

shouldGenerateDoNothing
{
shouldGenerateDoNothing() unitTest;
	
vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::methodDoesNothing, "intValue" );
	
	// act
	mockMethod.doNothing();
	source	:= mockMethod.sourceCode;
			
	// assert
	doCompile( ATFixtureMock::methodDoesNothing, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateDoNothingWithReturnValue
{
shouldGenerateDoNothingWithReturnValue() unitTest;
	
vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnInteger, "retInt" );
	
	// act
	source	:= mockMethod.sourceCode;
				
	// assert
	doCompile( ATFixtureMock::returnInteger, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateRaiseException
{
shouldGenerateRaiseException() unitTest;

vars
	mockMethod	: ATMockMethod;
	source		: String;	
		
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnInteger, "" );
	
	mockMethod.raisesException( 2000, "Custom Exception" );
		
	// act
	source	:= mockMethod.sourceCode;
		
	// assert
	doCompile( ATFixtureMock::returnInteger, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateReturnInteger
{
shouldGenerateReturnInteger() unitTest;

vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnInteger, null );
	mockMethod.returns( 10 );
		
	// act
	source	:= mockMethod.sourceCode;
			
	// assert
	doCompile( ATFixtureMock::returnInteger, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateReturnObject
{
shouldGenerateReturnObject() unitTest;

vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnObject, null );
	mockMethod.returns( app );
		
	// act
	source	:= mockMethod.sourceCode;
		
	// assert
	doCompile( ATFixtureMock::returnObject, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateReturnObjectSelf
{
shouldGenerateReturnObjectSelf() unitTest;

vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnSelf, null );
	mockMethod.returns( "self" );
		
	// act
	source	:= mockMethod.sourceCode;
		
	// assert
	doCompile( ATFixtureMock::returnSelf, source );
	
epilog
	delete mockMethod;
end;

}

shouldGenerateReturnString
{
shouldGenerateReturnString() unitTest;

vars
	mockMethod	: ATMockMethod;
	source		: String;
	
begin
	// arrange
	create mockMethod transient;
	mockMethod.initialiseMethodOverride( ATFixtureMock, ATFixtureMock::returnString, null );
	mockMethod.returns( "some text" );
		
	// act
	source	:= mockMethod.sourceCode;
		
	// asserts
	doCompile( ATFixtureMock::returnString, source );

epilog
	delete mockMethod;
end;

}

	)
	ATMockTests (
	jadeMethodSources
shouldAddClassReference
{
shouldAddClassReference() unitTest;

constants	
	ObjectProperty = "myObject";
	
vars
	mock	: ATMock;
	cls		: Class;
	ref		: Reference;
	
begin
	// arrange
	create mock transient;
	cls	 := mock.zcode_createClass( ATFixtureMock );
	
	// act
	ref	:= mock.addReference( ObjectProperty, ATFixtureMock );
	
	// assert
	assertNotNull( ref );
	
epilog
	delete mock;
end;

}

shouldAddClassString
{
shouldAddClassString() unitTest;

constants	
	StringProperty = "myString";
	
vars
	mock	: ATMock;
	cls		: Class;
	attr	: Attribute;
	
begin
	// arrange
	create mock transient;
	cls	 := mock.zcode_createClass( ATFixtureMock );
	
	// act
	attr	:= mock.addAttribute( StringProperty, String );
	
	// assert
	assertNotNull( attr );
	
epilog
	delete mock;
end;

}

shouldCallMethodWithParam
{
shouldCallMethodWithParam() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	objMock	: ATFixtureMock;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	mock.methodOverride( ATFixtureMock::param1Method );
	
	objMock		:= mock.createTransient().ATFixtureMock;
	objMock.param1Method( "test" );
	
	assertTrue( mock.methodCallCount( objMock, ATFixtureMock::param1Method.name) = 1 );
		
epilog
	delete objMock;
	delete mock;
end;

}

shouldCallMethodWithParams
{
shouldCallMethodWithParams() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	objMock	: ATFixtureMock;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	mock.methodOverride( ATFixtureMock::param2Method );
	
	objMock		:= mock.createTransient().ATFixtureMock;
	objMock.param2Method( "test", 10 );
	
	assertTrue( mock.methodCallCount( objMock, ATFixtureMock::param2Method.name) = 1 );
		
epilog
	delete objMock;
	delete mock;
end;

}

shouldCount0CallsToMethod
{
shouldCount0CallsToMethod() unitTest;

vars
	mock	: ATMock;
	objMock	: ATFixtureMock;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	mock.methodOverride( ATFixtureMock::returnString )
					.returns("new text" );
	
	objMock		:= mock.createTransient().ATFixtureMock;

	assertEquals( 0, mock.methodCallCount( objMock, ATFixtureMock::returnString.name ));
		
epilog
	delete objMock;
	delete mock;
end;


}

shouldCount2CallsToMethod
{
shouldCount2CallsToMethod() unitTest;

vars
	mock	: ATMock;
	objMock	: ATFixtureMock;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	mock.methodOverride( ATFixtureMock::returnString )
					.returns("new text" );
	
	objMock		:= mock.createTransient().ATFixtureMock;
	objMock.returnString();
	objMock.returnString();	

	assertEquals( 2, mock.methodCallCount( objMock, ATFixtureMock::returnString.name ));
		
epilog
	delete objMock;
	delete mock;
end;


}

shouldCreate2MethodCalls
{
shouldCreate2MethodCalls() unitTest;

vars
	mock	: ATMock;
	objMock	: ATFixtureMock;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	
	mock.methodOverride( ATFixtureMock::returnString )
					.returns("new text" );

	mock.methodOverride( ATFixtureMock::returnSelf )
					.returns( null );

	objMock		:= mock.createTransient().ATFixtureMock;
	
	// try a function call
	objMock.returnString();	

	assertEquals( 1, mock.methodCallCount( objMock, ATFixtureMock::returnString.name ));
		
epilog
	delete objMock;
	delete mock;
end;


}

shouldCreateObject
{
shouldCreateObject() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	obj		: Object;
	
begin
	// arrange
	create mock transient;
	cls	 := mock.zcode_createClass( ATFixtureMock );
	mock.addAttribute( "prop", String );
	
	// act
	obj		:= mock.createTransient();
		
	// assert
	assertNotNull( obj );
	assertTrue( obj.isKindOf( ATFixtureMock ));
	
epilog
	delete obj;
	delete mock;
end;

}

shouldCreateTemporaryClass
{
shouldCreateTemporaryClass() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	
begin
	// arrange
	create mock transient;
	
	// act
	cls		:= mock.zcode_createClass( ATFixtureMock );
	
	// assert
	assertNotNull( cls );
	
epilog
	delete mock;
end;

}

shouldCreateTemporaryClasses
{
shouldCreateTemporaryClasses() unitTest;

vars
	mock1	: ATMock;
	mock2	: ATMock;
	cls1	: Class;
	cls2	: Class;
	
begin
	// arrange
	create mock1 transient;
	create mock2 transient;

	// act
	cls1	:= mock1.zcode_createClass( ATFixtureMock );
	cls2	:= mock2.zcode_createClass( ATFixtureMock );
	
	// assert
	assertNotNull( cls1 );
	assertNotNull( cls2 );

epilog
	delete mock1;
	delete mock2;
end;

}

shouldDeleteTransientClass
{
shouldDeleteTransientClass() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	
begin
	// arrange
	create mock transient;
	cls		:= mock.zcode_createClass( ATFixtureMock );
	
	// act
	mock.deleteClass();
	
	// assert
	assertNull( mock.transientClass );
	
epilog
	delete mock;
end;

}

shouldReturnNewValueMethodOverride
{
shouldReturnNewValueMethodOverride() unitTest;

vars
	mock	: ATMock;
	cls		: Class;
	objBase	: ATFixtureMock;
	objMock	: ATFixtureMock;
	result	: String;
	
begin
	// arrange
	create mock transient;
	mock.zcode_createClass( ATFixtureMock );
	mock.methodOverride( ATFixtureMock::returnString )
					.returns("new text" );
	
	create objBase transient;
	objMock		:= mock.createTransient().ATFixtureMock;

	assertEquals( "A string", objBase.returnString() );
	assertEquals( "new text", objMock.returnString() );
		
epilog
	delete objBase;
	delete objMock;
	delete mock;
end;

}

shouldSetStringValue
{
shouldSetStringValue() unitTest;

constants	
	StringProperty = "myString";
	
vars
	mock	: ATMock;
	cls		: Class;
	attr	: Attribute;
	obj		: Object;
	
begin
	// arrange
	create mock transient;
	cls	 	:= mock.zcode_createClass( ATFixtureMock );
	mock.addAttribute( StringProperty, String );
	obj		:= mock.createTransient();
	
	// act / assert
	obj.setPropertyValue( StringProperty, "initial value" );
	assertEquals( "initial value", obj.getPropertyValue( StringProperty ));
	
	// act / assert
	obj.setPropertyValue( StringProperty, null );
	assertEquals( null, obj.getPropertyValue( StringProperty ));
	
epilog
	delete obj;
	delete mock;
end;

}

	)
	ATSchemaEntityFinderTests (
	jadeMethodSources
shouldFindMethodFromQualifiedName
{
shouldFindMethodFromQualifiedName() unitTest;

vars
	mthFinder	: ATSchemaEntityFinder;
	mth			: Method;
	
begin
	create mthFinder transient;
	mth	:= mthFinder.findMethodQualified( currentSchema.name & "::" & class.name & "::" & method.name );
								 
	assertEquals( method, mth );

epilog
	delete mthFinder;
end;
}

shouldFindThisMethod
{
shouldFindThisMethod() unitTest;

vars
	mthFinder	: ATSchemaEntityFinder;
	mth			: Method;
	
begin
	create mthFinder transient;
	mth	:= mthFinder.findMethod( currentSchema.name,
								 class.name,
								 method.name );
								 
	assertEquals( method, mth );

epilog
	delete mthFinder;
end;
}

	)
	ATSchemaFileCleanerTests (
	jadeMethodSources
shouldRemoveFieldNumber
{
shouldRemoveFieldNumber() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= "MyClass number = 7, ordinal = 7;" & CrLf & "typeSources";
	cleaner.clean();

	assertTrue( cleaner.contents.pos( "number = ", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "number=", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "ordinal = ", 1 ) = 0 );
			
epilog
	delete cleaner;
end;

}

shouldRemoveFieldNumberFromString
{
shouldRemoveFieldNumberFromString() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= "methodPrefix: String[31] number = 3, ordinal = 3;" & CrLf & "typeSources";
	cleaner.clean();

	assertTrue( cleaner.contents.pos( "number = ", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "ordinal = ", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "[31]", 1 ) > 0 );
			
epilog
	delete cleaner;
end;

}

shouldRemoveInterfaceNumber
{
shouldRemoveInterfaceNumber() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= "IATBuilderModify number = 1514" & CrLf & "(;";
	cleaner.clean();

	assertTrue( cleaner.contents.pos( "1514", 1 ) = 0 );
			
epilog
	delete cleaner;
end;

}

shouldRemoveJCF
{
shouldRemoveJCF() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= '/* JADE COMMAND FILE NAME D:\rubbish\WingmanSchema.jcf */
jadeVersionNumber "16.0.02";
schemaDefinition';

	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( "COMMAND", 1 ) = 0);
			
epilog
	delete cleaner;
end;


}

shouldRemoveMapNumber
{
shouldRemoveMapNumber() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= '"autotest" number=73;' & CrLf & "typeSources" & CrLf;
	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( "number = ", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "number=", 1 ) = 0 );
	assertTrue( cleaner.contents.pos( "ordinal = ", 1 ) = 0 );
			
epilog
	delete cleaner;
end;

}

shouldRemovePatchHeader
{
shouldRemovePatchHeader() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= "partialDefinition, patchVersion=45, patchVersioningEnabled = false;" & CrLf;
	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( "partialDefinition;", 1 ) = 1);
			
epilog
	delete cleaner;
end;

}

shouldRemoveSetModifiedTime
{
shouldRemoveSetModifiedTime() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= ClassExtract;
	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( "setModifiedTimeStamp", 1 ) = 0 );
	
epilog
	delete cleaner;
end;

}

shouldRemoveUser
{
shouldRemoveUser() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= ClassExtract;
	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( "beaufoy", 1 ) = 0 );
	
epilog
	delete cleaner;
end;

}

shouldReplaceJadeVersion
{
shouldReplaceJadeVersion() unitTest;

vars
	cleaner	: ATSchemaFileCleaner;
	
begin
	create cleaner transient;
	cleaner.contents	:= '/* JADE COMMAND FILE NAME D:\rubbish\WingmanSchema.jcf */
jadeVersionNumber "7.01.02";
schemaDefinition';

	cleaner.clean();
	
	assertTrue( cleaner.contents.pos( '"16.0.02"', 1 ) > 0);
			
epilog
	delete cleaner;
end;


}

	)
