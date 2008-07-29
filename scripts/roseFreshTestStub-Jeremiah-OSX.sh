#!/bin/bash

# Stub file to include settings for roseFreshTest-common

export PATH=/Users/willcock2/fontconfig-install/bin/:/Users/willcock2/ghostscript-install/bin/:/Users/willcock2/latex2html-install/bin/:/Users/willcock2/texlive-install/2007/bin/i386-darwin/:/Users/willcock2/graphviz-install/bin:/Users/willcock2/doxygen-install/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export DYLD_LIBRARY_PATH=/Users/willcock2/boost-1.35-install/lib

ROSE_TOP="/Users/willcock2/svn-test-rose/$$/"

CONFIGURE_FLAGS=(--with-edg_source_code=true --disable-dq-developer-tests --with-ROSE_LONG_MAKE_CHECK_RULE=yes --with-CXX_DEBUG=-g --with-C_DEBUG=-g --with-CXX_WARNINGS=-Wall --with-CXXFLAGS=-fPIC --with-CFLAGS=-fPIC --prefix=${ROSE_TOP}/install --with-boost=${BOOST_ROOTX} "$@")

ROSE_SVNROOT=svn+ssh://tux269.llnl.gov/usr/casc/overture/ROSE/svn/ROSE/trunk/ROSE
MAILADDRS="willcock2@llnl.gov dquinlan@llnl.gov"

# the right version of subversion is essential!!
SVN=/usr/bin/svn

MAKEFLAGS="-j8 -w"

set -e
set -o pipefail
