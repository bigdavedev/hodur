macro (hodur_enable_santizers)
    target_compile_options (
		hodur_compiler_options

		INTERFACE
		$<$<CXX_COMPILER_ID:Clang>:-fsanitize=address,undefined>
	)

    target_link_options (
		hodur_compiler_options

		INTERFACE
		$<$<CXX_COMPILER_ID:Clang>:-fsanitize=address,undefined>
	)
endmacro ()
