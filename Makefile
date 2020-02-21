
#####################################################################################################
COURSE=cs130wi20
ASGN=04
NAME=nano
STACK=stack --allow-different-user
BUILD_OPTS=--ghc-options -O0
#####################################################################################################

test: clean
	$(STACK) test $(BUILD_OPTS)

bin:
	$(STACK) build $(BUILD_OPTS)

clean:
	$(STACK) clean

distclean: clean
	rm -rf .stack-work

tags:
	hasktags -x -c src/

turnin:
	git commit -a -m "turnin"
	git push origin master

upstream:
	git remote add upstream https://github.com/ucsd-cse130/04-nano.git

update:
	git pull upstream master

ghci:
	$(STACK) exec -- ghci
