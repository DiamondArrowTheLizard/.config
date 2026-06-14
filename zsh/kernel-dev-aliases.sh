alias kernel-module-get-compile-commands="python /lib/modules/$(uname -r)/build/scripts/clang-tools/gen_compile_commands.py"
alias kernel-module-setup="make && kernel-module-get-compile-commands"
