#!/bin/bash
# Source https://github.com/cadorn/bash.origin
. "$HOME/.bash.origin"
function init {
	eval BO_SELF_BASH_SOURCE="$BO_READ_SELF_BASH_SOURCE"
	BO_deriveSelfDir ___TMP___ "$BO_SELF_BASH_SOURCE"
	local __BO_DIR__="$___TMP___"


	if [ -f "bin/clean" ]; then
		bin/clean || true
	fi

	rm -Rf "bin" > /dev/null || true
	rm -Rf "etc" > /dev/null || true
	rm -Rf ".deps" > /dev/null || true
	rm -Rf ".pinf" > /dev/null || true
	rm -Rf ".pgs" > /dev/null || true
	rm -Rf "boot" > /dev/null || true
	rm -Rf *.local.json > /dev/null || true

	rm -Rf ".cleanignore" > /dev/null || true
	rm -Rf ".distignore" > /dev/null || true
	rm -Rf "io.ginseng.genesis.open.core.tests.inf" > /dev/null || true
	rm -Rf "io.ginseng.genesis.open.core.tests.inf.js" > /dev/null || true
	rm -Rf "program.json" > /dev/null || true
	rm -Rf "smi.json" > /dev/null || true
	rm -Rf "vortex.js" > /dev/null || true
	rm -Rf "WORKSPACE.md" > /dev/null || true

}
init $@