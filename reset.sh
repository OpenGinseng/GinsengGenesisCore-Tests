#!/bin/bash
# Source https://github.com/cadorn/bash.origin
. "$HOME/.bash.origin"
function init {
	eval BO_SELF_BASH_SOURCE="$BO_READ_SELF_BASH_SOURCE"
	BO_deriveSelfDir ___TMP___ "$BO_SELF_BASH_SOURCE"
	local __BO_DIR__="$___TMP___"


	rm -Rf "bin" > /dev/null || true
	rm -Rf "etc" > /dev/null || true
	rm -Rf ".deps" > /dev/null || true
	rm -Rf ".pinf" > /dev/null || true
	rm -Rf ".pgs" > /dev/null || true
	rm -Rf "boot" > /dev/null || true
	rm -Rf *.local.json > /dev/null || true

}
init $@