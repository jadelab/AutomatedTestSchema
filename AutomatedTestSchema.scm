
jadeVersionNumber "16.0.02";
schemaDefinition
AutomatedTestSchema subschemaOf RootSchema completeDefinition; 
importedPackageDefinitions
constantDefinitions
	categoryDefinition ATGeneral
		ATAssertError:                 Integer = 64000;
		ATLifetime_Persistent:         Character = 'P';
		ATLifetime_Transient:          Character = 'T';
		ATVersion:                     String = "0.1.1";
		AppNameBatchRunner:            String = "AutomatedTestRunner";
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
libraryDefinitions
typeHeaders
	AutomatedTestSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	AutomatedTest subclassOf Object abstract, transient; 
	ATBatchCommandLine subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchController subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchGenerateCSV subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchGenerateXML subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchListener subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchResult subclassOf AutomatedTest abstract, transient; 
	ATBatchRoot subclassOf ATBatchResult transient; 
	ATBatchSchemaTests subclassOf ATBatchResult transient; 
	ATBatchTest subclassOf ATBatchResult transient; 
	ATBatchRunner subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBatchWorkerInitialiser subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATBuilder subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATChangeTracker subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATChangeTrackerObject subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATCommandLineReader subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATDatabase subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATDeltaMode subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATFileLogger subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATFileWriter subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATFixtureMaker subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATGarbageCollector subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATLocator subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATMock subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATMockMethod subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATPurger subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATSchemaEntityFinder subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATSchemaFileCleaner subclassOf AutomatedTest transient, transientAllowed, subclassTransientAllowed; 
	ATVariableCollection subclassOf AutomatedTest abstract; 
	ATVariableStringArray subclassOf ATVariableCollection transient, transientAllowed, subclassTransientAllowed; 
	ATAssertException subclassOf NormalException transient, transientAllowed, subclassTransientAllowed; 
	GAutomatedTestSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	SAutomatedTestSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	ATBatchSchemaTestsDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	ATBatchTestDict subclassOf MemberKeyDictionary loadFactor = 66, transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
	ATChangeTrackerObjectDict subclassOf MemberKeyDictionary loadFactor = 66, transient, transientAllowed, subclassTransientAllowed; 
	ATBatchRequestArray subclassOf ObjectArray loadFactor = 66, transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed; 
 
interfaceDefs
	IATBuilderModify 
	(
 
	jadeMethodDefinitions
		asString(): String;
		collAdd(
			collProperty: Property; 
			valueList: ParamListType): IATBuilderModify;
		collCopy(
			collProperty: Property; 
			values: Collection): IATBuilderModify;
		result(): Object;
		set(
			property: Property; 
			value: Any): IATBuilderModify;
		setNull(property: Property): IATBuilderModify;
	)
 
	IATBuilderCommands 
	(
 
	jadeMethodDefinitions
		cloneObject(from: Object): IATBuilderModify;
		cloneObjectWithKey(
			from: Object; 
			propKeyChg: Property; 
			valueKeyChg: Any): IATBuilderModify;
		lifetimeSetPersistent();
		lifetimeSetTransient();
		make(classType: Class): IATBuilderModify;
		refine(target: Object): IATBuilderModify;
		result(): Object;
	)
 
	IATDatabaseCommands 
	(
 
	jadeMethodDefinitions
		add(object: Object);
		classCount(classType: Class): Integer;
		classInstances(
			classType: Class; 
			includeSubclasses: Boolean; 
			coll: Collection input);
		clear();
		get(
			classType: Class; 
			instance: Integer; 
			mustExist: ParamListType): Object;
		getObject(
			classType: Class; 
			instance: Integer; 
			object: Any output);
		includes(object: Object): Boolean;
		instances(): Collection;
		purge();
	)
 
	IATFixtureMaker 
	(
 
	jadeMethodDefinitions
		clear();
		execute(fixtureMethod: Method): Object;
		result(): Object;
	)
 
	IATFixtureMakerEvents 
	(
 
	jadeMethodDefinitions
		fixtureBuilt();
		fixtureCleared();
		fixtureStarted();
	)
 
	IATFixtureMakerRegistration 
	(
 
	jadeMethodDefinitions
		register(
			currentMethod: JadeMethod; 
			prerequisiteMethods: ParamListType);
	)
 
	IATFixtureMakerTarget 
	(
 
	jadeMethodDefinitions
		initialise(
			paramFixtureMaker: IATFixtureMakerRegistration; 
			paramBuilder: ATBuilder; 
			paramSettings: Object);
		result(): Object;
	)
 
	IATGarbageCollector 
	(
 
	jadeMethodDefinitions
		add(object: Object);
		clear();
		purge();
		remove(object: Object);
	)
 
	IATMockMethod 
	(
 
	jadeMethodDefinitions
		doNothing(): IATMockMethod;
		raisesException(
			errorCode: Integer; 
			errorDesc: String): IATMockMethod;
		returns(any: Any): IATMockMethod;
		withSource(source: String): IATMockMethod;
	)
 
	IATRunner 
	(
 
	jadeMethodDefinitions
		clear();
		execute(mth: Method): Object;
		executeWithPrerequisites(
			mainMethod: JadeMethod; 
			prerequisiteMethods: ParamListType);
	)
 
	IATRunnerTarget 
	(
 
	jadeMethodDefinitions
		initialise(
			paramRunner: ATFixtureMaker; 
			paramRepo: ATDatabase; 
			paramSettings: Object);
		result(): Object;
	)
 
