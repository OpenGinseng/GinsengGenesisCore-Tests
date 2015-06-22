#!/bin/bash
# Source https://github.com/cadorn/bash.origin
. "$HOME/.bash.origin"
function init {
	eval BO_SELF_BASH_SOURCE="$BO_READ_SELF_BASH_SOURCE"
	BO_deriveSelfDir ___TMP___ "$BO_SELF_BASH_SOURCE"
	local __BO_DIR__="$___TMP___"


	pushd "$__BO_DIR__" > /dev/null
		"$__BO_DIR__/node_modules/pinf.sh/pinf.sh" \
			"https://github.com/OpenGinseng/GinsengGenesisCore/blob/master/smi.json" \
			"!$__BO_DIR__/../io.ginseng.genesis.open.core/PINF.proto.json"
	popd > /dev/null

}
init $@