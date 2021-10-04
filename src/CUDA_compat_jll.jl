# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule CUDA_compat_jll
using Base
using Base: UUID
using LazyArtifacts
import JLLWrappers

JLLWrappers.@generate_main_file_header("CUDA_compat")
JLLWrappers.@generate_main_file("CUDA_compat", UUID("340b3129-3577-50c6-bc43-5dfc29cb9805"))
end  # module CUDA_compat_jll
