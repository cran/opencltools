## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# library(opencltools)
# 
# # Load a single kernel source file
# src <- load_kernel_source("OPENCL.cl")
# nchar(src)
# 
# # List available devices (requires runtime)
# if (has_opencl()) {
#   opencl_device_info()
#   gpu_names()
# }

