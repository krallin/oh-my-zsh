function pwdgen(){
	if [ -z "$1" ]; then
		n_chars=10
	else
		n_chars=$1
	fi
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c $n_chars | xargs
}
