.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

include z-gradle-base.mk
include temp/z-gradle.mk

help: helpGradleBase help-temp-gradle
	@echo "more task see makefile!"
