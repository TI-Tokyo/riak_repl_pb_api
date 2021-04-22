.PHONY: compile deps clean

DIALYZER_APPS = kernel stdlib sasl erts inets crypto

all: deps compile test

compile:
	@./rebar3 compile

deps:
	@./rebar3 get-deps

clean:
	@./rebar3 clean


include tools.mk
