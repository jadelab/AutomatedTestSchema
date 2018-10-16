
jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema_DemoBatchRunner subschemaOf RootSchema completeDefinition; 
importedPackageDefinitions
	AutomatedTestPackage is AutomatedTestSchema::AutomatedTestPackage
	(
		importedClassDefinitions
			ATBatch
			ATBatchResults
			ATBatchResultsRoot
			ATBatchResultsSchemaTests
			ATBatchResultsSchemaTestsDict
			ATBatchResultsTest
			ATBatchResultsTestDict
			ATBatchRunner
			ATBatchSettings
			ATBatchWorkerInitialiser
			ATBuilder
			ATChangeTracker
			ATChangeTrackerObject
			ATDatabase
			ATFixtureMaker
			ATGarbageCollector
			ATLocator
			ATMock
			ATMockMethod
			AutomatedTest
		importedInterfaceDefinitions
			IATBuilderCommands
			IATBuilderModify
			IATDatabaseCommands
			IATFixtureMaker
			IATFixtureMakerEvents
			IATFixtureMakerRegistration
			IATFixtureMakerTarget
			IATGarbageCollector
			IATGarbageCollectorOwner
			IATMockMethod
			IATRunner
			IATRunnerTarget
	)

constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
libraryDefinitions
typeHeaders
	AutomatedTestSchema_DemoBatchRunner subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	GAutomatedTestSchema_DemoBatchRunner subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	SAutomatedTestSchema_DemoBatchRunner subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
 
interfaceDefs
membershipDefinitions
 