membershipDefinitions
	ATBatchSchemaTestsDict of ATBatchSchemaTests ;
	ATBatchTestDict of ATBatchTest ;
	ATChangeTrackerObjectDict of ATChangeTrackerObject ;
	ATBatchRequestArray of ATBatchSchemaTests ;
 
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
 
	jadeMethodDefinitions
		initialiseTestRunnerCommandline() updating, protected; 
		initialiseTestRunnerWorker(batchRequest: Object) updating, protected; 
		mustExist(
			target: Any; 
			targetName: String);
		require(
			trueToPass: Boolean; 
			messageOnError: String);
	)
	AutomatedTest completeDefinition
	(
	)
	ATBatchCommandLine completeDefinition
	(
	constantDefinitions
		OutputTypeCSV:                 String = "csv";
		OutputTypeXML:                 String = "xml";
	attributeDefinitions
		paramOutputType:               String;
		paramSchema:                   String;
		paramSchemaSubschemas:         Boolean;
		paramWorkers:                  Integer;
	referenceDefinitions
		batch:                         ATBatchController;
		commandLineReader:             ATCommandLineReader;
		finder:                        ATLocator  readonly; 
		gc:                            ATGarbageCollector  protected; 
 
	jadeMethodDefinitions
		create() updating; 
		delete() updating; 
		run() updating; 
		runFromCommandLine() updating; 
	)
	ATBatchController completeDefinition
	(
	attributeDefinitions
		appName:                       String[51];
		batchSize:                     Integer;
		skipUnsupportedSchemas:        Boolean;
		sleepTime:                     Integer;
		workers:                       Integer;
	referenceDefinitions
		allBatchTestsActive:           ATBatchRequestArray  implicitMemberInverse, protected; 
		allBatchTestsUnfilled:         ATBatchSchemaTestsDict  implicitMemberInverse, protected; 
		allMethods:                    MethodColl  implicitMemberInverse, readonly; 
		root:                          ATBatchRoot  readonly; 
 
	jadeMethodDefinitions
		batchRootCreate() updating, protected; 
		batchRootDestroy() updating, protected; 
		batchSchemaCreate(schemaName: String): ATBatchSchemaTests protected; 
		clear() updating, protected; 
		create() updating; 
		delete() updating; 
		execute() updating; 
		requestApplicationAvailable() protected; 
		requestApplicationStart(request: ATBatchSchemaTests input) protected; 
		requestApplicationStartException(
			exp: Exception; 
			request: ATBatchSchemaTests): Integer protected; 
		requestsConsolidate() protected; 
		requestsRun() updating, protected; 
		requestsSetup() updating, protected; 
	)
	ATBatchGenerateCSV completeDefinition
	(
	attributeDefinitions
		includeSummary:                Boolean;
		output:                        String readonly; 
 
	jadeMethodDefinitions
		create() updating; 
		generate(root: ATBatchRoot) updating; 
		generateString(root: ATBatchRoot): String protected; 
		getIntegerText(value: Integer): String protected; 
	)
	ATBatchGenerateXML completeDefinition
	(
	attributeDefinitions
		output:                        String readonly; 
 
	jadeMethodDefinitions
		generate(root: ATBatchRoot) updating; 
		generateString_NUNIT(root: ATBatchRoot): String updating, protected; 
		xmlAppend(
			line: String; 
			padding: Integer) updating, protected; 
		xmlAppendCDATA(
			contents: String; 
			padding: Integer) updating, protected; 
		xmlAppendLine(
			line: String; 
			padding: Integer) updating, protected; 
	)
	ATBatchListener completeDefinition
	(
	attributeDefinitions
		clockLast:                     Integer protected; 
	referenceDefinitions
		allTests:                      ATBatchTestDict  implicitMemberInverse, readonly; 
		methodFinder:                  ATSchemaEntityFinder  protected; 
 
	jadeMethodDefinitions
		create() updating; 
		delete() updating; 
		finish(
			elapsedTime: Time; 
			testsFailed: Integer; 
			testsSkipped: Integer; 
			testsSucceeded: Integer) protected; 
		getNextDuration(): Integer updating, protected; 
		message(messageText: String) updating, protected; 
		methodSuccess(testMethodName: String) updating, protected; 
		recordTestResult(
			methodName: String; 
			failed: Boolean; 
			passed: Boolean; 
			skipped: Boolean): ATBatchTest updating, protected; 
		start(numberOfTestMethods: Integer) protected; 
		testFailure(
			testMethodName: String; 
			callStack: String; 
			failureReason: String) updating, protected; 
		testSkipped(testMethodName: String) updating, protected; 
		testSuccess(testMethodName: String) protected; 
	implementInterfaces
		JadeTestListenerIF
		(
		finish is finish;
		message is message;
		methodSuccess is methodSuccess;
		start is start;
		testFailure is testFailure;
		testSkipped is testSkipped;
		testSuccess is testSuccess;
		)
	)
	ATBatchResult completeDefinition
	(
	attributeDefinitions
		countAll:                      Integer readonly, virtual; 
		countFailed:                   Integer readonly; 
		countPassed:                   Integer readonly; 
		countSkipped:                  Integer readonly; 
		duration:                      Integer readonly; 
		durationSecs:                  Decimal[10,3] readonly, virtual; 
		result:                        String readonly, virtual; 
 
	jadeMethodDefinitions
		copyResults(from: ATBatchResult) updating; 
		countAll(
			set: Boolean; 
			_value: Integer io) mapping; 
		durationSecs(
			set: Boolean; 
			_value: Decimal io) mapping; 
		result(
			set: Boolean; 
			_value: String io) mapping; 
		updateAppend(
			failed: Integer; 
			passed: Integer; 
			skipped: Integer; 
			durationAdd: Integer) updating; 
	)
	ATBatchRoot completeDefinition
	(
	attributeDefinitions
		description:                   String[101] readonly; 
		startTime:                     TimeStamp readonly; 
	referenceDefinitions
		allBatchTests:                 ATBatchSchemaTestsDict  implicitMemberInverse, readonly; 
		allSchemaTests:                ATBatchSchemaTestsDict  implicitMemberInverse, readonly; 
 
	jadeMethodDefinitions
		create() updating; 
		delete() updating; 
		getDeveloperCount(): Integer;
		getDevelopers(): StringArray protected; 
	)
	ATBatchSchemaTests completeDefinition
	(
	attributeDefinitions
		abortReason:                   String readonly; 
		completed:                     Boolean readonly; 
		count:                         Integer readonly, virtual; 
		schemaName:                    String[101];
	referenceDefinitions
		allMethods:                    ObjectArray  implicitMemberInverse, readonly; 
		allTests:                      ATBatchTestDict  implicitMemberInverse, readonly; 
 
	jadeMethodDefinitions
		abort(reason: String) updating; 
		addTest(entity: SchemaEntity) updating; 
		copyTests(testsFrom: Collection) updating; 
		count(
			set: Boolean; 
			_value: Integer io) mapping; 
		delete() updating; 
		hasAborted(): Boolean;
		lockInResults() updating; 
		updateId(id: String) updating; 
	)
	ATBatchTest completeDefinition
	(
	attributeDefinitions
		className:                     String readonly, virtual; 
		developer:                     String virtual; 
		entityName:                    String[307] readonly; 
		errorReason:                   String readonly; 
		errorSourceLine:               String readonly, virtual; 
		errorStack:                    String readonly; 
		lastChanged:                   TimeStamp readonly, virtual; 
		methodName:                    String readonly, virtual; 
		schemaName:                    String readonly, virtual; 
	referenceDefinitions
		methodReference:               Method;
 
	jadeMethodDefinitions
		className(
			set: Boolean; 
			_value: String io) mapping; 
		copyResults(from: ATBatchTest) updating; 
		developer(
			set: Boolean; 
			_value: String io) mapping; 
		errorSourceLine(
			set: Boolean; 
			_value: String io) mapping; 
		getEntityComponent(part: Integer): String protected; 
		lastChanged(
			set: Boolean; 
			_value: TimeStamp io) mapping; 
		methodName(
			set: Boolean; 
			_value: String io) mapping; 
		schemaName(
			set: Boolean; 
			_value: String io) mapping; 
		updateError(
			text: String; 
			stack: String) updating; 
		updateId(name: String) updating; 
	)
	ATBatchRunner completeDefinition
	(
	referenceDefinitions
		allTests:                      ObjectArray  implicitMemberInverse, readonly; 
		applicationContext:            ApplicationContext  protected; 
		gc:                            ATGarbageCollector  protected; 
		listener:                      ATBatchListener;
 
	jadeMethodDefinitions
		create() updating; 
		delete() updating; 
		run() updating; 
		runTest(tests: ObjectArray) protected; 
	)
	ATBatchWorkerInitialiser completeDefinition
	(
	constantDefinitions
		ApplicationStartedEvent:       Integer = 320482;
 
	jadeMethodDefinitions
		initialiseWorkerApp(batchOfTests: Object) updating; 
		runTests(batchOfTests: ATBatchSchemaTests input);
		runTestsException(
			exp: Exception; 
			batchOfTests: ATBatchSchemaTests input): Integer protected; 
		userNotification(
			eventType: Integer; 
			theObject: Object; 
			eventTag: Integer; 
			userInfo: Any) updating; 
	)
	ATBuilder completeDefinition
	(
	documentationText
`Builds and modifies objects using a fluent interface.

`

	constantDefinitions
		Lifetime_Persistent:           Character = ATLifetime_Persistent;
		Lifetime_Transient:            Character = ATLifetime_Transient;
	attributeDefinitions
		lifetime:                      Character readonly; 
	documentationText
`Default lifetime for objects created (see constants)
`

	referenceDefinitions
		db:                            ATDatabase;
	documentationText
`Store of all objects created or modified.`

		dbInternal:                    ATDatabase  protected; 
	documentationText
`Default store of created and modified objects.

If db is replaced by the logic, it means we dont leak the default.`

		lastObject:                    Object  protected; 
	documentationText
`Last object created or refined.`

 
	jadeMethodDefinitions
		asString(): String;
		cloneObject(from: Object): IATBuilderModify updating; 
		cloneObjectWithKey(
			from: Object; 
			propKeyChg: Property; 
			valueKeyChg: Any): IATBuilderModify updating; 
		collAdd(
			collProperty: Property; 
			valueList: ParamListType): IATBuilderModify;
		collCopy(
			collProperty: Property; 
			values: Collection): IATBuilderModify;
		create() updating; 
		delete() updating; 
		lifetimeSet(lifeTimeConstant: Character) updating; 
		lifetimeSetPersistent() updating; 
		lifetimeSetTransient() updating; 
		make(classType: Class): IATBuilderModify updating; 
		makeObject(
			fromObject: Object; 
			typeTo: Class): Object updating, protected; 
		propValueGet(
			target: Object; 
			prop: Property): Any protected; 
		propValueSet(
			target: Object input; 
			prop: Property; 
			value: Any) protected; 
		propValueSetDecimal(
			target: Object input; 
			prop: Property; 
			value: Decimal) protected; 
		refine(target: Object): IATBuilderModify updating; 
		result(): Object;
		set(
			property: Property; 
			value: Any): IATBuilderModify;
		setInternal(
			property: Property; 
			value: Any; 
			reqdRef: Boolean) protected; 
		setNull(property: Property): IATBuilderModify;
	implementInterfaces
		IATBuilderCommands
		(
		cloneObject is cloneObject;
		cloneObjectWithKey is cloneObjectWithKey;
		lifetimeSetPersistent is lifetimeSetPersistent;
		lifetimeSetTransient is lifetimeSetTransient;
		make is make;
		refine is refine;
		result is result;
		)
		IATBuilderModify
		(
		asString is asString;
		collAdd is collAdd;
		collCopy is collCopy;
		result is result;
		set is set;
		setNull is setNull;
		)
	)
	ATChangeTracker completeDefinition
	(
	attributeDefinitions
		includeTransients:             Boolean;
	referenceDefinitions
		classesToIgnore:               ClassColl  implicitMemberInverse, readonly; 
		classesToTrack:                ClassColl  implicitMemberInverse, readonly; 
		objectCollection:              ObjectArray  implicitMemberInverse, protected; 
		trackedObjects:                ATChangeTrackerObjectDict  implicitMemberInverse, readonly; 
 
	jadeMethodDefinitions
		compare(): Boolean;
		create() updating; 
		delete() updating; 
		displayChanges(): String;
		getObjects(objects: Collection input) protected; 
		startTracking() updating; 
		stopTracking() updating; 
		trackingObject(object: Object): Boolean protected; 
	)
	ATChangeTrackerObject completeDefinition
	(
	attributeDefinitions
		status:                        Integer;
		statusDescription:             String readonly, virtual; 
	referenceDefinitions
		allProperties:                 ObjectArray  implicitMemberInverse, readonly; 
		allValuesAfter:                ATVariableStringArray  readonly; 
		allValuesBefore:               ATVariableStringArray  readonly; 
		object:                        Object;
 
	jadeMethodDefinitions
		compare(): Boolean;
		create() updating; 
		delete() updating; 
		recordProperties(objectClass: Class) protected; 
		recordPropertyValues(values: ATVariableStringArray input) protected; 
		recordStart(target: Object) updating; 
		recordStop() updating; 
		statusDescription(
			set: Boolean; 
			_value: String io) mapping; 
	)
	ATCommandLineReader completeDefinition
	(
	attributeDefinitions
		commandLine:                   String;
 
	jadeMethodDefinitions
		create() updating; 
		getValue(item: String): String;
	)
	ATDatabase completeDefinition
	(
	documentationText
`Store of fixture data to run tests on.`

	attributeDefinitions
		hasPersistents:                Boolean readonly; 
		purgeOnDelete:                 Boolean;
	referenceDefinitions
		allInstances:                  Collection  readonly, virtual; 
		allInstancesArray:             ObjectArray  implicitMemberInverse, protected; 
		allInstancesSet:               ObjectSet  implicitMemberInverse, protected; 
		purger:                        ATPurger  protected; 
 
	jadeMethodDefinitions
		add(object: Object) updating; 
		allInstances(
			set: Boolean; 
			_value: Collection io) mapping; 
		classCount(classType: Class): Integer;
		classInstances(
			classType: Class; 
			includeSubclasses: Boolean; 
			coll: Collection input);
		clear() updating; 
		create() updating; 
		delete() updating; 
		find(
			classType: Class; 
			instance: Integer): Object protected; 
		get(
			classType: Class; 
			instance: Integer; 
			mustExist: ParamListType): Object;
		getObject(
			classType: Class; 
			instance: Integer; 
			object: Any output);
		includes(object: Object): Boolean;
		instances(): Collection;
		purge() updating; 
	implementInterfaces
		IATDatabaseCommands
		(
		add is add;
		classCount is classCount;
		classInstances is classInstances;
		clear is clear;
		get is get;
		getObject is getObject;
		includes is includes;
		instances is instances;
		purge is purge;
		)
	)
	ATDeltaMode completeDefinition
	(
	attributeDefinitions
		timeout:                       Integer;
 
	jadeMethodDefinitions
		create() updating; 
		install();
		start();
		stop();
	)
	ATFileLogger completeDefinition
	(
	referenceDefinitions
		myFile:                        JadeLog  protected; 
 
	jadeMethodDefinitions
		close() updating; 
		delete() updating; 
		initialise(fileName: String) updating; 
		writeContents(message: String) updating; 
	)
	ATFileWriter completeDefinition
	(
	referenceDefinitions
		myFile:                        File  protected; 
 
	jadeMethodDefinitions
		close() updating; 
		delete() updating; 
		initialise(fileName: String) updating; 
		writeContents(message: String) updating; 
	)
	ATFixtureMaker completeDefinition
	(
	documentationText
`Coordinator of a temporary database being populated.

By defining pre-requisites this class will manage execution order and calling of 'static' functions.`

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
	ATGarbageCollector completeDefinition
	(
	referenceDefinitions
		allObjects:                    ObjectSet  implicitMemberInverse, protected; 
		purger:                        ATPurger  protected; 
 
	jadeMethodDefinitions
		add(object: Object);
		clear() updating; 
		create() updating; 
		delete() updating; 
		purge() updating; 
		remove(object: Object);
	implementInterfaces
		IATGarbageCollector
		(
		add is add;
		clear is clear;
		purge is purge;
		remove is remove;
		)
	)
	ATLocator completeDefinition
	(
	attributeDefinitions
		methodPrefix:                  String[31];
		sourceAnnotations:             StringArray readonly; 
		sourceAnnotationsAvoid:        StringArray readonly; 
	referenceDefinitions
		allClasses:                    ClassColl  implicitMemberInverse, protected; 
		allMethods:                    MethodColl  implicitMemberInverse, readonly; 
 
	jadeMethodDefinitions
		addClass(cls: Class) updating; 
		addClassName(
			schemaName: String; 
			className: String) updating; 
		addClasses(
			parentClass: Class; 
			targetSchema: Schema) updating; 
		addClassesDown(
			parentClass: Class; 
			targetSchema: Schema) updating; 
		addMethod(meth: Method);
		addSchema(
			schema: Schema; 
			subschemas: Boolean) updating; 
		includeMethod(meth: Method): Boolean;
		sourceAnnotationExists(
			meth: Method; 
			annotation: String): Boolean protected; 
	)
	ATMock completeDefinition
	(
	documentationText
`
zcode functions from AutomatedTestSchema need to be copied and defined on the imported class due to a jade issue.`

	constantDefinitions
		NameForMethodCalledCountArray: String = "mockMethodCalledCount";
		NameForMethodCalledEvent:      String = "mockMethodCalledEvent";
		NameForMethodCalledList:       String = "mockMethodCalledList";
	attributeDefinitions
		compiled:                      Boolean protected; 
		suffixMethodCount:             String[11];
	referenceDefinitions
		allMockedMethods:              ObjectArray  implicitMemberInverse, protected; 
		applicationContext:            ApplicationContext  protected; 
		gc:                            ATGarbageCollector  protected; 
		persistentClass:               Class  protected; 
		transientClass:                Class  readonly; 
 
	jadeMethodDefinitions
		addAttribute(
			name: String; 
			type: Type): Attribute;
		addReference(
			name: String; 
			type: Type): Reference;
		compile() updating, protected; 
		create() updating; 
		createClassInternal(
			transientClassParam: Class; 
			persistentClassParam: Class; 
			applicationContextParam: ApplicationContext) updating, protected; 
		createTransient(): Object updating; 
		delete() updating; 
		deleteClass() updating; 
		methodCallCount(
			receiver: Object; 
			methodRefOrName: Any): Integer;
		methodCallCountPropertyName(methodName: String): String protected; 
		methodCalled(
			receiver: Object; 
			methodReference: JadeMethod): Boolean;
		methodOverride(meth: Method): IATMockMethod updating; 
		zcode_createClass(persistentClass: Class): Class updating; 
	)
	ATMockMethod completeDefinition
	(
	attributeDefinitions
		compileAttempted:              Boolean protected; 
		errorContent:                  String readonly; 
		errorMessage:                  String readonly; 
		methodName:                    String readonly; 
		propCountName:                 String[101] protected; 
		raiseErrorCode:                Integer protected; 
		raiseErrorDescription:         String protected; 
		sourceCode:                    String readonly, virtual; 
		sourceCodeBody:                String protected; 
		sourceCodeHeader:              String protected; 
		sourceCodeOverride:            String protected; 
		sourceCodeReturnValue:         String protected; 
		sourceCodeVars:                String protected; 
	referenceDefinitions
		myParentMethod:                Method  protected; 
		myReturnType:                  Type  protected; 
		myTransClass:                  Class  protected; 
		myTransMethod:                 JadeMethod  protected; 
 
	jadeMethodDefinitions
		compile() updating; 
		compileError(
			code: String; 
			errorCode: Integer; 
			errorPos: Integer; 
			errorLength: Integer) updating, protected; 
		doNothing(): IATMockMethod updating; 
		generateMethodHeader(meth: Method) updating, protected; 
		generatePropertyCounter() updating, protected; 
		generateReturnValue(valueAsText: String) updating, protected; 
		generateSource(): String updating, protected; 
		getReturnType(): Type updating, protected; 
		initialiseMethodOverride(
			transClass: Class; 
			meth: Method; 
			callCountPropName: String) updating; 
		raisesException(
			errorCode: Integer; 
			errorDesc: String): IATMockMethod updating; 
		returns(any: Any): IATMockMethod updating; 
		sourceCode(
			set: Boolean; 
			_value: String io) updating, mapping; 
		withSource(source: String): IATMockMethod updating; 
	implementInterfaces
		IATMockMethod
		(
		doNothing is doNothing;
		raisesException is raisesException;
		returns is returns;
		withSource is withSource;
		)
	)
	ATPurger completeDefinition
	(
	referenceDefinitions
		allObjectsToDelete:            ObjectArray  implicitMemberInverse, protected; 
 
	jadeMethodDefinitions
		deleteObjectLevel10(object: Object io) protected; 
		deleteObjectLevel20(object: Object io) protected; 
		exceptionHander(exp: Exception): Integer protected; 
		purge(collection: Collection input);
	)
	ATSchemaEntityFinder completeDefinition
	(
 
	jadeMethodDefinitions
		findClass(
			schemaName: String; 
			className: String): Class;
		findMethod(
			schemaName: String; 
			className: String; 
			methodName: String): Method;
		findMethodQualified(fullPath: String): Method;
		findSchema(schemaName: String): Schema;
		getQualifiedComponent(
			full: String; 
			part: Integer): String protected; 
	)
	ATSchemaFileCleaner completeDefinition
	(
	documentationText
`Removes envirommental info from scm files to assist with source control integration.`

	attributeDefinitions
		contents:                      String;
 
	jadeMethodDefinitions
		clean() updating; 
		getHeaderEndPosition(): Integer protected; 
		removeJCFLine() updating, protected; 
		removeLine(pos: Integer) updating, protected; 
		removeParameter(posStart: Integer) updating, protected; 
		removeParameters(text: String) updating, protected; 
		removeSetModifiedTime() updating, protected; 
		replaceJadeVersion() updating, protected; 
	)
	ATVariableCollection completeDefinition
	(
	documentationText
`Common parent for Variable Collection classes.

See subclass documentation.`

	attributeDefinitions
		allBytes:                      JadeBytes protected; 
	documentationText
`Store of all text

Generally all array entries are appended to each other with offsets being saved on the IntegerArrays`

		allIndexLength:                IntegerArray protected; 
	documentationText
`Saves the length of each entry in the JadeBytes structure`

		allIndexStart:                 Integer64Array protected; 
	documentationText
`Saves start index positions in the JadeByte structure`

 
	jadeMethodDefinitions
		add(entry: Any) updating, abstract; 
		at(index: Integer64): Any abstract; 
		clear() updating; 
		copy(toColl: ATVariableCollection input);
		copyTo(toColl: Collection input);
		display(): String;
		footPrint(): Integer64;
		footPrintEstimateSet(capacity: Integer64);
		isEmpty(): Boolean;
		isEqual(collection: Object): Boolean;
		lockEntry() protected; 
		lockExit() protected; 
		parse(
			line: String; 
			delimiters: String) updating; 
		rebuild() updating; 
		size(): Integer64;
	)
	ATVariableStringArray completeDefinition
	(
	documentationText
`Alternative to classic StringArrays.

The main point of difference is you dont need to prescribe the member size. It effectively uses a single JadeBytes structure along with 
offsets to determine the strings within.

Supports most of the equivalent array functions, aside from usage of foreach statements. 


Here are some advantages:
==========================

- no more "string too long" exceptions
	If we're populating from variable length data generally we have to guess the largest size of each entry and choose an array with a greater than that. At best
	this is inefficient, at worst it still leaves a risk of one day still breaking. May be the only option when the data size exceeds 2046 (HugeStringArray size)

- lower disk/memory footprint 
	Each entry in a StringArray is padded out to its max length, and collections have block size minimum sizes too. 
	
- Performance
	Under some conditions this approach is far more performant than the classic string arrays eg. when transient overflow is occurring, or 10k+ entries
	For most other cases the differences is negligible compared with classic arrays.
	
	

Possible Future Enhancements:
=============================+
- Was hoping to use interfaces (so common across StringArray & VariableStringArray) but classic collection types use MemberType as a param which we cant replicate
- Allow for compression for more efficient permanent storage
- When entries are replaced or removed there can be some residual 'old' text left behind. This is done for performance reasons, however this could be done with the
 remove tidied on the fly if (say) was persistent or based on an indicator. Easiest way of clearing unused entries would be a rebuild()
- CSV parse/build
`

 
	jadeMethodDefinitions
		add(entry: String) updating; 
		at(index: Integer64): String;
		atPut(
			index: Integer; 
			entry: String) updating; 
		includes(entry: String): Boolean;
		indexOf(entry: String): Integer64;
		insert(
			index: Integer64; 
			entry: String) updating; 
		remove(entry: String) updating; 
		removeAt(inx: Integer64): String updating; 
	)
	Exception completeDefinition
	(
	)
	NormalException completeDefinition
	(
	)
	ATAssertException completeDefinition
	(
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
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		cleanSchemaFile() protected; 
		runTestsForEnvironmentCSV() protected; 
		runTestsForEnvironmentXML() protected; 
		runTestsForSchemaCSV() protected; 
	)
	JadeTestCase completeDefinition
	(
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SAutomatedTestSchema completeDefinition
	(
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	ATBatchSchemaTestsDict completeDefinition
	(
	)
	ATBatchTestDict completeDefinition
	(
	)
	ATChangeTrackerObjectDict completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	ObjectArray completeDefinition
	(
	)
	ATBatchRequestArray completeDefinition
	(
	)
	String completeDefinition
	(
 
	jadeMethodDefinitions
		atPrint(params: ParamListType): String;
		atReplace(
			find: String; 
			repl: String): String;
		atSubString(
			startPos: Integer; 
			endPos: Integer): String;
	)
 
 
memberKeyDefinitions
	ATBatchSchemaTestsDict completeDefinition
	(
		schemaName;
	)
	ATBatchTestDict completeDefinition
	(
		entityName;
	)
	ATChangeTrackerObjectDict completeDefinition
	(
		object;
	)
 
inverseDefinitions
databaseDefinitions
AutomatedTestSchemaDb
	(
	databaseFileDefinitions
		"autotest";
	defaultFileDefinition "autotest";
	classMapDefinitions
		SAutomatedTestSchema in "_environ";
		AutomatedTestSchema in "_usergui";
		GAutomatedTestSchema in "autotest";
		ATBatchSchemaTests in "autotest";
		ATBatchTest in "autotest";
		ATBatchRoot in "autotest";
		ATAssertException in "autotest";
		AutomatedTest in "autotest";
		ATBuilder in "autotest";
		ATGarbageCollector in "autotest";
		ATMock in "autotest";
		ATMockMethod in "autotest";
		ATPurger in "autotest";
		ATDatabase in "autotest";
		ATBatchController in "autotest";
		ATBatchResult in "autotest";
	)
schemaViewDefinitions
exportedPackageDefinitions
	AutomatedTestPackage
	(
	exportedClassDefinitions
	ATBatchWorkerInitialiser transientAllowed, transient 
		(
		exportedMethodDefinitions
			initialiseWorkerApp;
		)
	ATBuilder transientAllowed, transient 
		(
		exportedConstantDefinitions
			Lifetime_Persistent;
			Lifetime_Transient;
		exportedPropertyDefinitions
			db ;
			lifetime ;
		exportedMethodDefinitions
			cloneObject;
			cloneObjectWithKey;
			lifetimeSetPersistent;
			lifetimeSetTransient;
			make;
			refine;
			result;
		)
	ATDatabase transientAllowed, transient 
		(
		exportedPropertyDefinitions
			allInstances readonly;
			hasPersistents readonly;
			purgeOnDelete ;
		exportedMethodDefinitions
			add;
			classCount;
			classInstances;
			clear;
			get;
			getObject;
			includes;
			instances;
			purge;
		)
	ATFixtureMaker transientAllowed, transient 
		(
		exportedPropertyDefinitions
			builder ;
			events ;
			lastResult readonly;
			settings ;
		exportedMethodDefinitions
			clear;
			execute;
			register;
			result;
		)
	ATLocator transientAllowed, transient 
		(
		exportedPropertyDefinitions
			allMethods readonly;
			methodPrefix ;
			sourceAnnotations readonly;
			sourceAnnotationsAvoid readonly;
		exportedMethodDefinitions
			addClass;
			addClassName;
			addClasses;
			addClassesDown;
			addSchema;
			includeMethod;
		)
	ATMock transientAllowed, transient 
		(
		exportedPropertyDefinitions
			suffixMethodCount ;
			transientClass readonly;
		exportedMethodDefinitions
			addAttribute;
			addReference;
			createClassInternal;
			createTransient;
			deleteClass;
			methodCallCount;
			methodCalled;
			methodOverride;
		)
	ATMockMethod transientAllowed, transient 
		(
		exportedPropertyDefinitions
			errorMessage readonly;
			sourceCode readonly;
		exportedMethodDefinitions
			doNothing;
			raisesException;
			returns;
			sourceCode;
		)
	AutomatedTest transient 
		(
		)
	exportedInterfaceDefinitions
		IATBuilderCommands
		IATBuilderModify
		IATDatabaseCommands
		IATFixtureMaker
		IATFixtureMakerEvents
		IATFixtureMakerRegistration
		IATFixtureMakerTarget
		IATGarbageCollector
		IATMockMethod
		IATRunner
		IATRunnerTarget
	)
typeSources
	AutomatedTestSchema (
	jadeMethodSources
initialiseTestRunnerCommandline
{
initialiseTestRunnerCommandline() updating, protected;

vars
	batchInitialiser	: ATBatchCommandLine;
	
begin
	create batchInitialiser transient;
	batchInitialiser.runFromCommandLine();
end;

}

initialiseTestRunnerWorker
{
initialiseTestRunnerWorker( batchRequest : Object ) updating, protected;

vars
	runTests	: ATBatchWorkerInitialiser;
	
begin
	create runTests transient;
	runTests.initialiseWorkerApp( batchRequest );
end;

}

mustExist
{
mustExist( target 		: Any;
		   targetName	: String );

vars
	exp		: ATAssertException;
	
begin
	if target = null then
		write "ASSERT: " & targetName & " must be defined";
	
	    create exp transient;
		exp.errorCode := ATAssertError;
		exp.errorItem := targetName & " must be defined";
		exp.extendedErrorText	:= exp.errorItem;
		exp.continuable			:= false;
		
		raise exp precondition;	
	endif;
end;

}

require
{
require( trueToPass 	: Boolean;
		 messageOnError	: String );

vars
	exp		: ATAssertException;
	
begin
	if not trueToPass then
		write "ASSERT: " & messageOnError;
	
	    create exp transient;
		exp.errorCode := ATAssertError;
		exp.errorItem := messageOnError;
		exp.extendedErrorText	:= messageOnError;
		exp.continuable			:= false;
		raise exp precondition;		
		
	endif;
end;

}

	)
	ATBatchCommandLine (
	jadeMethodSources
create
{
create() updating;

vars
	
begin
	create gc transient;
	
	create finder transient;
	gc.add( finder );	
	
	create commandLineReader transient;
	gc.add( commandLineReader );
	
	create batch transient;
	gc.add( batch );
	
	
	// defaults
	paramSchemaSubschemas	:= true;
	paramWorkers			:= 5;
	paramOutputType			:= OutputTypeCSV;
end;
}

delete
{
delete() updating;

vars
	
begin
	delete gc;
end;
}

run
{
run() updating;

vars
	schema		: Schema;
	
begin
	app.require( paramWorkers >= 0, 'Workers must be defined' );
	app.mustExist( paramSchema, 'Schema must be defined' );
		
	// find the tests
	schema		:= rootSchema.getSchema( paramSchema );
	app.mustExist( schema, 'Schema "' & paramSchema & '" not found' );
	
	finder.addSchema( schema, paramSchemaSubschemas );
	
	// run the tests
	batch.workers					:= paramWorkers;
	batch.skipUnsupportedSchemas	:= true;
	finder.allMethods.copy( batch.allMethods );
	batch.execute();
		
	
end;
}

runFromCommandLine
{
runFromCommandLine() updating;

vars
	
begin
	paramSchema		:= commandLineReader.getValue( 'testSchema' );
	app.mustExist( paramSchema, '"testSchema=" commandline parameter missing' );

	paramWorkers	:= commandLineReader.getValue( 'workers' ).Integer;
	
	paramOutputType	:= commandLineReader.getValue( 'output' );
	
	run();
end;
}

	)
	ATBatchController (
	jadeMethodSources
batchRootCreate
{
batchRootCreate() protected, updating;

vars

begin
	beginTransientTransaction;
		create root sharedTransient;
	commitTransientTransaction;
end;

}

batchRootDestroy
{
batchRootDestroy() protected, updating;

vars

begin
	if root <> null then
		beginTransientTransaction;
		delete root;
		commitTransientTransaction;
	endif;
end;

}

batchSchemaCreate
{
batchSchemaCreate( schemaName : String 
							 ): ATBatchSchemaTests protected;

vars
	batchTests	: ATBatchSchemaTests;
	
begin
	batchTests	:= allBatchTestsUnfilled[schemaName];
	if batchTests <> null then
		// may be able to keep using existing
		if batchSize = 0 
		or batchSize > batchTests.count then
			return batchTests;
		endif;
		
		// remove this one from the shortlist, its full
		allBatchTestsUnfilled.remove( batchTests );
	endif;
	
	// create a new one
	create batchTests sharedTransient;
	batchTests.updateId( schemaName );
	root.allBatchTests.add( batchTests );
	allBatchTestsUnfilled.add( batchTests );
	
	return batchTests;
end;

}

clear
{
clear() protected, updating;

vars

begin
	allBatchTestsUnfilled.clear();
	
	batchRootDestroy();
end;

}

create
{
create() updating;

vars

begin
	// default the app name
	appName			:= AppNameBatchRunner;
	batchSize		:= 50;
	workers	:= 5;
	sleepTime		:= 50;
end;

}

delete
{
delete() updating;

vars

begin
	batchRootDestroy();
end;

}

execute
{
execute() updating;

vars

begin
	clear();

	batchRootCreate();

	requestsSetup();
	
	requestsRun();
	
	requestsConsolidate();
end;

}

requestApplicationAvailable
{
requestApplicationAvailable() protected;

vars
	iter			: Iterator;
	request			: ATBatchSchemaTests;
	
begin
	// wait until one of these finishes, so we can start
	// a new one
	
	if workers = 0 or allBatchTestsActive.size < workers then
		return;
	endif;
		
	iter	:= allBatchTestsActive.createIterator();
	while true do : outerloop
		// check for one of the existing jobs now being finished
		iter.reset();
		while iter.next( request ) do
			if request.completed then
				
				// remove the done item
				allBatchTestsActive.remove( request );
				return;
			
			elseif request.hasAborted() then
				app.require( false, "A worker app has failed in schema " & request.schemaName & CrLf & "Error: " & request.abortReason );
				
				
			endif;
			process.sleep(sleepTime);
		endwhile;
	endwhile;	
	
epilog
	delete iter;
end;

}

requestApplicationStart
{
requestApplicationStart(request	: ATBatchSchemaTests input) protected;

vars
	appStarter	: ATBatchWorkerInitialiser;
	
begin
	on Exception do requestApplicationStartException(exception, request );
	
	if workers > 0 then
		// we're using other apps
		app.startApplicationWithParameter( request.schemaName, appName, request );
	
	else
		// run in the same thread
		create appStarter transient;
		appStarter.runTests( request );
	endif;
	
epilog
	delete appStarter;
end;

}

requestApplicationStartException
{
requestApplicationStartException( exp 		: Exception;
								  request	: ATBatchSchemaTests )
											: Integer protected;

vars

begin
	if exp.errorCode = 1214 then
		// application hasnt been defined, no good, but just mark as skipped
		write "ERROR: " & request.schemaName & " needs the " & 
					appName & " application defined in it or a superschema";		
		
		if skipUnsupportedSchemas then
			allBatchTestsActive.remove( request );
			return Ex_Resume_Next;
		endif;		
	endif;

	return Ex_Pass_Back;
end;

}

requestsConsolidate
{
requestsConsolidate() protected;

// combines batches from the same schema, removing from the batch coll
// provides summary results at the root level

vars
	batchTests	: ATBatchSchemaTests;
	schemaTests	: ATBatchSchemaTests;
	
begin
	beginTransientTransaction;

	foreach batchTests in root.allBatchTests do
		// update the root counts
		root.copyResults( batchTests );
	
		// consolidate the schema data
		schemaTests		:= root.allSchemaTests[batchTests.schemaName];
		if schemaTests = null then
			// becomes the first schema entry
			root.allSchemaTests.add( batchTests );
	
		else
			// already have a schema record, so append, then remove it
			schemaTests.copyResults( batchTests );
			batchTests.allMethods.copy( schemaTests.allMethods );
			batchTests.allTests.copy( schemaTests.allTests );
			batchTests.allTests.clear();
			delete batchTests;
		endif;
		
	endforeach;
	
	// clear these out so we dont have issues when we purge (and the batch stats
	// are now corrupt anyway)
	root.allBatchTests.clear();
	
	commitTransientTransaction;
end;

}

requestsRun
{
requestsRun() protected, updating;

vars
	request			: ATBatchSchemaTests;
	requestsTodo	: ATBatchRequestArray;
		
begin
	create requestsTodo transient;
	root.allBatchTests.copy( requestsTodo );
	
	while not requestsTodo.isEmpty() do
	
		// start the next batch
		request			:= requestsTodo.removeAt(1).ATBatchSchemaTests;
		allBatchTestsActive.add( request );		
		requestApplicationStart( request );
	
		// wait until we have the resource to start the next app
		requestApplicationAvailable();
	endwhile;
	
	// wait until all are finished to protect any followup functions
	while allBatchTestsActive.isEmpty() = false do
		request		:= allBatchTestsActive[1];
		if request.completed then
			allBatchTestsActive.removeAt(1);
		else	
			process.sleep( sleepTime );			
		endif;
	endwhile;
	
epilog
	delete requestsTodo;
end;

}

requestsSetup
{
requestsSetup() protected, updating;

vars
	meth	: Method;
	methScm	: Schema;
	reqScm	: ATBatchSchemaTests;
	
begin
	beginTransientTransaction;
	
	// add each method to a batch relevant to the schema	
	foreach meth in allMethods do
		methScm	:= meth.getSchema();
		reqScm	:= batchSchemaCreate( methScm.name );
		reqScm.addTest( meth );
	endforeach;
	
	commitTransientTransaction;
	
epilog
	allBatchTestsUnfilled.clear();
end;

}

	)
	ATBatchGenerateCSV (
	jadeMethodSources
create
{
create() updating;

vars

begin
	includeSummary	:= true;	
end;

}

generate
{
generate( root : ATBatchRoot ) updating;

vars
	
begin
	output	:= generateString(root);
end;


}

generateString
{
generateString( root : ATBatchRoot ) : String protected;

vars
	schemaTests		: ATBatchSchemaTests;
	testResult		: ATBatchTest;
	iterScm			: Iterator;
	iterTest		: Iterator;
	line			: String;
	lines			: String;
	
begin
	lines	:= "Schema,Test Class,Test Method,Developer,Duration,Passed,Skipped,Failed,Error";
	
	if includeSummary then
		line	:= "All,,," 
						& root.getDeveloperCount().String & ","
						& root.duration.String & ","
						& getIntegerText( root.countPassed ) & ","
						& getIntegerText( root.countSkipped ) & ","
						& getIntegerText( root.countFailed );
		lines	:= lines & CrLf & line;
	endif;	
	
	iterScm	:= root.allSchemaTests.createIterator();
	while iterScm.next( schemaTests ) do
	
		iterTest	:= schemaTests.allTests.createIterator();
		while iterTest.next( testResult ) do
			line	:= testResult.schemaName & "," 
						& testResult.className & ","
						& testResult.methodName & ","
						& '"' & testResult.developer & '",'
						& testResult.duration.String & ","
						& getIntegerText( testResult.countPassed ) & ","
						& getIntegerText( testResult.countSkipped ) & ","
						& getIntegerText( testResult.countFailed ) & "," 
						& testResult.errorReason;

			lines	:= lines & CrLf & line;
		endwhile;
		delete iterTest;
	endwhile;
	return lines;
	
epilog
	delete iterScm;
end;


}

getIntegerText
{
getIntegerText( value : Integer )
					  : String protected;

vars

begin
	if value <> 0 then
		return value.String;
	endif;
	return "";
end;

}

	)
	ATBatchGenerateXML (
	jadeMethodSources
generate
{
generate( root : ATBatchRoot ) updating;

vars
	
begin
	output	:= generateString_NUNIT(root);
end;


}

generateString_NUNIT
{
generateString_NUNIT( root : ATBatchRoot )
						   : String protected, updating;

			 
vars
	schemaTests		: ATBatchSchemaTests;
	testResult		: ATBatchTest;
	iterScm			: Iterator;
	iterTest		: Iterator;
	padCount		: Integer;
	
begin
	xmlAppendLine( '<?xml version="1.0" encoding="UTF-8"?>', padCount );
		
	// xml testrun
	xmlAppendLine( '<test-run id="%1" run-date="%2" start-time="%3" total="%4" passed="%5" failed="%6" skipped="%7" time="%8" result="%9">'.atPrint( 
				0,
				root.startTime.date().format( "yyyy-MM-dd" ),
				root.startTime.time().format( "HH:mm:ss" ),
				root.countAll,
				root.countPassed,
				root.countFailed,
				root.countSkipped,
				root.durationSecs,
				root.result ), 
				padCount );
				
	
	padCount	:= padCount + 1;

	iterScm	:= root.allSchemaTests.createIterator();
	while iterScm.next( schemaTests ) do
	
		// xml testsuite
		xmlAppendLine( '<test-suite type="%1" name="%2" result="%3" duration="%4" total="%5" passed="%6" failed="%7" skipped="%8">'.atPrint (
						"TestSuite",
						schemaTests.schemaName, 
						schemaTests.result,
						schemaTests.durationSecs,
						schemaTests.countAll,
						schemaTests.countPassed, 
						schemaTests.countFailed, 
						schemaTests.countSkipped ),
						padCount );

		padCount	:= padCount + 1;
	
		iterTest	:= schemaTests.allTests.createIterator();
		while iterTest.next( testResult ) do

			// xml testcase
			xmlAppend( '<test-case classname="%1" name="%2" fullname="%3" result="%4" duration="%5" asserts="%6">'.atPrint (
						testResult.className,
						testResult.methodName,
						testResult.entityName,
						testResult.result,
						testResult.durationSecs,
						testResult.countFailed ),
						padCount );
			
			if testResult.countFailed > 0 then
						
				xmlAppend( CrLf, 0 );
				
				padCount	:= padCount + 1;
				xmlAppendLine( '<failure>', padCount );
				
				padCount	:= padCount + 1;
				xmlAppendLine( '<message>', padCount );
				xmlAppendCDATA( "Error: " & testResult.errorReason & CrLf & CrLf & "Line: " & testResult.errorSourceLine, padCount + 1 );
				xmlAppendLine( '</message>', padCount );
				
				xmlAppendLine( '<stack-trace>', padCount );
				xmlAppendCDATA( testResult.errorStack, padCount + 1 );
				xmlAppendLine( '</stack-trace>', padCount );
				padCount	:= padCount - 1;
				
				xmlAppendLine( '</failure>', padCount );
				padCount	:= padCount - 1;
				
				xmlAppendLine( '</test-case>', padCount );
			else
				xmlAppendLine( '</test-case>', 0 );		// finish off on the same line for readability
			endif;	
			
		endwhile;
	
		padCount	:= padCount - 1;

		xmlAppendLine( '</test-suite>', padCount );
	
		delete iterTest;
	endwhile;
								
	padCount	:= padCount - 1;
	xmlAppendLine( '</test-run>', padCount);
	return output;
	
epilog
	delete iterScm;
end;


}

xmlAppend
{
xmlAppend( line		: String;
		   padding	: Integer ) protected, updating;

vars
	padText	: String;
	
begin
	if padding > 0 then
		padText	:= Tab.makeString( padding );
	endif;
	output	:= output & padText & line;
end;

}

xmlAppendCDATA
{
xmlAppendCDATA( contents    : String;
				padding		: Integer) protected, updating;

vars
	line	: String;
	
begin
	line	:= "<![CDATA[ " & contents & " ]]>";
	xmlAppendLine( line, padding );
end;

}

xmlAppendLine
{
xmlAppendLine( line		: String;
			   padding	: Integer ) protected, updating;

vars
	padText	: String;
	
begin
	if padding > 0 then
		padText	:= Tab.makeString( padding );
	endif;
	output	:= output & padText & line & CrLf;
end;

}

	)
	ATBatchListener (
	jadeMethodSources
create
{
create() updating;

vars
	
begin
	create methodFinder transient;
end;
}

delete
{
delete() updating;

vars

begin
	allTests.purge();
	
	delete methodFinder;
end;

}

finish
{
finish(elapsedTime : Time; testsFailed : Integer; testsSkipped : Integer; testsSucceeded : Integer) protected;

vars

begin

end;

}

getNextDuration
{
getNextDuration() : Integer protected, updating;

vars
	delta	: Integer;
	clock	: Integer;
	
begin
	clock		:= app.clock();
	delta		:= clock - clockLast;
	clockLast	:= clock;
	return delta;
end;

}

message
{
message(messageText : String) updating, protected;

vars

begin
	// record the first clock as we're about to start the first test
	getNextDuration();
end;

}

methodSuccess
{
methodSuccess(testMethodName : String) protected, updating;

vars

begin
	recordTestResult( testMethodName, false, true, false );
end;

}

recordTestResult
{
recordTestResult( 	methodName	: String;
					failed		: Boolean;
					passed		: Boolean;
					skipped		: Boolean
							   ): ATBatchTest protected, updating;

vars
	record		: ATBatchTest;
	clock		: Integer;
	meth		: Method;
	
begin
	clock	:= getNextDuration();
	
	// might get called again for each error that comes through, but just take the first
	record	:= allTests[methodName];
	if record = null then
	
		// check this is actaully a unit test (not bothered about init or finalise)
		meth	:= methodFinder.findMethodQualified( methodName );
		if meth.unitTestFlags <> 1 then
			return null;
		endif;
	
		// record
		create record transient;
		record.updateId( methodName );
		record.methodReference	:= meth;
		record.updateAppend( failed.Integer, passed.Integer, skipped.Integer, clock );
		allTests.add( record );	
	endif;
			
	return record;
end;

}

start
{
start(numberOfTestMethods : Integer) protected;

vars

begin
	
end;

}

testFailure
{
testFailure(testMethodName : String; callStack : String; failureReason : String) protected, updating;

vars
	testResult	: ATBatchTest;
	
begin
	testResult	:= recordTestResult( testMethodName, true, false, false );
	if testResult <> null and testResult.errorReason = null then
		// log the first error
		testResult.updateError( failureReason, callStack );
	endif;
end;

}

testSkipped
{
testSkipped(testMethodName : String) updating, protected;

vars
		
begin
	recordTestResult( testMethodName, false, false, true );
end;

}

testSuccess
{
testSuccess(testMethodName : String) protected;

	/*
		this method stub has been automatically generated by Jade to satisfy interface implementation requirements for the JadeTestListenerIF interface 
	*/

vars

begin

end;

}

	)
	ATBatchResult (
	jadeMethodSources
copyResults
{
copyResults( from : ATBatchResult ) updating;

vars

begin
	updateAppend( 	from.countFailed,	
					from.countPassed,
					from.countSkipped,
					from.duration );
end;

}

countAll
{
countAll(set: Boolean; _value: Integer io) mapping;

vars

begin
	if set = false then
		_value	:= countFailed + countPassed + countSkipped;
	endif;
end;

}

durationSecs
{
durationSecs(set: Boolean; _value: Decimal io) mapping;

vars

begin
	if set = false then
		if duration > 0 then
			_value	:= (duration / 1000);
		endif;
	endif;
end;

}

result
{
result(set: Boolean; _value: String io) mapping;

vars

begin
	if set = false then
		if countAll = 0 then
			_value	:= "Inconclusive";
		elseif countFailed > 0 then
			_value	:= "Failed";
		elseif countPassed > 0 then
			_value	:= "Passed";
		else
			_value	:= "Skipped";
		endif;
	endif;
end;

}

updateAppend
{
updateAppend( 	failed		: Integer;
				passed		: Integer;
				skipped		: Integer;
				durationAdd	: Integer ) updating;

vars

begin
	countFailed		:= failed + countFailed;
	countPassed		:= passed + countPassed;
	countSkipped	:= skipped + countSkipped;
	duration		:= durationAdd + duration;
end;

}

	)
	ATBatchRoot (
	jadeMethodSources
create
{
create() updating;

vars

begin
	startTime	:= app.actualTimeAppServer();
end;

}

delete
{
delete() updating;

vars

begin
	allBatchTests.purge();
	allSchemaTests.purge();
end;

}

getDeveloperCount
{
getDeveloperCount(): Integer;

vars
	devList			: StringArray;
		
begin
	devList	:= getDevelopers();
	return devList.size();
	
epilog
	delete devList;
end;
}

getDevelopers
{
getDevelopers(): StringArray protected;

vars
	schemaTests		: ATBatchSchemaTests;
	testResult		: ATBatchTest;
	iterScm			: Iterator;
	iterTest		: Iterator;
	devList			: StringArray;
	dev				: String;
	
begin
	create devList transient;

	iterScm	:= allSchemaTests.createIterator();
	while iterScm.next( schemaTests ) do
	
		iterTest	:= schemaTests.allTests.createIterator();
		while iterTest.next( testResult ) do
			dev		:= testResult.developer[1:60].toUpper();
			if not devList.includes( dev ) then
				devList.add( dev );
			endif;
		endwhile;
		delete iterTest;
	endwhile;
	return devList;
	
epilog
	delete iterScm;
end;
}

	)
	ATBatchSchemaTests (
	jadeMethodSources
abort
{
abort( reason	: String ) updating;

vars
	
begin
	abortReason	:= reason;
end;
}

addTest
{
addTest( entity : SchemaEntity ) updating;

vars

begin
	allMethods.add( entity );
end;

}

copyTests
{
copyTests(testsFrom : Collection) updating;

vars
	testFrom	: ATBatchTest;
	testTo		: ATBatchTest;
	iter		: Iterator;
	
begin
	iter	:= testsFrom.createIterator();
	while iter.next( testFrom ) do
		create testTo sharedTransient;
		testTo.copyResults( testFrom );
		allTests.add( testTo );
	endwhile;
		
epilog
	delete iter;
end;

}

count
{
count(set: Boolean; _value: Integer io) mapping;

vars
	
begin
	if not set then
		if allTests.size() > 0 then
			_value	:= allTests.size();
		else
			_value	:= allMethods.size();
		endif;
	endif;
end;

}

delete
{
delete() updating;

vars

begin
	allTests.purge();
end;

}

hasAborted
{
hasAborted(): Boolean;

vars
	
begin
	return abortReason <> null;
end;
}

lockInResults
{
lockInResults() updating;

// clones the results to the parent record

vars
	test	: ATBatchTest;
	
begin
	foreach test in allTests do
		copyResults( test );
	endforeach;

	completed	:= true;
end;

}

updateId
{
updateId( id : String ) updating;

vars

begin
	schemaName	:= id;
end;

}

	)
	ATBatchTest (
	jadeMethodSources
className
{
className(set: Boolean; _value: String io) mapping;

vars

begin
	if not set then
		_value	:= getEntityComponent(2);
	endif;
end;

}

copyResults
{
copyResults(from: ATBatchTest) updating;

vars

begin
	inheritMethod(from);
	
	errorReason		:= from.errorReason;
	errorStack		:= from.errorStack;
	entityName		:= from.entityName;
	methodReference	:= from.methodReference;
end;

}

developer
{
developer(set: Boolean; _value: String io) mapping;

vars

begin
	if set = false then
		if methodReference = null then
			return;
		endif;
		_value	:= methodReference.getModifiedBy();
	endif;
end;

}

errorSourceLine
{
errorSourceLine(set: Boolean; _value: String io) mapping;

vars
	posStart	: Integer;
	posEnd		: Integer;
	posError	: Integer;
	line		: String;
	
begin
	if set = false then
		// only relevant if there is a method reference and a stack
		if methodReference = null 
		or errorStack = null then
			return;
		endif;
		
		// extract the source position from the stack desc
		posStart	:= errorStack.reversePos( "(" );
		if posStart = 0 then
			return;
		endif;
		posEnd	:= errorStack.pos( ")", posStart );
		if posEnd = 0 then
			return;
		endif;

		posError	:= errorStack[posStart+1:posEnd-posStart-1].Integer;
		if posError = null then
			return;
		endif;
		
		// extract the line in the source
		line	:= methodReference.sendMsgWithParams("getSourceLine", posError).String;
		
		// remove any crud from the start
		posStart	:= 1;
		line.scanWhile( Tab & " ", posStart );
		if posStart > 1 then
			line	:= line[posStart:end];
		endif;
		
		_value	:= line;
	endif;
end;

}

getEntityComponent
{
getEntityComponent( part : Integer 
						): String protected;

vars
	inx		: Integer;
	pos		: Integer;
	result	: String;
	
begin
	pos	:= 1;
	foreach inx in 1 to 3 do		
		result	:= entityName.scanUntil( ":", pos );
		if inx = part then
			return result;
		endif;
		pos		:= pos + 2;
	endforeach;
end;

}

lastChanged
{
lastChanged(set: Boolean; _value: TimeStamp io) mapping;

vars

begin
	if set = false then
		if methodReference = null then
			return;
		endif;
		_value	:= methodReference.getPropertyValue( Method::modifiedTimeStamp.name ).TimeStamp;
	endif;
end;

}

methodName
{
methodName(set: Boolean; _value: String io) mapping;

vars

begin
	if not set then
		_value	:= getEntityComponent(3);
	endif;
end;


}

schemaName
{
schemaName(set: Boolean; _value: String io) mapping;

vars

begin
	if not set then
		_value	:= getEntityComponent(1);
	endif;
end;

}

updateError
{
updateError(	text	: String;
				stack	: String ) updating;

vars
	pos	: Integer;
	len	: Integer;
	
begin
	errorReason	:= text;

	errorStack	:= stack;

	len		:= stack.length();
	if len > 0 then
		// remove the last CrLf off the stack
		pos	 := stack.reversePos( CrLf );
		if pos = len - 1 then
			errorStack	:= errorStack[1:len-2];
		endif;
	endif;
end;

}

updateId
{
updateId( name	: String ) updating;

vars

begin
	entityName := name;
end;

}

	)
	ATBatchRunner (
	jadeMethodSources
create
{
create() updating;

vars
	listenerObject	: ATBatchListener;
	
begin
	applicationContext	:= ApplicationContext.firstProcessTransientInstance();

	create gc transient;
	
	create listenerObject transient;
	listener	:= listenerObject;
	gc.add( listenerObject );
end;

}

delete
{
delete() updating;

vars

begin
	delete gc;
end;

}

run
{
run() updating;

vars
	
begin
	runTest( allTests );
end;

}

runTest
{
runTest( tests : ObjectArray ) protected;

vars
	jadeRunner 	: JadeTestRunner;
	
begin
	create jadeRunner transient;
	jadeRunner.setTestListener( listener );
	
	jadeRunner.invokeMethod( applicationContext, JadeTestRunner::runTests, tests );

epilog
    delete jadeRunner;
end;


}

	)
	ATBatchWorkerInitialiser (
	jadeMethodSources
initialiseWorkerApp
{
initialiseWorkerApp( batchOfTests : Object ) updating;

vars

begin
	// send an event back to this object, indicating the application has fully initialised
	beginNotification( self, ApplicationStartedEvent, Response_Cancel, null );
	causeEvent( ApplicationStartedEvent, true, batchOfTests );
end;

}

runTests
{
runTests(batchOfTests : ATBatchSchemaTests input);

vars
	tester			: ATBatchRunner;
	
begin
	on Exception do runTestsException( exception, batchOfTests );

	// run the tests and record as trannsients
	create tester transient;
	batchOfTests.allMethods.copy( tester.allTests );
	tester.run();
	
	// convert the results to shared transients
	beginTransientTransaction;
	batchOfTests.copyTests( tester.listener.allTests );
	batchOfTests.lockInResults();
	commitTransientTransaction;
end;

}

runTestsException
{
runTestsException( exp 			: Exception;
				   batchOfTests : ATBatchSchemaTests input 
							   ): Integer protected;

vars
	
begin
	if batchOfTests <> null then
		if process.isInTransientTransactionState then
			abortTransientTransaction;
		endif;
		
		beginTransientTransaction;
		batchOfTests.abort( exp.errorCode.String & " " & exp.text );
		commitTransientTransaction;	
	
	endif;

	return Ex_Pass_Back;
end;
}

userNotification
{
userNotification(eventType: Integer; theObject: Object; eventTag: Integer; userInfo: Any) updating;

vars
	batchOfTests	: ATBatchSchemaTests;
	executing		: Boolean;
	
begin
	if eventType = ApplicationStartedEvent then
	
		executing		:= true;
		batchOfTests	:= userInfo.ATBatchSchemaTests;
		runTests(batchOfTests);
		
	endif;
	
epilog
	if executing then
		terminate;
	endif;
end;

}

	)
	ATBuilder (
	jadeMethodSources
asString
{
asString(): String;

constants
	MaxSize = 60;
	
vars
	props	: PropertyColl;
	prop	: Property;
	contents: String;
	line	: String;
	value	: Any;
	size	: Integer;
	
begin
	contents	:= "=================================================" & CrLf;
	contents	:= contents & lastObject.String;
	if lastObject.isTransient() then
		contents	:= contents & " (transient)";
	endif;

	props	:= lastObject.class.allProperties;
	foreach prop in props do
		if not prop.virtual
		and prop.name[1] <> "_" then
		
			value	:= propValueGet( lastObject, prop );
			if value <> null then
				if value.isKindOf(Collection) then
					size  := value.Collection.size;
					if size = 0 then
						value := value.String & " (empty)";
					else
						value := value.String & " (size=" & size.String & ")";
					endif;
				elseif value.isKindOf(Object) then
					// ok
				elseif value.String.length > MaxSize then
					size  := value.String.length;
					value := value.String[1:MaxSize] & ".. (size=" & size.String & ")";
				endif;
			else
				value := "[null]";
			endif;
			
			line	:= prop.name & "=" & value.String;
			contents := contents & CrLf & line;
		endif;
	endforeach;
	
	return contents;
end;

}

cloneObject
{
cloneObject( from   : Object )
				    : IATBuilderModify updating;

vars

begin
	makeObject( from, from.class );
	return self;
end;

}

cloneObjectWithKey
{
cloneObjectWithKey( from   		: Object;
					propKeyChg	: Property;
					valueKeyChg	: Any )
								: IATBuilderModify updating;

vars
	props			: PropertyColl;
	propsUse		: PropertyColl;
	prop			: Property;
	value			: Any;
	
begin
	app.mustExist( from, "Clone from object" );

	// create an empty object first
	makeObject( null, from.class ); 
	
	// get the sorted list of properties
	props	:= from.class.allProperties;
	create propsUse transient;
	foreach prop in props do
		if not prop.virtual
		and prop.name[1] <> "_" 
		and prop <> propKeyChg then	
			
			if prop.isKindOf(PrimType) 
			or prop.isKindOf(CompAttribute) then
				propsUse.insert(1,prop);			// prim or prim array
			
			elseif prop.getType().isKindOf(CollClass) = false then
				propsUse.add(prop);					// reference
			endif;
		endif;
	endforeach;
	
	if propKeyChg <> null then
		set( propKeyChg, valueKeyChg );
	endif;
	
	foreach prop in propsUse do
		value	:= propValueGet( from, prop );
		if value <> null then
		
			if prop.isKindOf(CompAttribute) then
				collCopy( prop, value.Collection );
			else
				set( prop, value );
			endif;
		endif;
	endforeach;

	return self;
	
epilog
	delete propsUse;
end;

}

collAdd
{
collAdd( collProperty	: Property;
		 valueList		: ParamListType
					   ): IATBuilderModify;

vars
	collection : Collection;
	count	   : Integer;
	inx		   : Integer;
	value	   : Any;
	
begin
	collection		:= propValueGet( lastObject, collProperty ).Collection;
	
	count	:= app.getParamListTypeLength( valueList );
	foreach inx in 1 to count do
		value	:= app.getParamListTypeEntry( inx, valueList );
		collection.add(value);
	endforeach;
	return self;
end;

}

collCopy
{
collCopy( collProperty	: Property;
		  values		: Collection
					   ): IATBuilderModify;

vars
	collection : Collection;
	value	   : Any;
	
begin
	collection		:= propValueGet( lastObject, collProperty ).Collection;
	
	foreach value in values do
		collection.add(value);
	endforeach;
	return self;
end;

}

create
{
create() updating;

begin
	create dbInternal transient;
	db		:= dbInternal;

	lifetimeSetTransient();
end;

}

delete
{
delete() updating;

vars

begin
	delete dbInternal;
end;

}

lifetimeSet
{
lifetimeSet( lifeTimeConstant : Character ) updating;

vars

begin
	lifetime	:= lifeTimeConstant;
end;

}

lifetimeSetPersistent
{
lifetimeSetPersistent() updating;

vars

begin
	lifetimeSet( Lifetime_Persistent );
end;

}

lifetimeSetTransient
{
lifetimeSetTransient() updating;

vars

begin
	lifetimeSet( Lifetime_Transient );
end;

}

make
{
make(classType    : Class
				 ): IATBuilderModify updating;

// creates an object of the given parameter class without calling the constructor
				 
vars
		
begin
	makeObject( null, classType );
	return self;
end;

}

makeObject
{
makeObject( fromObject : Object;
			typeTo	   : Class 			
					  ): Object protected, updating;
					  
// internal function to create an object

vars
	dummy	: Object;
	object	: Object;	
		
begin
	app.mustExist( typeTo, "Type to create" );

	if fromObject = null then
		create dummy as JadeScript transient;
	else
		dummy	:= fromObject;
	endif;

	// dont naturally create because constructors often get in the way
	if lifetime = Lifetime_Persistent then
		if process.isInTransactionState() = false then
			app.require( false, "Must be in transaction state to create persistent objects" );
		endif;
		object	:= dummy.cloneSelfAs( typeTo, false );
	elseif lifetime = Lifetime_Transient then
		object	:= dummy.cloneSelfAs( typeTo, true );	
	else
		app.require( false, "Lifetime not defined" );
	endif;	
	
	refine( object );
		
	return object;
end;
}

propValueGet
{
propValueGet( 	target	: Object;
				prop 	: Property 
					   ): Any protected;

vars
	mappingSwitch	: Boolean;
	
begin
	mappingSwitch	:= prop.mappingCount > 0;
	if mappingSwitch then
		process._invokeUserMethods( false );	
	endif;

	return target.getPropertyValue( prop.name );
	
epilog
	if mappingSwitch then
		process._invokeUserMethods( true );	
		mappingSwitch	:= false;
	endif;
end;

}

propValueSet
{
propValueSet( 	target	: Object input;
				prop 	: Property;
				value	: Any
					   ) protected;

vars
	mappingSwitch	: Boolean;
	
begin
	mappingSwitch	:= prop.mappingCount > 0;
	if mappingSwitch then
		process._invokeUserMethods( false );	
	endif;

	target.setPropertyValue( prop.name, value );
	
epilog
	if mappingSwitch then
		process._invokeUserMethods( true );	
		mappingSwitch	:= false;
	endif;
end;

}

propValueSetDecimal
{
propValueSetDecimal( 	target	: Object input;
						prop 	: Property;
						value	: Decimal
									) protected;

vars
	mappingSwitch	: Boolean;
	
begin
	mappingSwitch	:= prop.mappingCount > 0;
	if mappingSwitch then
		process._invokeUserMethods( false );	
	endif;

	target.setPropertyValue( prop.name, value );
	
epilog
	if mappingSwitch then
		process._invokeUserMethods( true );	
		mappingSwitch	:= false;
	endif;
end;

}

refine
{
refine(target : Object
			 ): IATBuilderModify updating;

vars

begin
	app.mustExist( target, "Result" );

	lastObject	:= target;
	
	if db <> null then
		db.add( target );
	endif;

	return self;
end;

}

result
{
result(): Object;

begin
	return lastObject;
end;

}

set
{
set( property	: Property;
	 value		: Any 
			   ): IATBuilderModify;

vars
	
begin
	setInternal( property, value, true );
	return self;
end;

}

setInternal
{
setInternal( property	: Property;
			 value		: Any;
			 reqdRef	: Boolean ) protected;

vars
	type			: Type;
	
begin
	type	:= property.getType();
	
	if type = Decimal then
		propValueSetDecimal( lastObject, property, value.Decimal );
		
	else
		if reqdRef and value = null and type.isKindOf(Class) then
			app.require( value <> null, "Reference parameter must be set, or use " & ATBuilder::setNull.name & "()" );
		endif;
		
		propValueSet( lastObject, property, value );
		
	endif;
end;

}

setNull
{
setNull( property	: Property
				   ): IATBuilderModify;

vars
	
begin
	setInternal( property, null, false );
	return self;
end;

}

	)
	ATChangeTracker (
	jadeMethodSources
compare
{
compare(): Boolean;

vars
	tracker		: ATChangeTrackerObject;
	trackList	: ATChangeTrackerObjectDict;
	purge		: ObjectArray;
	
begin
	create purge transient;
	create trackList transient;
	trackedObjects.copy( trackList );
	trackedObjects.clear();
	
	foreach tracker in trackList do
		if tracker.compare() then
			trackedObjects.add( tracker );
		else	
			purge.add( tracker );
		endif;
	endforeach;
	
	return trackedObjects.isEmpty() = false;
	
epilog
	purge.purge();
	delete purge;
	delete trackList;
end;

}

create
{
create() updating;

vars

begin
	includeTransients	:= true;
	
	classesToIgnore.add( AutomatedTest );
	classesToIgnore.add( JadeTestCase );
	classesToIgnore.add( JadeTestDialog );
	classesToIgnore.add( JadeTestRunner );
end;

}

delete
{
delete() updating;

vars

begin
	trackedObjects.purge();
end;

}

displayChanges
{
displayChanges(): String;

vars
	tracker		: ATChangeTrackerObject;
	contents	: String;
	inx			: Integer;
	prop		: Property;
	
begin
	foreach tracker in trackedObjects do
		contents	:= contents & tracker.object.String & ' ' & tracker.statusDescription & CrLf;
		
		foreach inx in 1 to tracker.allProperties.size do
			prop	:= tracker.allProperties[inx].Property;
			contents	:= contents & Tab & prop.name.padBlanks(35) & "[" & tracker.allValuesBefore.at(inx) & "] to [" & tracker.allValuesAfter.at(inx) & "]" & CrLf;
		endforeach;
		contents	:= contents & CrLf;
	endforeach;
	return contents;
end;

}

getObjects
{
getObjects( objects : Collection input) protected;

vars
	oa		: ObjectArray;
	object	: Object;
	
begin
	// get the transients
	create oa transient;
	process.allTransientInstances( oa, 0 );
	oa.remove( oa );
	
	// only track a subset of objects
	foreach object in oa do
		if trackingObject( object ) then
			objects.add( object );
		endif;		
	endforeach;
	
epilog
	delete oa;
end;

}

startTracking
{
startTracking() updating;

vars
	object	: Object;
	tracker	: ATChangeTrackerObject;
	
begin
	// get the objects to track
	objectCollection.clear();
	getObjects( objectCollection );
	
	// take a snapshot
	foreach object in objectCollection do
		create tracker transient;
		tracker.recordStart( object );
		trackedObjects.add( tracker );
	endforeach;
end;
}

stopTracking
{
stopTracking() updating;

vars
	object	: Object;
	tracker	: ATChangeTrackerObject;
	
begin
	// get the objects to track
	objectCollection.clear();
	getObjects( objectCollection );
	
	// take a snapshot
	foreach object in objectCollection do
		tracker		:= trackedObjects[object];
		if tracker = null then
			create tracker transient;
			tracker.status		:= Object_Create_Event;
			tracker.recordStart( object );
			trackedObjects.add( tracker );
			
		else
			tracker.status		:= Object_Update_Event;
			tracker.recordStop();
		endif;
	endforeach;
	
	foreach tracker in trackedObjects do
		if tracker.status = 0 then
			tracker.status		:= Object_Delete_Event;
		endif;
	endforeach;
end;
}

trackingObject
{
trackingObject(object : Object): Boolean protected;

vars
	class	: Class;
	found	: Boolean;
	
begin
	// class checks
	foreach class in classesToIgnore do
		if object.class.inheritsFrom( class ) then
			return false;
		endif;
	endforeach;
	
	if classesToTrack.isEmpty() = false then
		foreach class in classesToTrack do
			if object.isKindOf(class) then
				found	:= true;
				break;
			endif;
		endforeach;
		if not found then
			return false;
		endif;
	endif;
	
	if object.isKindOf( Control ) then
		if object.Control.form.isKindOf( JadeTestDialog ) then
			return false;
		endif;
	elseif object.isKindOf( MenuItem ) then
		if object.MenuItem.form.isKindOf( JadeTestDialog ) then
			return false;
		endif;
	endif;
	
	return true;
end;

}

	)
	ATChangeTrackerObject (
	jadeMethodSources
compare
{
compare(): Boolean;

vars
	inx		: Integer;
	change	: Boolean;
	
begin
	inx		:= allProperties.size;
	while inx > 0 do
		
		change	:= allValuesBefore.at(inx) <> allValuesAfter.at(inx);
		
		if not change then
			allProperties.removeAt(inx);
			allValuesBefore.removeAt(inx);
			allValuesAfter.removeAt(inx);
		endif;
	
		inx	:= inx - 1;
	endwhile;	
	
	if allProperties.size > 0 then
		// theres a property difference
		return true;
		
	elseif status = Object_Create_Event or status = Object_Delete_Event then
		// show all creates and deletes
		return true;
		
	endif;	
	
	return false;
end;

}

create
{
create() updating;

vars

begin
	create allValuesBefore transient;
	create allValuesAfter transient;
end;

}

delete
{
delete() updating;

vars

begin
	delete allValuesBefore;
	delete allValuesAfter;
end;

}

recordProperties
{
recordProperties( objectClass : Class) protected;

vars
	props	: PropertyColl;
	prop	: Property;
	
begin
	props	:= objectClass.allProperties();
	foreach prop in props do
		if prop.name[1] = "_" 
		or prop.virtual then
			continue;
		endif;

		allProperties.add( prop );
	endforeach;
	
epilog
	delete props;
end;
}

recordPropertyValues
{
recordPropertyValues(values : ATVariableStringArray input) protected;

vars
	iter	: Iterator;
	prop	: Property;
	val		: Any;
	valStr	: String;
	
begin
	iter	:= allProperties.createIterator();
	while iter.next( prop ) do
		val		:= object.getPropertyValue( prop.name );
		valStr	:= val.String;
		
		values.add( valStr );
	endwhile;
	
epilog
	delete iter;
end;

}

recordStart
{
recordStart(target : Object) updating;

vars
	
begin
	object	:= target;

	recordProperties(target.class);
	
	recordPropertyValues(allValuesBefore);	
end;

}

recordStop
{
recordStop() updating;

vars

begin
	recordPropertyValues( allValuesAfter );
end;

}

statusDescription
{
statusDescription(set: Boolean; _value: String io) mapping;

vars

begin
	if set = false then
		if status = Object_Create_Event then
			_value	:= "Created";
		elseif status = Object_Update_Event then
			_value	:= "Modified";
		elseif status = Object_Delete_Event then
			_value	:= "Deleted";
		else
			_value	:= "No comparison performed";
		endif;
	endif;
end;

}

	)
	ATCommandLineReader (
	jadeMethodSources
create
{
create() updating;

vars

begin
	commandLine	:= process.getCommandLine();
end;

}

getValue
{
getValue( item	: String 
			   ): String;

vars
	pos			: Integer;
	contents	: String;
	
begin
	// start position
	pos := commandLine.toLower().pos( " " & item.toLower() & "=", 1 );
	if pos = 0 then
		return null;
	endif;
	pos	:= pos + 1 + item.length() + 1;

	if pos >= commandLine.length() then
		return null;
	endif;
	
	// what end char do we look for
	contents	:= commandLine[pos:end];
	if contents[1] = '"' then
		pos	 := contents.pos( '"', 2 );
	else	
		pos	 := contents.pos( ' ', 1 );
	endif;		

	if pos > 0 then
		contents	:= contents.atSubString(1,pos-1);
		if contents[1] = '"' then
			return contents[2:end];
		endif;
	endif;
	return contents;
end;

}

	)
	ATDatabase (
	jadeMethodSources
add
{
add( object : Object ) updating;

vars

begin
	if object <> null then
		if allInstancesSet.includes( object ) = false then
		
			if not hasPersistents and isObjectPersistent( object ) then
				hasPersistents	:= true;
			endif;
			
			allInstancesSet.add( object );
			allInstancesArray.add( object );
		endif;
	endif;
end;

}

allInstances
{
allInstances(set: Boolean; _value: Collection io) mapping;
/*

	CR			Patch		Who		When		Reason
	=======		=========	===		==========	=============================================
*/
vars
	
begin
	if set then
		// set code here
	else
		// get code here
		_value	:= allInstancesArray;
	endif;
end;
}

classCount
{
classCount( classType : Class
					 ): Integer;

vars
	object	: Object;
	count	: Integer;
	iter	: Iterator;
		
begin
	iter	:= allInstancesArray.createIterator();
	while iter.next( object ) do
		if object.class = classType then
			count	:= count + 1;
		endif;
	endwhile;
	return count;
	
epilog
	delete iter;
end;

}

classInstances
{
classInstances( classType			: Class;
				includeSubclasses 	: Boolean;
				coll 				: Collection input );

vars
	object	: Object;
	iter	: Iterator;
		
begin
	app.require( includeSubclasses = false, "Subclasses method parameter not yet implemented" );

	iter	:= allInstancesArray.createIterator();
	while iter.next( object ) do
		if object.class = classType then
			coll.add( object );
		endif;
	endwhile;
	
epilog
	delete iter;
end;
}

clear
{
clear() updating;

vars

begin
	allInstancesSet.clear();
	allInstancesArray.clear();
	
	hasPersistents	:= false;
end;

}

create
{
create() updating;

vars
	
begin
	purgeOnDelete	:= true;
	
	create purger transient;
end;

}

delete
{
delete() updating;

vars

begin
	if purgeOnDelete then
		purge();
	endif;

	delete purger;
end;

}

find
{
find( classType : Class;
	  instance  : Integer 
			   ): Object protected;

vars
	object		: Object;
	count		: Integer;
	found		: Boolean;
	iter		: Iterator;
	classFind	: Class;
		
begin
	iter	:= allInstancesArray.createIterator();
	while iter.next( object ) do
		if object.class = classType then
			count	:= count + 1;
			if count = instance then
				// found
				return object;
			endif;
		endif;
	endwhile;
	
	if classType.isKindOf( JadeImportedClass ) then
		// try in the originating schema
        classFind	:= classType.JadeImportedClass.exportedClass.originalClass;
		return find( classFind, instance );
	endif;
	
	return null;
	
epilog
	delete iter;
end;
}

get
{
get( classType 	: Class;			// class to find instance of 
	 instance  	: Integer;			// instance number
	 mustExist	: ParamListType		// set to false if you dont care whether null is returned, default is to assert
			   ): Object;			// instance found

vars
	object			: Object;
	assertOnNull	: Boolean;
	
begin
	object	:= find( classType, instance );
	if object <> null then
		return object;		// found, no probs
	endif;
	
	// may need to assert given we didnt find anything
	assertOnNull	:= true;
	if app.getParamListTypeLength( mustExist ) > 0 then
		assertOnNull	:= app.getParamListTypeEntry( 1, mustExist ).Boolean;
	endif;
	if assertOnNull then
		app.require( object <> null, classType.name & " instance " & instance.String & " does not exist" );
	endif;
end;

}

getObject
{
getObject(  classType	: Class;
			instance	: Integer;
			object		: Any output );
			
vars

begin
	object	:= get( classType, instance );
end;

}

includes
{
includes( object : Object ): Boolean;

vars
		
begin
	return allInstancesSet.includes( object );
end;

}

instances
{
instances(): Collection;

vars

begin
	return allInstancesSet;
end;

}

purge
{
purge() updating;

vars
	
begin
	if allInstancesSet.isEmpty then
		return;
	endif;

	purger.purge( allInstancesSet );

epilog
	clear();
end;

}

	)
	ATDeltaMode (
	jadeMethodSources
create
{
create() updating;

vars

begin
	timeout	:= 2000;
end;

}

install
{
install();

vars

begin
	app.setProfileStringAppServer( app.getIniFileNameAppServer, "JadeServer", "DeltaDatabaseCapable", "true" );
end;

}

start
{
start();

vars

begin
	system.activateDeltaDatabase( true, timeout );
end;

}

stop
{
stop();

vars

begin
	system.activateDeltaDatabase( false, timeout );
end;

}

	)
	ATFileLogger (
	jadeMethodSources
close
{
close() updating;

vars

begin
	if myFile <> null then
		myFile.commitLog();
		delete myFile;
	endif;
end;
}

delete
{
delete() updating;

vars

begin
	close();
end;

}

initialise
{
initialise( fileName : String ) updating;

vars

begin
	if myFile = null then
		create myFile transient;
		myFile.fileName	:= fileName;
		myFile.bufferOutput	:= false;
		myFile.formatOutput	:= false;
		myFile.versionFile	:= false;
	endif;
end;
}

writeContents
{
writeContents(message : String ) updating;

vars
	
begin
	myFile.infoServer( message );
end;

}

	)
	ATFileWriter (
	jadeMethodSources
close
{
close() updating;

vars

begin
	if myFile <> null then
		myFile.close();
		delete myFile;
	endif;
end;

}

delete
{
delete() updating;

vars

begin
	close();
end;

}

initialise
{
initialise( fileName : String ) updating;

vars
	
begin
	close();
	
	create myFile transient;
	myFile.mode		:= File.Mode_Output;
	myFile.fileName	:= fileName;
	myFile.usePresentationFileSystem	:= false;
	myFile.open();
end;
}

writeContents
{
writeContents(message : String ) updating;

vars

begin
	myFile.writeString( message );
end;

}

	)
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
	ATGarbageCollector (
	jadeMethodSources
add
{
add( object : Object );

vars

begin
	if object <> null then
		if allObjects.includes( object ) = false then
			allObjects.add( object );
		endif;
	endif;	
end;

}

clear
{
clear() updating;

vars

begin
	allObjects.clear();
end;

}

create
{
create() updating;

vars

begin
	create purger transient;
end;

}

delete
{
delete() updating;

vars

begin
	purge();
	
	delete purger;
end;

}

purge
{
purge() updating;

vars

begin
	if allObjects.isEmpty() then
		return;
	endif;
	
	// pass to custom eraser
	purger.purge( allObjects );
end;

}

remove
{
remove( object : Object );

vars

begin
	if object <> null then
		if allObjects.includes( object ) then
			allObjects.remove( object );
		endif;
	endif;	
end;

}

	)
	ATLocator (
	jadeMethodSources
addClass
{
addClass(cls : Class) updating;

vars
	meths	: MethodSet;
	mth		: Method;
	
begin
	// class may not be what we're after
	if cls.abstract 
	or cls.inheritsFrom( JadeTestCase ) = false then
		return;
	endif;
	if allClasses.includes( cls ) then
		return;
	endif;
	allClasses.add( cls );
	
	// find and add all methods
	create meths transient;
	cls.allMethods( meths );
	
	foreach mth in meths do
		addMethod( mth );
	endforeach;
	
epilog
	delete meths;
end;
}

addClassName
{
addClassName( 	schemaName	: String;
				className	: String ) updating;

vars
	scm		: Schema;
	cls		: Class;
	
begin
	scm		:= rootSchema.getSchema( schemaName );
	app.mustExist( scm, "Schema needs to exist: " & schemaName );
	
	cls		:= scm.getClass( className );
	app.mustExist( cls, "Class needs to exist: " & className );
	
	addClass( cls );
end;

}

addClasses
{
addClasses( parentClass		: Class;
			targetSchema	: Schema ) updating;

vars
	subClasses		: ClassColl;
	subClass		: Class;
	targetClass		: Class;
	
begin
	// add the methods off the actual class
	targetClass		:= targetSchema.getClass( parentClass.name );
	addClass( targetClass );

	// find all subclasses in this schema
	create subClasses transient;
	if parentClass.schema = targetSchema then
		// find the classes locally
		parentClass.allSubclasses(subClasses);
		foreach subClass in subClasses do
			addClass( subClass );
		endforeach;
	else
		parentClass.allSubclassesInSubschemas( subClasses );
		foreach subClass in subClasses do
			if subClass.schema = targetSchema then
				addClass( subClass );
			endif;
		endforeach;
	endif;
	
epilog
	delete subClasses;
end;

}

addClassesDown
{
addClassesDown( parentClass 	: Class;
				targetSchema	: Schema ) updating;

vars
	schema	: Schema;
	schemas	: SchemaNDict;
		
begin
	// do for the current schema
	addClasses( parentClass, targetSchema );

	// now do for subschemas
	schemas	:= targetSchema.getPropertyValue( Schema::subschemas.name ).SchemaNDict;
	foreach schema in schemas do
		addClassesDown( parentClass, schema );
	endforeach;
end;

}

addMethod
{
addMethod( meth : Method );

vars
	
begin
	if allMethods.includes( meth ) then
		return;
	endif;
	
	if includeMethod( meth ) then
		allMethods.add( meth );
	endif;
end;

}

addSchema
{
addSchema( schema 		: Schema;
		   subschemas	: Boolean ) updating;

vars
		
begin
	app.mustExist( schema, "Schema" );

	if subschemas then
		addClassesDown( JadeTestCase, schema );
	else
		addClasses( JadeTestCase, schema );
	endif;
end;

}

includeMethod
{
includeMethod( meth : Method )
				    : Boolean;

vars
	annotation 	: String;
	found		: Boolean;
	
begin
	if meth.unitTestFlags <> 1 then
		return false;
	endif;
	
	if methodPrefix <> null
	and meth.name.pos( methodPrefix, 1 ) <> 1 then
		return false;		
	endif;
	
	if sourceAnnotationsAvoid.isEmpty() = false then	
		foreach annotation in sourceAnnotationsAvoid do
			if sourceAnnotationExists( meth, annotation ) then
				return false;
			endif;
		endforeach;
	endif;
	
	if sourceAnnotations.isEmpty() = false then	
		foreach annotation in sourceAnnotations do
			if sourceAnnotationExists( meth, annotation ) then
				found	:= true;
				break;
			endif;
		endforeach;
		if not found then
			return false;
		endif;
	endif;

	// all tests passed
	return true;
end;

}

sourceAnnotationExists
{
sourceAnnotationExists( meth		: Method;
						annotation 	: String 
								   ): Boolean protected;

vars
	source			: String;
	posHit			: Integer;
	posMethStart	: Integer;
	testClass		: Class;
	
begin
	// method text
	posHit	:= meth.getSource().pos( annotation, 1 );
	if posHit > 0 then
		//
		// need to include constants plus reserved words may not be at start of line etc
		//
		posMethStart		:= meth.getSource().pos( Lf & "vars", 1 );
		if posMethStart = 0 then
			posMethStart		:= meth.getSource().pos( Lf & "begin", 1 );
		endif;
		if posMethStart = 0 or posMethStart > posHit then
			return true;
		endif;
	endif;
	
	// class text
	testClass	:= meth.getSchemaType().Class;
	while testClass <> null 
	and testClass.name <> JadeTestCase.name do
		if testClass.text.pos( annotation, 1 ) > 0 then
			return true;
		endif;
		testClass	:= testClass.getSuperclass();
	endwhile;
	
	return false;
end;

}

	)
	ATMock (
	jadeMethodSources
addAttribute
{
addAttribute( 	name	: String;
				type	: Type )
						: Attribute;

vars
	attribute	: Attribute;
	length		: Integer;
	
begin
	app.require( transientClass <> null, "Class must be created before attributes can be added" );

	if type = String
	or type = Binary then
		length	:= -1;
	endif;		
	
	attribute	:= process.addTransientClassAttribute( transientClass.schema, transientClass, name, type.name, length, 0 );
	
//	attribute	:= process.invokeMethod( myAppContext, Process::addTransientClassAttribute, 
//						myClass.schema, myClass, name, type.name, length, 0 ).Attribute;	
	
	
	return attribute;
end;

}

addReference
{
addReference( 	name	: String;
				type	: Type )
						: Reference;

vars
	ref	: Reference;
	
begin
	app.mustExist( transientClass, "Class must be created before references can be added" );

	ref	:= process.addTransientClassReference( transientClass.schema, transientClass, name, type.name, type.inheritsFrom(Collection));
	
	return ref;
end;

}

compile
{
compile() protected, updating;
// compile any methods

vars
	iterator	: Iterator;
	mockMethod	: ATMockMethod;
	
begin
	if compiled then
		return;
	endif;

	iterator	:= allMockedMethods.createIterator();
	while iterator.next( mockMethod ) do
		mockMethod.compile();
	endwhile;
	compiled	:= true;
	
epilog
	delete iterator;
end;

}

create
{
create() updating;

vars

begin
	create gc transient;
	
	suffixMethodCount	:= "_callCount";
end;

}

createClassInternal
{
createClassInternal( transientClassParam		: Class;
					 persistentClassParam		: Class;
					 applicationContextParam	: ApplicationContext ) updating, protected;

vars
	
begin
	app.mustExist( transientClassParam, "Transient class" );
	app.mustExist( applicationContextParam, "Application context" );
	app.require( not persistentClassParam.isKindOf( JadeImportedClass ), "Package classes are not yet supported" );
	
	deleteClass();			// clear the last one if it exists

	transientClass		:= transientClassParam;
	applicationContext	:= applicationContextParam;
	persistentClass		:= persistentClassParam;
end;

}

createTransient
{
createTransient(): Object updating;

vars
	object	: Object;

begin
	app.require( transientClass <> null, "Class must be created before instances can be built" );
	
	compile();
	
	object	:= invokeMethod( applicationContext, Object::cloneSelfAs, transientClass, true ).Object;
	return object;
end;

}

delete
{
delete() updating;

vars

begin
	if transientClass <> null then
		deleteClass();
	endif;
	
	delete gc;
end;

}

deleteClass
{
deleteClass() updating;

vars

begin
	if transientClass <> null then
		process.deleteTransientClass( transientClass );
		
		compiled	:= false;
		allMockedMethods.clear();
	endif;
end;

}

methodCallCount
{
methodCallCount( receiver 			: Object;
				 methodRefOrName	: Any 
								   ): Integer;

vars
	count		: Integer;
	countName	: String;
	methodName	: String;
	
begin
	// dereference the 2nd param
	if methodRefOrName.isKindOf( Method ) then
		methodName	:= methodRefOrName.Method.name;
	elseif methodRefOrName.isKindOf( String ) then
		methodName	:= methodRefOrName.String;
	else
		app.require( false, "Method parameter must be the method name or method reference" );	
	endif;
		
	countName	:= methodCallCountPropertyName( methodName );
	
	app.require( transientClass.findProperty( countName ) <> null, methodName & "() is not being tracked" );
	
	count		:= receiver.getPropertyValue( countName ).Integer;
	return count;
end;

}

methodCallCountPropertyName
{
methodCallCountPropertyName( methodName : String 
							   ): String protected;

vars

begin
	return (methodName & suffixMethodCount)[1:100];
end;

}

methodCalled
{
methodCalled( receiver 			: Object;
			  methodReference	: JadeMethod 
							   ): Boolean;

vars
	count	: Integer;
	
begin
	count		:= methodCallCount( receiver, methodReference ).Integer;
	return count = 1;
end;

}

methodOverride
{
methodOverride( meth  : Method )
					  : IATMockMethod updating;

vars
	mockMethod	: ATMockMethod;
	countName	: String;
	
begin
	app.require( transientClass <> null, "Class must be created before methods can be added" );
	app.require( compiled = false, "Method definitions must be inplace before instances are created" );
	
	// add a counter for the method
	countName	:= methodCallCountPropertyName( meth.name );
	addAttribute( countName, Integer );

	// now add the method
	create mockMethod transient;
	gc.add( mockMethod );
	mockMethod.initialiseMethodOverride( transientClass, meth, countName );
	allMockedMethods.add( mockMethod );	

	return mockMethod;
end;

}

zcode_createClass
{
zcode_createClass( persistentClass	: Class )
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
	ATMockMethod (
	jadeMethodSources
compile
{
compile() updating;

vars
	sourceCode	: String;
	errorCode	: Integer;
	errorPos	: Integer;
	errorLength	: Integer;
	featureNumber	: Integer;
	
begin
	app.mustExist( myTransClass, "Transient method must be attached to " & ATMock.name );
	app.require( compileAttempted = false, "Cannot call after compilation attempt" );
	
	compileAttempted	:= true;
	sourceCode			:= generateSource();
	
	myTransMethod	:= process.createTransientMethod( methodName, 
													  myTransClass, 
													  myTransClass.schema,
													  sourceCode, 
													  false, 
													  myReturnType,
													  errorCode, 
													  errorPos, 
													  errorLength );

	if errorCode = 0 then
		// seems to be an internal fault where the number key isnt being set
		if myTransMethod.number = 0 then
			featureNumber	:= getInstanceIdForObject( myTransMethod ).Integer;
			myTransMethod.setPropertyValue( SchemaEntity::number.name, featureNumber );
		endif;

	else
		compileError( sourceCode, errorCode, errorPos, errorLength );
		app.require( false, errorMessage );
	endif;
end;

}

compileError
{
compileError( 	code			: String;
				errorCode		: Integer;
				errorPos		: Integer;
				errorLength		: Integer
								) protected, updating;

vars
	sourceLine	: String;
	posStart	: Integer;
	posEnd		: Integer;
	
begin
	if errorPos > 0 then
		posStart	:= code.reversePosIndex( Lf, errorPos );
		posEnd		:= code.pos( Cr, errorPos );
		if posEnd > 0 then
			posEnd	:= posEnd - 1;
		endif;
	endif;
	posStart	:= posStart + 1;
	if posEnd = 0 then
		posEnd	:= code.length;
	endif;

	errorContent	:= code[posStart:posEnd-posStart];
	errorMessage	:= methodName & "() has compilation error " & errorCode.String & " - " 
						& process.getErrorText( errorCode );
end;

}

doNothing
{
doNothing(): IATMockMethod updating;

vars

begin
	app.require( compileAttempted = false, "No further method changes after compilation attempt" );

	if myReturnType <> null then
		sourceCodeReturnValue	:= "null";
	else
		sourceCodeReturnValue	:= "";
	endif;
	return self;
end;

}

generateMethodHeader
{
generateMethodHeader( meth : Method ) protected, updating;

// copies the header from the method - note, doesnt support comments!

vars
	source	: String;
	pos		: Integer;
	
begin
	source	:= meth.getSource();
	pos		:= source.pos( ")", 1 );
	pos		:= source.pos( ";", pos );
	source	:= source[1:pos];
	sourceCodeHeader	:= source & CrLf;
end;

}

generatePropertyCounter
{
generatePropertyCounter() protected, updating;

vars
	sourceInsert	: String;
	
begin
	if propCountName <> null then
		// do it a longwinded way to avoid needing to be an update method
		sourceInsert	:= Tab & "// record how many times this function is called" & CrLf
			& Tab & "getOidString().asOid().setPropertyValue('" & propCountName 
			& "', getPropertyValue('" & propCountName & "').Integer + 1 );" & CrLf;
			
		sourceCodeBody	:= sourceInsert & sourceCodeBody;
	endif;
end;

}

generateReturnValue
{
generateReturnValue( valueAsText : String ) protected, updating;

vars

begin
	if valueAsText <> null then
		sourceCodeReturnValue	:= Tab & "return " & valueAsText & ";" & CrLf;
	else
		sourceCodeReturnValue	:= CrLf;
	endif;
end;

}

generateSource
{
generateSource(): String protected, updating;

vars
	source	: String;
	
begin
	if sourceCodeOverride <> null then
		return sourceCodeOverride;
	endif;
	
	// begin the generate
	source	:= sourceCodeHeader;
	
	source := source & CrLf & "vars" & CrLf & sourceCodeVars;
	
	source	:= source & CrLf & "begin" & CrLf;
	
	source	:= source & sourceCodeBody & CrLf;
	
	source	:= source & sourceCodeReturnValue;
		
	source	:= source & "end;";

	return source;	
end;

}

getReturnType
{
getReturnType(): Type protected, updating;

vars
	source	: String;
	inx		: Integer;
	typeStr	: String;
	scm		: Schema;
	type	: Type;
	
begin
	source	:= myParentMethod.makeHeader();
	inx		:= source.reversePos( " " );
	typeStr	:= source[inx+1:end].trimBlanks();
	scm		:= myParentMethod.getSchemaType.schema;
	type	:= scm.getClass( typeStr );
	if type = null then
		type	:= rootSchema.getLocalPrimitive( typeStr );
	endif;
	return type;
end;

}

initialiseMethodOverride
{
initialiseMethodOverride( transClass			: Class;
						  meth  				: Method;
						  callCountPropName		: String ) updating;

vars

begin
	app.mustExist( transClass, "Transient class" );
	app.mustExist( meth, "Existing method" );
	app.require( myTransMethod = null, "Transient method already defined" );
	app.require( compileAttempted = false, "Cannot call after compilation attempt" );

	methodName		:= meth.name;
	propCountName	:= callCountPropName;
	myTransClass	:= transClass;
	myParentMethod	:= meth;
	
	// generate some source
	generateMethodHeader( meth );
	generatePropertyCounter();
	
	// derive the return type and its default
	myReturnType	:= getReturnType();
	if myReturnType <> null then
		generateReturnValue( "null" );
	endif;
end;

}

raisesException
{
raisesException( errorCode	: Integer;
				 errorDesc	: String
						   ): IATMockMethod updating;

vars

begin
	app.require( compileAttempted = false, "No further method changes after compilation attempt" );
	app.require( raiseErrorCode = 0, "Raise handler already defined" );
	app.require( errorCode > 0, "Error code must be defined" );
		
	raiseErrorCode			:= errorCode;
	raiseErrorDescription	:= errorDesc;
	
	if raiseErrorDescription = null then
		raiseErrorDescription	:= "Developer identified " & methodName & " as not being callable";
	endif;
	
	sourceCodeVars		:= sourceCodeVars & Tab & " exp	: NormalException;" & CrLf;
	sourceCodeBody		:= sourceCodeBody & CrLf & 
"	// raise an exception as this method shouldnt be called	
	create exp transient;
	exp.errorCode := " & raiseErrorCode.String & ";
	exp.errorItem := '" & raiseErrorDescription & "';
	exp.continuable			:= false;
	raise exp precondition;" & CrLf;

	return self;
end;

}

returns
{
returns( any : Any 
			): IATMockMethod updating;

vars
	returnValue		: String;
	
begin
	app.require( compileAttempted = false, "No further method changes after compilation attempt" );
	app.require( myReturnType <> null, "Return type must be defined" );

	if any = null then
		returnValue	:= "null";
		
	elseif any.isKindOf( Object ) then
		returnValue	:= '"' & any.Object.getOidString() & '".asObject().' & myReturnType.name;
	
	elseif myReturnType.inheritsFrom( Object ) and any.String = "self" then
		returnValue	:= 'getOidString().asOid().' & myReturnType.name;		// doesnt want to compile with self
		
	elseif myReturnType = String then
		returnValue	:= '"' & any.String & '"';
	
	else
		returnValue	:= any.String;
		
	endif;
	
	generateReturnValue( returnValue );

	return self;
end;

}

sourceCode
{
sourceCode(set: Boolean; _value: String io) mapping, updating;

vars

begin
	if set then
		// set code here
	else
		// get code here
		_value	:= generateSource();
	endif;
end;

}

withSource
{
withSource( source : String )
				   : IATMockMethod updating;

vars

begin
	app.require( compileAttempted = false, "No further method changes after compilation attempt" );

	sourceCodeOverride	:= source;

	return self;
end;

}

	)
	ATPurger (
	jadeMethodSources
deleteObjectLevel10
{
deleteObjectLevel10( object : Object io ) protected;

vars

begin
	if app.isValidObject( object ) = false then
		return;		// already done;
	endif;
	
	if process.isInTransactionState() = false 
	and isObjectPersistent( object ) then
		beginTransaction;
	endif;
	
	// perform a normal delete
	delete object;
end;

}

deleteObjectLevel20
{
deleteObjectLevel20( object : Object io ) protected;

vars
	userMethodsOff	: Boolean;
	
begin
	if app.isValidObject( object ) = false then
		return;		// already done;
	endif;
	
	if process.isInTransactionState() = false 
	and isObjectPersistent( object ) then
		beginTransaction;
	endif;
		
	process._invokeUserMethods( false );	
	userMethodsOff	:= true;
	
	// perform a more advanced delete
	delete object;
		
epilog
	if userMethodsOff then
		process._invokeUserMethods( true );	
	endif;
end;

}

exceptionHander
{
exceptionHander( exp : Exception 
					): Integer protected;

vars

begin
	return Ex_Resume_Next;	
end;

}

purge
{
purge( collection : Collection input );

vars
	object		: Object;
	sizeBefore	: Integer;
	sizeAfter	: Integer;
	attempt		: Integer;
	
begin
	on Exception do exceptionHander(exception);

	if process.isInTransactionState() then
		abortTransaction;			// some objects may get disposed via the abort
	endif;
	
	// get progressively more brutal in terms of deletes
	collection.copy( allObjectsToDelete );
	sizeAfter	:= allObjectsToDelete.size();
	while sizeBefore <> sizeAfter do
		sizeBefore	:= allObjectsToDelete.size();
		attempt		:= attempt + 1;

		// attempt deletes
		foreach object in allObjectsToDelete do
			if attempt = 1 then
				deleteObjectLevel10( object );
			else 
				deleteObjectLevel20( object );
			endif;
		endforeach;
		
		if process.isInTransactionState() then
			commitTransaction;
		endif;
		
		// trim the collection of invalids
		allObjectsToDelete.rebuild();
		sizeAfter	:= allObjectsToDelete.size();
	endwhile;
	
	object	:= allObjectsToDelete.first();
	if object <> null  then
		// could not erase some of the objects, needs developer intervention
		collection.rebuild();
		app.require( false, "Could not erase " & object.class().name & " objects" );
	
	else
		// remove all the invalids from the param collection
		collection.clear();
	endif;	
end;

}

	)
	ATSchemaEntityFinder (
	jadeMethodSources
findClass
{
findClass( 	schemaName	: String;
			className	: String 
					   ): Class;
/*

	CR			Patch		Who		When		Reason
	=======		=========	===		==========	=============================================
*/
vars
	scm		: Schema;
	
begin
	scm		:= findSchema( schemaName );
	return scm.getClass( className );
end;
}

findMethod
{
findMethod( schemaName	: String;
			className	: String;
			methodName	: String )
						: Method;

vars
	cls		: Class;
	
begin
	cls		:= findClass( schemaName, className );
	return cls.getMethodInHTree( methodName );
end;
}

findMethodQualified
{
findMethodQualified(fullPath	: String 
							   ): Method;
vars
	
begin
	return findMethod( 	getQualifiedComponent( fullPath, 1 ),
						getQualifiedComponent( fullPath, 2 ),
						getQualifiedComponent( fullPath, 3 ));
end;
}

findSchema
{
findSchema(schemaName	: String 
					   ): Schema;

vars
	
begin
	if schemaName = rootSchema.name then
		return rootSchema;
	endif;
	
	return rootSchema.getSchema( schemaName );
end;
}

getQualifiedComponent
{
getQualifiedComponent(  full	: String;
						part 	: Integer 
							   ): String protected;

vars
	inx		: Integer;
	pos		: Integer;
	result	: String;
	
begin
	pos	:= 1;
	foreach inx in 1 to 3 do		
		result	:= full.scanUntil( ":", pos );
		if inx = part then
			return result;
		endif;
		pos		:= pos + 2;
	endforeach;
end;

}

	)
	ATSchemaFileCleaner (
	jadeMethodSources
clean
{
clean() updating;

vars

begin
	removeSetModifiedTime();
	
	removeJCFLine();
	
	replaceJadeVersion();
	
	removeParameters("number =");
	removeParameters("number=");
	
	removeParameters("patchVersion=");
	removeParameters("patchVersioningEnabled =");
	
	removeParameters("ordinal =");
	removeParameters("highestOrdinal =");
	
	removeParameters("subId =");
	removeParameters("highestSubId =");
end;

}

getHeaderEndPosition
{
getHeaderEndPosition() : Integer protected;

vars
	startPosition	: Integer;
	
begin
	startPosition		:= contents.pos( CrLf & "typeSources" & CrLf, 1 );
	if startPosition = 0 then
		return contents.length();
	else
		return startPosition;
	endif;	
end;

}

removeJCFLine
{
removeJCFLine() protected, updating;

vars
	endPos		: Integer;
	startPos	: Integer;
	
begin
	endPos		:= contents.pos( CrLf, 1 );
	startPos	:= contents.pos( "JADE COMMAND FILE NAME", 1 );
	
	if startPos > 0 and startPos < endPos then
		removeLine(startPos);	
	endif;
end;

}

removeLine
{
removeLine(pos : Integer) protected, updating;

vars
	posStart	: Integer;
	posEnd		: Integer;
	
begin
	posStart	:= contents.reversePosIndex( CrLf, pos );
	if posStart = 0 then
		posStart	:= 1;
	endif;
	
	posEnd		:= contents.pos( CrLf, pos );
	if posEnd = 0 then
		posEnd	:= contents.length();
	endif;
	
	if posStart = 1 then
		contents	:= contents[posEnd:end];
	else
		contents	:= contents[1:posStart-1] & contents[posEnd:end];
	endif;
end;

}

removeParameter
{
removeParameter( posStart : Integer ) updating, protected;

vars
	contentsBefore	: String;
	contentsAfter	: String;
	contentsBridge	: String;
	hasEntryBefore	: Boolean;
	hasEntryAfter	: Boolean;
	hasNoMarker		: Boolean;
	posEnd			: Integer;
	
begin
	// build the text before
	contentsBefore	:= contents[1:posStart-1].trimBlanks();
	hasEntryBefore	:= contentsBefore[contentsBefore.length] = ",";
	
	// find the end
	posEnd	:= posStart;
	contents.scanUntil( ";,", posEnd );
	hasNoMarker		:= contents.pos( CrLf, posStart ) < posEnd;
	if hasNoMarker then
		hasEntryAfter	:= false;
		posEnd			:= contents.pos( CrLf, posStart );
		contentsAfter	:= contents[posEnd:end].trimBlanks();
	else
		hasEntryAfter	:= contents[posEnd] <> ";";
		contentsAfter	:= contents[posEnd+1:end].trimBlanks();
	endif;

	// join back together
	contentsBridge	:= " ";
	if hasEntryAfter = false then
		if hasNoMarker then
	
		elseif hasEntryBefore then
			contentsBefore[contentsBefore.length]	:= ";";
		else
			contentsBridge	:= ";";
		endif;
	endif;
	contents	:= contentsBefore & contentsBridge & contentsAfter;
end;
}

removeParameters
{
removeParameters( text : String ) updating, protected;

vars
	startPosition	: Integer;
	
begin
	startPosition := getHeaderEndPosition();
	
	while true do
		startPosition		:= startPosition - 1;
		startPosition		:= contents.reversePosIndex( " " & text, startPosition );
		if startPosition = 0 then
			break;
		endif;
	
		removeParameter(startPosition);
	endwhile;
end;
}

removeSetModifiedTime
{
removeSetModifiedTime() updating, protected;

vars
	pos		: Integer;
	
begin
	pos		:= getHeaderEndPosition();
	
	while true do
		pos		:= contents.reversePosIndex( Tab & "setModifiedTimeStamp ", pos );
		if pos = 0 then
			break;
		endif;
	
		removeLine( pos );
	endwhile;
end;

}

replaceJadeVersion
{
replaceJadeVersion() protected, updating;

vars
	endPos		: Integer;
	startPos	: Integer;
	
begin
	endPos		:= contents.pos( "schemaDefinition", 1 );
	startPos	:= contents.pos( 'jadeVersionNumber "', 1 );
	
	if startPos > 0 and startPos < endPos then
		startPos	:= contents.pos( '"', 1 );
		endPos		:= contents.pos( '"', startPos+1 );
		
		contents	:= contents[1:startPos] & '16.0.02' & contents[endPos:end];
	endif;
end;

}

	)
	ATVariableCollection (
	jadeMethodSources
add
{
add( entry : Any ) updating, abstract;
/*
	Add an entry
*/

}

at
{
at( index : Integer64 ): Any abstract;
/*
	Return the entry at the desired index
*/

}

clear
{
clear() updating;
/*
	Clears down the array
*/

begin
	lockEntry();

	allBytes.clear();
	allIndexLength.clear();
	allIndexStart.clear();
	
epilog
	lockExit();
end;
}

copy
{
copy( toColl : ATVariableCollection input );
/*
	Copies the contents of self to another VSA
*/

vars
	inx		: Integer64;
	entries	: Integer64;
	
begin
	entries		:= self.size;
	foreach inx in 1 to entries do
		toColl.add( self.at( inx ));
	endforeach;
end;
}

copyTo
{
copyTo( toColl : Collection input );
/*
	Copies the contents of self to a classic collection
*/
vars
	inx		: Integer64;
	entries	: Integer64;
	
begin
	entries		:= self.size;
	foreach inx in 1 to entries do
		toColl.add( self.at( inx ));
	endforeach;	
end;
}

display
{
display(): String;
/*
	Displays the contents of the array (debug purposes usually)
*/

vars
	inx		: Integer64;
	entries	: Integer64;
	entry	: String;
	result	: String;
	
begin
	entries		:= self.size;
	foreach inx in 1 to entries do
		entry	:= self.at( inx ).String;
		if entry = null then
			result	:= result & '<null>' & CrLf;
		else
			result	:= result & '"' & entry & '"' & CrLf;
		endif;		
	endforeach;
	result		:= "(" & CrLf & result & ")";
	return self.String & " size = " & size.String & CrLf & result;
end;
}

footPrint
{
footPrint(): Integer64;
/*
	Returns an estimate of the bytes in use
*/

vars

begin
	return allBytes.getLength() + allIndexLength.size*4 + allIndexStart.size*8;
end;
}

footPrintEstimateSet
{
footPrintEstimateSet( capacity : Integer64 );
/*
	Helps with performance and mem mgmt if we know the size of the JadeBytes we'll be populating (num entries x avg size)
*/
vars

begin
	allBytes.setExpectedLength( capacity );
end;
}

isEmpty
{
isEmpty(): Boolean;
/*
	Returns true if the array is empty
*/
vars

begin
	lockEntry();

	return allIndexStart.size = 0;
	
epilog	
	lockExit();
end;
}

isEqual
{
isEqual( collection : Object ): Boolean;
/*
	Returns true if the param collection has equal keys/items with self
*/

vars
	paramIter	: Iterator;
	vc			: ATVariableCollection;	
	nc			: Collection;
	na			: Array;
	selfSize	: Integer64;
	inx			: Integer64;
	any			: Any;
	
begin
	selfSize	:= self.size;

	if collection.isKindOf( ATVariableCollection ) then
		
		// both vc types
		vc			:= collection.ATVariableCollection;
		if selfSize <> vc.size then
			return false;
		endif;
		
		foreach inx in 1 to selfSize do
			if self.at(inx) <> vc.at(inx) then
				return false;
			endif;
		endforeach;
		
	elseif collection.isKindOf( Collection ) then
	
		// standard collection type
	
		nc	:= collection.Collection;
		if selfSize <> nc.size then
			return false;
		endif;
		if nc.isKindOf(Array) then
			na	:= nc.Array;
		endif;
		paramIter	:= nc.createIterator();
		while paramIter.next( any ) do
			inx		:= inx + 1;
			if na <> null then
				if self.at(inx) <> any then
					return false;
				endif;
			else
				if paramIter.getCurrentKey(1) <> self.at(inx) then
					return false;
				endif;
			endif;		
		endwhile;		
		
	else
		// unknown collection type
		return false;	
		
	endif;
	
	return true;	// identical
	
epilog
	delete paramIter;
end;
}

lockEntry
{
lockEntry() protected;

vars

begin
	if not isTransient then
		lock( self, Reserve_Lock, Transaction_Duration, LockTimeout_Server_Defined ); 
	endif;
end;

}

lockExit
{
lockExit() protected;

vars

begin
	unlock( self );
end;

}

parse
{
parse( line : String; delimiters : String ) updating;
/*
	Parses the line based on the delimiters provided and adds entries to the collection
*/

vars
	i		: Integer;
	len		: Integer;
	element	: String;

begin
	i	:= 1;
	len	:= line.length;
	if len = 0 then
		return;
	endif;
	
	while true do
		element	:= line.scanUntil( delimiters, i );
		self.add( element );
		
		if i = 0 then
			break;
		elseif i = len then
			self.add( "" );
			break;
		endif;
		i	:= i + 1;
	endwhile;
end;

}

rebuild
{
rebuild() updating;
/*
	Rebuilds the array which is useful if certain entries have been replaced or removed as there will be deadspace in the JadeBytes structure
*/
vars
	vc		: ATVariableCollection;
	
begin
	// copy to a temporary object
	create vc as self.class transient;
	self.copy( vc );
	
	// clear ours and copy back
	self.clear();
	vc.copy( self );
	
epilog
	delete vc;
end;
}

size
{
size(): Integer64;
/*
	Returns the number of entries
*/

vars

begin
	lockEntry();

	return allIndexStart.size64;
	
epilog
	lockExit();
end;
}

	)
	ATVariableStringArray (
	jadeMethodSources
add
{
add( entry : String ) updating;
/*
	Append an entry
*/

begin
	lockEntry();

	allIndexStart.add( allBytes.size64 + 1 );
	allIndexLength.add( entry.length );
	allBytes.appendData( entry.Binary );
	
epilog
	lockExit();
end;
}

at
{
at( index : Integer64 ): String;
/*
	Return the entry at the desired index
*/

vars
	
begin
	lockEntry();

	return allBytes.getData( allIndexStart.at(index), 
							 allIndexLength.at(index)).String;
							 
epilog
	lockExit();
end;
}

atPut
{
atPut( index : Integer; entry : String ) updating;
/*
	Replace the entry at the desired position
*/

constants
	ClearOldRecord = false;

vars
	currentEntryLength	: Integer;
	newEntryLength		: Integer;
	startPos			: Integer64;
	byte				: Character;
	inx					: Integer64;
	length				: Integer64;
	arraySize			: Integer64;
	
begin
	lockEntry();

	// may be able to treat as an add
	arraySize	:= size;
	if index > arraySize then
		length	:= allBytes.size64 + 1;
		foreach inx in arraySize + 1 to index - 1 do
			allIndexStart.atPut(inx, length );
			allIndexLength.atPut( inx, 0 );
		endforeach;
		add( entry );
		return;
	endif;

	// needs an insert
	startPos			:= allIndexStart[index];
	currentEntryLength	:= allIndexLength[index];
	newEntryLength		:= entry.length;
		
	if ClearOldRecord then
		if currentEntryLength > 0 then
			allBytes.putData( startPos, "".padBlanks(currentEntryLength).Binary );
		endif;
	endif;
		
	if newEntryLength <= currentEntryLength then
		// shortcut the approach, just replace the bytes inline
		if ClearOldRecord and currentEntryLength > 0 then
			allBytes.putData( startPos, "".padBlanks(currentEntryLength).Binary );	// could optimise further to only clear remaining portion
		endif;
		allIndexLength[index]	:= newEntryLength;
		allBytes.putData( startPos, entry.Binary );
	else
		// easiest just to add on the end
		if ClearOldRecord then
			allBytes.putData( startPos, "".padBlanks(currentEntryLength).Binary );
		endif;		
		length	:= allBytes.size64;
		allIndexStart[index]	:= length + 1;
		allIndexLength[index]	:= newEntryLength;
		allBytes.appendData( entry.Binary );
	endif;
	
epilog
	lockExit();
end;
}

includes
{
includes( entry : String ): Boolean;
/*
	Returns true if the entry exists in the array
*/

vars

begin
	lockEntry();

	return self.indexOf( entry ) > 0;
	
epilog
	lockExit();
end;
}

indexOf
{
indexOf( entry : String ): Integer64;
/*
	Returns the index position of the first entry in the array matching the param text
*/

vars
	inx		: Integer64;
	entries	: Integer64;
	
begin
	lockEntry();

	entries		:= self.size;
	foreach inx in 1 to entries do
		if entry = self.at( inx ) then
			return inx;
		endif;
	endforeach;
	return 0;	
	
epilog
	lockExit();
end;
}

insert
{
insert(index : Integer64; entry : String ) updating;
/*
	Places a new record in between two existing ones
*/

begin
	lockEntry();

	allIndexStart.insert( index, allBytes.size64 + 1 );
	allIndexLength.insert( index, entry.length );
	allBytes.appendData( entry.Binary );
	
epilog
	lockExit();
end;

}

remove
{
remove(entry : String) updating;
/*
	Removes all entries in the array matching the param
*/
vars
	inx		: Integer64;
	
begin
	inx		:= self.size;
	while inx > 0 do
		if entry = self.at( inx ) then
			self.removeAt( inx );
		endif;
		inx		:= inx - 1;
	endwhile;
end;
}

removeAt
{
removeAt(inx : Integer64): String updating;
/*
	Remove the entry from the array at the requested index position
*/
vars
	result 	: String;
	newEnd	: Integer64;
	
begin
	result	:= at( inx );

	// leave the bytes in there, unless its on the end
	allIndexStart.removeAt( inx );
	allIndexLength.removeAt( inx );

	lockEntry();
	
	if inx > 1 and inx > self.size then
		// is on the end, can shorten the bytes
		newEnd	:= allIndexStart.at(inx-1) + allIndexLength.at(inx-1);
		allBytes.truncate(newEnd);
	elseif self.size = 0 then
		allBytes.clear();
	endif;

	return result;
	
epilog
	lockExit();
end;
}

	)
	JadeScript (
	jadeMethodSources
cleanSchemaFile
{
cleanSchemaFile() protected;

constants
	PreserveOldFile = false;

vars
	fileCount	: Integer;
	filename	: String;
	fileRenamed	: String;
	fileFrom	: File;
	fileTo		: File;
	contents	: String;
	cleaner		: ATSchemaFileCleaner;
	cmdFile		: CMDFileOpen;
	
begin
	// select the file
	create cmdFile transient;
	cmdFile.filter				:= "Schemas(*.scm)|*.scm;*.cls";
	cmdFile.allowMultiSelect	:= true;
	if cmdFile.open() <> 0 then
		return;
	endif;
	
	// convert each file
	foreach fileCount in 1 to cmdFile.getMultiSelectCount() do
		filename	:= cmdFile.getMultiSelectDirectory() & "\" & cmdFile.getMultiSelectFileTitle(fileCount);
		fileRenamed	:= filename & ".scm";
	
		// move the original file
		create fileFrom transient;
		fileFrom.fileName	:= fileRenamed;
		if fileFrom.isAvailable() then
			fileFrom.purge();
		endif;
		fileFrom.fileName	:= filename;
		fileFrom.rename( fileRenamed );
		fileFrom.fileName	:= fileRenamed;
		fileFrom.open();
		contents	:= fileFrom.readString( fileFrom.fileLength() );
			
		// clean the file
		create cleaner transient;
		cleaner.contents	:= contents;
		cleaner.clean();
		
		// create the replacement file
		create fileTo transient;
		fileTo.fileName		:= filename;
		fileTo.open();
		fileTo.writeString( cleaner.contents );
		fileTo.commit();
		
		// remove old file
		if not PreserveOldFile then
			fileFrom.purge();
		endif;		
		
		delete fileFrom;
		delete fileTo;
		delete cleaner;
	endforeach;
	
epilog
	delete fileFrom;
	delete fileTo;
	delete cleaner;
end;

}

runTestsForEnvironmentCSV
{
runTestsForEnvironmentCSV() protected;

vars
	batch		: ATBatchController;
	finder		: ATLocator;
	csv			: ATBatchGenerateCSV;
	file		: ATFileLogger;
		
begin	
	app.clearWriteWindow();

	// find the tests
	create finder transient;
//	finder.sourceAnnotationsAvoid.add( '#ui' );
	finder.addSchema(rootSchema,true);

	// run the tests
	create batch transient;
	batch.skipUnsupportedSchemas	:= true;
	batch.workers	:= 5;
	finder.allMethods.copy( batch.allMethods );
	batch.execute();
	
	// output the tests
	create csv transient;
	csv.generate( batch.root );
	
		
	// write to file
	create file transient;
	file.initialise( "UnitTestsEnvironment.csv" );
	file.writeContents( csv.output );

epilog
	delete batch;
	delete csv;
	delete file;
	delete finder;
end;
}

runTestsForEnvironmentXML
{
runTestsForEnvironmentXML() protected;

vars
	batch		: ATBatchController;
	finder		: ATLocator;
	xml			: ATBatchGenerateXML;
	file		: ATFileWriter;
		
begin	
	app.clearWriteWindow();

	// find the tests
	create finder transient;
	finder.sourceAnnotationsAvoid.add( '#ui' );
	finder.addSchema(rootSchema,true);
	
	// run the tests
	create batch transient;
	batch.workers	:= 5;
	batch.skipUnsupportedSchemas	:= true;
	
	finder.allMethods.copy( batch.allMethods );
	batch.execute();
	
	// output the tests
	create xml transient;
	xml.generate( batch.root );

	// write to file
	create file transient;
	file.initialise( "d:\rubbish\unittests.xml" );
	file.writeContents( xml.output );

epilog
	delete batch;
	delete xml;
	delete file;
	delete finder;
end;
}

runTestsForSchemaCSV
{
runTestsForSchemaCSV() protected;

vars
	batch		: ATBatchController;
	finder		: ATLocator;
	csv			: ATBatchGenerateCSV;
	file		: ATFileLogger;
		
begin	
	app.clearWriteWindow();

	// find the tests
	create finder transient;
	finder.addSchema(currentSchema,false);

	// run the tests
	create batch transient;
	batch.skipUnsupportedSchemas	:= true;
	finder.allMethods.copy( batch.allMethods );
	batch.execute();
	
	// output the tests
	create csv transient;
	csv.generate( batch.root );
	
	// write to file
	create file transient;
	file.initialise( "UnitTestsSchema.csv" );
	file.writeContents( csv.output );

epilog
	delete batch;
	delete csv;
	delete file;
	delete finder;
end;
}

	)
	String (
	jadeMethodSources
atPrint
{
atPrint(params: ParamListType): String;

vars
	paramInx	: Integer;
	paramSize	: Integer;
	result		: String;
	fromText	: String;
	toText		: String;
	
begin
	result		:= self;
	paramSize 	:= app.getParamListTypeLength(params);
	foreach paramInx in 1 to paramSize do
		fromText	:= "%" & paramInx.String;
		toText 		:= app.getParamListTypeEntry(paramInx, params).String;	
		result		:= result.atReplace( fromText, toText );
	endforeach;
	return result;
end;
}

atReplace
{
atReplace( find, repl	: String ): String;

vars
	ret		: String;
	pos		: Integer;
	lenFind,
	lenRepl	: Integer;
	fn		: Boolean;
	
begin
	pos			:= self.pos( find, 1 );
	if pos > 0 then
		lenRepl		:= repl.length;
		lenFind		:= find.length;
		ret			:= self;
		while pos > 0 do
			ret		:= ret.atSubString( 1, pos - 1 ) & repl & ret.atSubString( pos + lenFind, Max_Integer );
			pos		:= ret.pos( find, pos + lenRepl );
		endwhile;					
		return ret;
	else
		return self;
	endif;
end;
}

atSubString
{
atSubString(startPos, endPos : Integer ): String;
	
begin
	if startPos > self.length() then
		return null;
	endif;
	
	return self[startPos : endPos - startPos + 1];
end;
}

	)
	IATBuilderCommands (
	jadeMethodSources
cloneObject
{
cloneObject( from   : Object )
				    : IATBuilderModify;
}

cloneObjectWithKey
{
cloneObjectWithKey( from   		: Object;
					propKeyChg	: Property;
					valueKeyChg	: Any )
								: IATBuilderModify;
}

lifetimeSetPersistent
{
lifetimeSetPersistent();
}

lifetimeSetTransient
{
lifetimeSetTransient();
}

make
{
make(classType    : Class
				 ): IATBuilderModify;
}

refine
{
refine(target : Object
			 ): IATBuilderModify;
}

result
{
result(): Object;
}

	)
	IATBuilderModify (
	jadeMethodSources
asString
{
asString(): String;
}

collAdd
{
collAdd( collProperty	: Property;
		 valueList		: ParamListType
					   ): IATBuilderModify;
}

collCopy
{
collCopy( collProperty	: Property;
		  values		: Collection
					   ): IATBuilderModify;
}

result
{
result(): Object;
}

set
{
set( property	: Property;
	 value		: Any 
			   ): IATBuilderModify;
}

setNull
{
setNull( property : Property ) 
				  : IATBuilderModify;
}

	)
	IATDatabaseCommands (
	jadeMethodSources
add
{
add( object : Object );
}

classCount
{
classCount( classType : Class
					 ): Integer;
}

classInstances
{
classInstances( classType			: Class;
				includeSubclasses 	: Boolean;
				coll 				: Collection input );
}

clear
{
clear();
}

get
{
get( classType 	: Class;			// class to find instance of 
	 instance  	: Integer;			// instance number
	 mustExist	: ParamListType		// set to false if you dont care whether null is returned, default is to assert
			   ): Object;			// instance found
}

getObject
{
getObject(  classType	: Class;
			instance	: Integer;
			object		: Any output );
			
}

includes
{
includes( object : Object ): Boolean;
}

instances
{
instances(): Collection;
}

purge
{
purge();
}

	)
	IATFixtureMaker (
	jadeMethodSources
clear
{
clear();	// clears the cache for a new function call
}

execute
{
execute( fixtureMethod : Method )	// method which will create fixture data
					   : Object;	// method can return a singleton
}

result
{
result(): Object;
}

	)
	IATFixtureMakerEvents (
	jadeMethodSources
fixtureBuilt
{
fixtureBuilt();
}

fixtureCleared
{
fixtureCleared();
}

fixtureStarted
{
fixtureStarted();
}

	)
	IATFixtureMakerRegistration (
	jadeMethodSources
register
{
register( currentMethod			: JadeMethod;
		  prerequisiteMethods	: ParamListType );
}

	)
	IATFixtureMakerTarget (
	jadeMethodSources
initialise
{
initialise( paramFixtureMaker 	: IATFixtureMakerRegistration;
			paramBuilder		: ATBuilder;
			paramSettings		: Object );
}

result
{
result(): Object;
}

	)
	IATGarbageCollector (
	jadeMethodSources
add
{
add( object : Object );
}

clear
{
clear();
}

purge
{
purge();
}

remove
{
remove( object : Object );
}

	)
	IATMockMethod (
	jadeMethodSources
doNothing
{
doNothing(): IATMockMethod;
}

raisesException
{
raisesException( errorCode	: Integer;
				 errorDesc	: String )
							: IATMockMethod;
}

returns
{
returns( any : Any ): IATMockMethod;
}

withSource
{
withSource( source : String )
				   : IATMockMethod;
}

	)
	IATRunner (
	jadeMethodSources
clear
{
clear();
}

execute
{
execute( mth : Method ): Object;
}

executeWithPrerequisites
{
executeWithPrerequisites( mainMethod			: JadeMethod;
						  prerequisiteMethods	: ParamListType );
}

	)
	IATRunnerTarget (
	jadeMethodSources
initialise
{
initialise( paramRunner 	: ATFixtureMaker;
			paramRepo		: ATDatabase;
			paramSettings	: Object );
}

result
{
result(): Object;
}

	)
