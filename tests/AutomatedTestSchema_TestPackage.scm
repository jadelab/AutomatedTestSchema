
jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema_TestPackage subschemaOf RootSchema completeDefinition; 
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
libraryDefinitions
typeHeaders
	AutomatedTestSchema_TestPackage subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	GAutomatedTestSchema_TestPackage subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	SAutomatedTestSchema_TestPackage subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
 
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
	AutomatedTestSchema_TestPackage completeDefinition
	(
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GAutomatedTestSchema_TestPackage completeDefinition
	(
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SAutomatedTestSchema_TestPackage completeDefinition
	(
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchema_TestPackage
	(
	databaseFileDefinitions
		"autoTest";
	defaultFileDefinition "autoTest";
	classMapDefinitions
		SAutomatedTestSchema_TestPackage in "_environ";
		AutomatedTestSchema_TestPackage in "_usergui";
		GAutomatedTestSchema_TestPackage in "autoTest";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
