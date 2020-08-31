####################################################################
# Generated host-config - Edit at own risk!
####################################################################
# Copyright (c) 2019-2020, Lawrence Livermore National Security, LLC and
# other Serac Project Developers. See the top-level LICENSE file for
# details.
#
# SPDX-License-Identifier: (BSD-3-Clause) 
####################################################################

#---------------------------------------
# SYS_TYPE: blueos_3_ppc64le_ib_p9
# Compiler Spec: clang@upstream_gfortran
# CMake executable path: /usr/tce/packages/cmake/cmake-3.18.0/bin/cmake
#---------------------------------------

#---------------------------------------
# Compilers
#---------------------------------------
set(CMAKE_C_COMPILER "/usr/tce/packages/clang/clang-upstream-2019.08.15/bin/clang" CACHE PATH "")

set(CMAKE_CXX_COMPILER "/usr/tce/packages/clang/clang-upstream-2019.08.15/bin/clang++" CACHE PATH "")

set(CMAKE_C_FLAGS "--gcc-toolchain=/usr/tce/packages/gcc/gcc-8.3.1" CACHE PATH "")

set(CMAKE_CXX_FLAGS "--gcc-toolchain=/usr/tce/packages/gcc/gcc-8.3.1" CACHE PATH "")

set(BLT_EXE_LINKER_FLAGS " -Wl,-rpath,/usr/tce/packages/gcc/gcc-8.3.1/lib" CACHE PATH "Adds a missing libstdc++ rpath")

#------------------------------------------------------------------------------
# Cuda
#------------------------------------------------------------------------------

set(ENABLE_CUDA ON CACHE BOOL "")

set(CUDA_TOOLKIT_ROOT_DIR "/usr/tce/packages/cuda/cuda-11.0.182" CACHE PATH "")

set(CMAKE_CUDA_COMPILER "${CUDA_TOOLKIT_ROOT_DIR}/bin/nvcc" CACHE PATH "")

set(CMAKE_CUDA_FLAGS "-arch sm_70 --gcc-toolchain=/usr/tce/packages/gcc/gcc-8.3.1" CACHE STRING "")

set(CMAKE_CUDA_ARCHITECTURES "70" CACHE STRING "")

set(BLT_CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES_EXCLUDE "/usr/tce/packages/gcc/gcc-4.9.3/lib64/gcc/powerpc64le-unknown-linux-gnu/4.9.3;/usr/tce/packages/gcc/gcc-4.9.3/lib64" CACHE STRING "")

#---------------------------------------
# MPI
#---------------------------------------
set(ENABLE_MPI "ON" CACHE PATH "")

set(MPI_C_COMPILER "/usr/tce/packages/mvapich2/mvapich2-2020.01.09-clang-ibm-2019.10.03/bin/mpicc" CACHE PATH "")

set(MPI_CXX_COMPILER "/usr/tce/packages/mvapich2/mvapich2-2020.01.09-clang-ibm-2019.10.03/bin/mpicxx" CACHE PATH "")

#---------------------------------------
# Library Dependencies
#---------------------------------------
set(TPL_ROOT "/usr/WS2/smithdev/libs/blueos_3_ppc64le_ib_p9/2020_08_27_11_50_19/clang-upstream_gfortran" CACHE PATH "")

set(AXOM_DIR "${TPL_ROOT}/axom-develop" CACHE PATH "")

set(CONDUIT_DIR "${TPL_ROOT}/conduit-master" CACHE PATH "")

set(HDF5_DIR "${TPL_ROOT}/hdf5-1.8.21" CACHE PATH "")

set(HYPRE_DIR "${TPL_ROOT}/hypre-2.18.2" CACHE PATH "")

set(METIS_DIR "${TPL_ROOT}/metis-5.1.0" CACHE PATH "")

set(PARMETIS_DIR "${TPL_ROOT}/parmetis-4.0.3" CACHE PATH "")

set(SUPERLUDIST_DIR "${TPL_ROOT}/superlu-dist-5.4.0" CACHE PATH "")

set(MFEM_DIR "${TPL_ROOT}/mfem-4.1.0p1" CACHE PATH "")

#------------------------------------------------------------------------------
# Devtools
#------------------------------------------------------------------------------

# Root directory for generated developer tools
set(DEVTOOLS_ROOT "/usr/WS2/smithdev/devtools/blueos_3_ppc64le_ib_p9/2020_08_31_12_14_52/gcc-8.3.1/" CACHE PATH "")

set(ENABLE_DOCS ON CACHE BOOL "")

set(DOXYGEN_EXECUTABLE "${DEVTOOLS_ROOT}/doxygen-1.8.17/bin/doxygen" CACHE PATH "")

set(SPHINX_EXECUTABLE "/usr/tce/packages/python/python-3.8.2/bin/sphinx-build" CACHE PATH "")

set(CLANGFORMAT_EXECUTABLE "/usr/tce/packages/clang/clang-9.0.0/bin/clang-format" CACHE PATH "")

set(CPPCHECK_EXECUTABLE "${DEVTOOLS_ROOT}/cppcheck-1.87/bin/cppcheck" CACHE PATH "")
