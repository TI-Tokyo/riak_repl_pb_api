.PHONY: compile deps clean distclean test dialyzer xref

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

test:
	$(REBAR) eunit

dialyzer:
	$(REBAR) dialyzer

xref:
	$(REBAR) xref

check: test dialyzer xref
