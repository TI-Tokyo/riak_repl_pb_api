.PHONY: compile deps clean

REBAR ?= ./rebar3
all: deps compile

compile:
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

clean:
	@$(REBAR) clean

distclean:
	@$(REBAR) clean -a

