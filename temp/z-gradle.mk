
tempGradleName ?= temp

tempTasks:
	./gradlew :$(tempGradleName):tasks

tempTasksAll:
	./gradlew :$(tempGradleName):tasks --all

tempDependencies:
	./gradlew :$(tempGradleName):dependencies

tempDependDefault:
	./gradlew :$(tempGradleName):dependencies --configuration default

tempDependCompileClasspath:
	./gradlew :$(tempGradleName):dependencies --configuration compileClasspath

tempDependentComponents:
	./gradlew :$(tempGradleName):dependentComponents

tempTest:
	./gradlew :$(tempGradleName):test

help-temp-gradle:
	@echo "=> $(tempGradleName)/z-gradle.mk : gradle $(tempGradleName) task"
	@echo "make tempTasks                  -> show task of $(tempGradleName)"
	@echo "make tempTasksAll               -> show all task of $(tempGradleName)"
	@echo "make tempDependencies           -> $(tempGradleName) full dependencies"
	@echo "make tempDependDefault          -> $(tempGradleName) dependencies of default"
	@echo "make tempDependCompileClasspath -> $(tempGradleName) dependencies of compileClasspath"
	@echo "make tempDependentComponents    -> $(tempGradleName) dependentComponents"
	@echo "make tempTest                   -> $(tempGradleName) test case"
	@echo ""