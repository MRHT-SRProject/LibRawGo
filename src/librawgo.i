%module librawgo
%{
/* Put headers and other declarations here */
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

%include "integration/dngsdk_glue.cpp"
%include "integration/rawspeed_glue.cpp"

%include "tables/colorconst.cpp"
%include "utils/utils_libraw.cpp"
%include "utils/init_close_utils.cpp"
%include "utils/decoder_info.cpp"
%include "utils/open.cpp"
%include "utils/phaseone_processing.cpp"
%include "utils/thumb_utils.cpp"

%include "write/tiff_writer.cpp"
%include "preprocessing/subtract_black.cpp"
%include "preprocessing/raw2image.cpp"
%include "postprocessing/postprocessing_utils.cpp"
%include "postprocessing/dcraw_process.cpp"
%include "postprocessing/mem_image.cpp"