typeDefinitions
	AutomatedTestPackage::ATBatch completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResults completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResultsRoot completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResultsSchemaTests completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResultsSchemaTestsDict completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResultsTest completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchResultsTestDict completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchRunner completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchSettings completeDefinition
	(
	)
	AutomatedTestPackage::ATBatchWorkerInitialiser completeDefinition
	(
	)
	AutomatedTestPackage::ATBuilder completeDefinition
	(
	)
	AutomatedTestPackage::ATChangeTracker completeDefinition
	(
	)
	AutomatedTestPackage::ATChangeTrackerObject completeDefinition
	(
	)
	AutomatedTestPackage::ATDatabase completeDefinition
	(
	)
	AutomatedTestPackage::ATFixtureMaker completeDefinition
	(
	)
	AutomatedTestPackage::ATGarbageCollector completeDefinition
	(
	)
	AutomatedTestPackage::ATLocator completeDefinition
	(
	)
	AutomatedTestPackage::ATMock completeDefinition
	(
 
	jadeMethodDefinitions
		createClass(persistentClass: Class): Class updating; 
	)
	AutomatedTestPackage::ATMockMethod completeDefinition
	(
	)
	AutomatedTestPackage::AutomatedTest completeDefinition
	(
	)
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	AutomatedTestSchema_DemoBatchRunner completeDefinition
	(
 
	jadeMethodDefinitions
		intialiseAutomatedTestRunner(batchRequest: Object) updating, protected; 
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GAutomatedTestSchema_DemoBatchRunner completeDefinition
	(
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		run01_AllSchemas();
		run02_AllAutomatedTestSchemas();
		run03_AllIntegratedTestsForJenkins();
		run04_CustomiseResultOutput();
		run10_ShortcutToJadeScript();
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SAutomatedTestSchema_DemoBatchRunner completeDefinition
	(
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchema_DemoBatchRunner
	(
	databaseFileDefinitions
		"autoTest";
	defaultFileDefinition "autoTest";
	classMapDefinitions
		SAutomatedTestSchema_DemoBatchRunner in "_environ";
		AutomatedTestSchema_DemoBatchRunner in "_usergui";
		GAutomatedTestSchema_DemoBatchRunner in "autoTest";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	AutomatedTestPackage::ATMock (
	jadeMethodSources
createClass
{
createClass( persistentClass	: Class )
								: Class updating;

vars
	transientClass	: Class;
	newClassName	: String;
	schema			: Schema;
	
begin
	// create the class in the context of this schema then pass over to the package for refinement	
	newClassName	:= persistentClass.name & "_Temp"[1:100];
	schema			:= currentSchema;
	transientClass	:= process.createTransientClass( schema, newClassName, persistentClass.name );
						
	createClassInternal( transientClass, persistentClass, appContext );
	return transientClass;
end;
}

	)
	AutomatedTestSchema_DemoBatchRunner (
	jadeMethodSources
intialiseAutomatedTestRunner
{
intialiseAutomatedTestRunner( batchRequest : Object ) updating, protected;

vars
	runTests	: ATBatchWorkerInitialiser;
	
begin
	create runTests transient;
	runTests.initialiseWorkerApp( batchRequest );
end;
}

	)
	JadeScript (
	jadeMethodSources
run01_AllSchemas
{
run01_AllSchemas();

// Runs all unit tests in the environment on the proviso the package is available and the work app defined

// Output defaults to the interpreter

vars
	runner	: ATBatchRunner;
	
begin
	create runner transient;
	runner.run();
end;


}

run02_AllAutomatedTestSchemas
{
run02_AllAutomatedTestSchemas();

// Runs all unit tests from the AutomatedTestSchemas

vars
	runner	: ATBatchRunner;
	scm		: Schema;
	
begin
	create runner transient;
	
	// locate the tests
	foreach scm in Schema.instances do	
		if scm.name.pos( "AutomatedTestSchema", 1 ) = 1 then
			runner.locator.addSchema( scm, true );
		endif;
	endforeach;
	
	// use the csv format
	runner.batchSettings.outputFormat	:= ATBatchSettings.OutputFormatCSV;
		
	// run the tests, defaulting output to the screem
	runner.run();
end;


}

run03_AllIntegratedTestsForJenkins
{
run03_AllIntegratedTestsForJenkins();

// Runs all tests marked with #sampleannotation1 and writes the file to the logs folder

vars
	runner	: ATBatchRunner;
	
begin
	create runner transient;
	
	// locate the tests
	runner.locator.annotations.add("#sampleannotation1");
	
	// use the jenkins friendly format
	runner.batchSettings.outputFormat	:= ATBatchSettings.OutputFormatNUnit;
	runner.batchSettings.outputTarget	:= ATBatchSettings.OutputTargetFile;
	
	// execute
	runner.run();
end;


}

run04_CustomiseResultOutput
{
run04_CustomiseResultOutput();

// Runs all tests marked with #sampleannotation1 and writes the file to the logs folder

vars
	runner			: ATBatchRunner;
	schemaResult	: ATBatchResultsSchemaTests;
	
begin
	create runner transient;
	runner.locator.annotations.add("#sampleannotation1");
	runner.batchSettings.outputFormat	:= ATBatchSettings.OutputFormatNone;
	runner.run();
	
	write "All schemas: " & runner.results.result;
	write " Count passed: " & runner.results.countPassed.String;
	write " Count failed: " & runner.results.countFailed.String;
	
	foreach schemaResult in runner.results.allSchemaTests do
		write "Schema=" & schemaResult.schemaName;
		write " Count passed: " & runner.results.countPassed.String;
		write " Count failed: " & runner.results.countFailed.String;
		
		// could go down into each method result via schemaResult.allTests
	endforeach;
end;


}

run10_ShortcutToJadeScript
{
run10_ShortcutToJadeScript();

// needs to be run in multiuser mode

vars
	result		: Integer;
	arg			: String;
	exe			: String;
	args		: StringArray;
	shortcut	: String;
	
begin
	create args transient;
	args.add( "schema=" & currentSchema.name );
	args.add( "app=AutomatedTestDemoScript" );			
	args.add( "server=MultiUser" );
	args.add( "newcopy=false" );
	args.add( "path=" & app.dbPath() );
	args.add( "ini=" & app.getIniFileNameAppServer());
	args.add( "executeSchema=" & currentSchema.name );
	args.add( "executeClass=" & JadeScript.name );
	args.add( "executeMethod=" & JadeScript::run03_AllIntegratedTestsForJenkins.name );
			
	// show the commandline
	exe			:= app.getJadeInstallDir() & "\jadclient";
	shortcut	:= exe;
	foreach arg in args do
		shortcut	:= shortcut & " " & arg;
	endforeach;
	write shortcut;
		
	node.createExternalProcess( null,
								exe,
								args,
								"",
								false,
								true,
								result );
	
end;

}

	)
