%insert(cgo_comment) %{
#cgo LDFLAGS: -L ${SRCDIR} -lrawgo -lraw
%}

%module librawgo
%{
/* Put headers and other declarations here */
#ifndef __cplusplus
#define __cplusplus 201402L
#endif
#include "internal/libraw_cxx_defs.h"
#include "libraw/libraw_alloc.h"
#include "libraw/libraw_datastream.h"
#include "libraw/libraw_internal.h"
#include "libraw/libraw_types.h"
#include "libraw/libraw_version.h"
#include "libraw/libraw.h"

%}

%include "libraw/libraw_alloc.h"
%include "libraw/libraw_datastream.h"
%include "libraw/libraw_internal.h"
%include "libraw/libraw_types.h"
%include "libraw/libraw_version.h"
%include "libraw/libraw.h"

%include "libraw_datastream.cpp"
%include "tables/tables.i"
%include "decoders/decoders.i"

%include "integration/integration.i"
%include "utils/utils.i"

%include "write/write.i"
%include "preprocessing/preprocessing.i"
%include "postprocessing/postprocessing.i"


