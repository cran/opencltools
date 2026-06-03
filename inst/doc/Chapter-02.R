## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval = FALSE------------------------------------------------------
# library(opencltools)

## ----eval = FALSE-------------------------------------------------------------
# # Load the global configuration preamble
# opencl_cl <- load_kernel_source("OPENCL.cl", package = "nmathopencl")
# 
# # Load a specific kernel
# f2_src <- load_kernel_source("src/f2_f3_gaussian.cl", package = "nmathopencl")

## ----eval = FALSE-------------------------------------------------------------
# # Load one of nmathopencl's dependency layers
# nmath_src <- load_kernel_library("nmath", package = "nmathopencl")

## ----eval = FALSE-------------------------------------------------------------
# library(opencltools)
# pkg <- "nmathopencl"
# 
# all_src <- paste(
#   load_kernel_source("OPENCL.cl"),
#   load_kernel_library("libR_shims",      package = pkg),
#   load_kernel_library("R_ext_types",     package = pkg),
#   load_kernel_library("R_shims",         package = pkg),
#   load_kernel_library("R_ext_runtime",   package = pkg),
#   load_kernel_library("R_ext_internals", package = pkg),
#   load_kernel_library("System",          package = pkg),
#   load_kernel_library("nmath",           package = pkg),
#   load_kernel_source("src/f2_f3_gaussian.cl", package = pkg),
#   sep = "\n"
# )

## ----eval = FALSE-------------------------------------------------------------
# nmath_dir   <- system.file("cl/nmath", package = "nmathopencl")
# kernel_path <- system.file("cl/src/f2_f3_gaussian.cl", package = "nmathopencl")
# 
# # Returns only the nmath shards the gaussian kernel needs (dnorm + its deps)
# nmath_subset <- load_library_for_kernel(
#   kernel_path,
#   library_dir = nmath_dir,
#   depends_tag = "all_depends_nmath"
# )
# # Warnings fire automatically for any stems with known portability issues

## ----eval = FALSE-------------------------------------------------------------
# nmath_dir <- system.file("cl/nmath", package = "nmathopencl")
# 
# attach_kernel_call_tags(
#   kernel_paths = list.files("inst/cl/src", "\\.cl$", full.names = TRUE),
#   library_dir  = nmath_dir,
#   library_tag  = "nmath"
# )

## ----eval = FALSE-------------------------------------------------------------
# attach_cross_library_tags(
#   kernel_paths = list.files("inst/cl/src", "\\.cl$", full.names = TRUE),
#   library_dir  = nmath_dir,
#   depends_tag  = "depends_nmath"
# )

## ----eval = FALSE-------------------------------------------------------------
# write_kernel_dependency_index(
#   library_dir = "inst/cl/nmath",
#   output_dir  = "inst/cl/nmath"
# )

