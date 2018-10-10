
jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema_DemoTestDoubles subschemaOf RootSchema completeDefinition; 
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
	AutomatedTestSchema_DemoTestDoubles subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	GAutomatedTestSchema_DemoTestDoubles subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	LaunchControlTests subclassOf JadeTestCase;
	LaunchCode subclassOf Object;
	LaunchControl subclassOf Object transient, transientAllowed; 
	Missile subclassOf Object transient; 
	SAutomatedTestSchema_DemoTestDoubles subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
 
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
	AutomatedTestSchema_DemoTestDoubles completeDefinition
	(
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GAutomatedTestSchema_DemoTestDoubles completeDefinition
	(
	)
	JadeTestCase completeDefinition
	(
	)
	LaunchControlTests completeDefinition
	(
 
	jadeMethodDefinitions
		demo01_DefaultBehaviour() unitTest; 
		demo02_OverrideLaunchCodeValidationBehaviour() unitTest; 
		demo03_OverrideMissileFireBehaviour() unitTest; 
		demo04_TestShouldLaunchGivenValidCode() unitTest; 
		demo05_TestShouldAbortLaunchGivenInvalidCode() unitTest; 
	)
	LaunchCode completeDefinition
	(
	attributeDefinitions
		code:                          String[11];
 
	jadeMethodDefinitions
		isValid(): Boolean;
	)
	LaunchControl completeDefinition
	(
 
	jadeMethodDefinitions
		launchMissile(
			missile: Missile input; 
			launchCode: LaunchCode): Boolean;
	)
	Missile completeDefinition
	(
 
	jadeMethodDefinitions
		fire() updating; 
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SAutomatedTestSchema_DemoTestDoubles completeDefinition
	(
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchema_DemoTestDoublesDb
	(
	databaseFileDefinitions
		"autoTest";
	defaultFileDefinition "autoTest";
	classMapDefinitions
		SAutomatedTestSchema_DemoTestDoubles in "_environ";
		AutomatedTestSchema_DemoTestDoubles in "_usergui";
		GAutomatedTestSchema_DemoTestDoubles in "autoTest";
		Missile in "autoTest";
		LaunchControl in "autoTest";
		LaunchControlTests in "autoTest";
		LaunchCode in "autoTest";
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
	LaunchControlTests (
	jadeMethodSources
demo01_DefaultBehaviour
{
demo01_DefaultBehaviour() unitTest;
/*
	How the code would work without any test doubles
*/

vars
	missile			: Missile;
	launchCode		: LaunchCode;
	launchControl	: LaunchControl;
	fired			: Boolean;
	
begin
	create missile transient;
	create launchCode transient;
	create launchControl transient;
	
	fired	:= launchControl.launchMissile( missile, launchCode );	
	
	assertFalse( fired );
end;
}

demo02_OverrideLaunchCodeValidationBehaviour
{
demo02_OverrideLaunchCodeValidationBehaviour() unitTest;
/*
	Demonstrates how we can alter the behaviour of a function call
*/

vars
	launchCode			: LaunchCode;
	launchCodeMocker	: ATMock;
	
begin
	// default behaviour
	create launchCode transient;
	assertTrueMsg( "Launch code cannot be used", not launchCode.isValid() );
	
	// override behaviour to mimic a valid code by returning true instead
	create launchCodeMocker transient;
	launchCodeMocker.createClass( LaunchCode );
	launchCodeMocker.methodOverride( LaunchCode::isValid ).returns(true);		
	
	launchCode	:= launchCodeMocker.createTransient().LaunchCode;
	assertTrueMsg( "Launch code can be used", launchCode.isValid() );
end;
}

demo03_OverrideMissileFireBehaviour
{
demo03_OverrideMissileFireBehaviour() unitTest;
/*
	Demonstrates how we can prevent the behaviour of a function call, while still proving its called
*/

vars
	missile			: Missile;
	missileMocker	: ATMock;
	
begin
	create missileMocker transient;
	missileMocker.createClass( Missile );
	missileMocker.methodOverride( Missile::fire ).doNothing();
	
	missile	:= missileMocker.createTransient().Missile;
	
	assertTrueMsg( "Missile::fire has not been called", 
						not missileMocker.methodCalled( missile, Missile::fire ));
	
	missile.fire();
	
	assertTrueMsg( "Missile::fire has been called", 
						    missileMocker.methodCalled( missile, Missile::fire ));
end;
}

demo04_TestShouldLaunchGivenValidCode
{
demo04_TestShouldLaunchGivenValidCode() unitTest;
/*
	Do everything but fire the missile
*/

vars
	launchCode			: LaunchCode;
	missile				: Missile;
	launchControl		: LaunchControl;
	fired				: Boolean;
	
	launchCodeMocker	: ATMock;
	missileMocker		: ATMock;
		
begin
	create launchCodeMocker transient;
	launchCodeMocker.createClass( LaunchCode );
	launchCodeMocker.methodOverride( LaunchCode::isValid ).returns(true);
	launchCode	:= launchCodeMocker.createTransient().LaunchCode;	

	create missileMocker transient;
	missileMocker.createClass( Missile );
	missileMocker.methodOverride( Missile::fire ).doNothing();
	missile	:= missileMocker.createTransient().Missile;
	
	create launchControl transient;
	fired	:= launchControl.launchMissile( missile, launchCode );
	
	// asserts
	assertTrueMsg( "Missile fired", fired );
end;
}

demo05_TestShouldAbortLaunchGivenInvalidCode
{
demo05_TestShouldAbortLaunchGivenInvalidCode() unitTest;
/*
	Test behaviour if provided with an invalid code
*/

vars
	launchCode			: LaunchCode;
	missile				: Missile;
	launchControl		: LaunchControl;
	fired				: Boolean;

	missileMocker		: ATMock;
		
begin
	create launchCode transient;

	create missileMocker transient;
	missileMocker.createClass( Missile );
	missileMocker.methodOverride( Missile::fire ).doNothing();
	missile	:= missileMocker.createTransient().Missile;
	
	create launchControl transient;
	fired	:= launchControl.launchMissile( missile, launchCode );
	
	// asserts
	assertTrueMsg( "Missile did not fire", fired = false );
	assertTrueMsg( "Missile::fire has not been called", not missileMocker.methodCalled( missile, Missile::fire ));
end;
}

	)
	LaunchCode (
	jadeMethodSources
isValid
{
isValid(): Boolean;

vars
	
begin
	// simulate live behaviour, but we simply dont know what the valid codes are - and nor should we!
	return false;
end;
}

	)
	LaunchControl (
	jadeMethodSources
launchMissile
{
launchMissile( missile		: Missile input;
			   launchCode	: LaunchCode 
						   ): Boolean;

vars
	
begin
	// check the launch code is authentic
	if launchCode = null 
	or not launchCode.isValid() then
		return false;
	endif;

	// fire the missile
	missile.fire();
	return true;
end;
}

	)
	Missile (
	jadeMethodSources
fire
{
fire() updating;

vars
	
begin
	// function would fire the missile
	app.msgBox( "Missile Launch !!!!", "AutomatedUnitTest", MsgBox_Exclamation_Mark_Icon );
end;
}

	)
