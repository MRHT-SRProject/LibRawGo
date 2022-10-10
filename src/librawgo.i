%module librawgo
%{
/* Put headers and other declarations here */
#include <libraw/libraw.h>
extern libraw_data_t *init(unsigned int flags);

extern const char *version();

extern const char *strprogress(enum LibRaw_progress p);

extern int versionNumber();

extern const char **cameraList();

extern int cameraCount();

extern const char *unpack_function_name(libraw_data_t *lr);

extern int rotate_fuji_raw(libraw_data_t *lr);

extern void subtract_black(libraw_data_t *lr);

extern int add_masked_borders_to_bitmap(libraw_data_t *lr);

extern int open_file(libraw_data_t *lr, const char *file);

extern int open_file_ex(libraw_data_t *lr, const char *file, INT64 sz);

extern int open_buffer(libraw_data_t *lr, void *buffer, size_t size);

extern int unpack(libraw_data_t *lr);

extern int unpack_thumb(libraw_data_t *lr);

extern void recycle(libraw_data_t *lr);

extern void close(libraw_data_t *lr);

extern void set_memerror_handler(libraw_data_t *lr, memory_callback cb, void *data);

extern void set_dataerror_handler(libraw_data_t lr, data_callback func, void *data);

extern void set_progress_handler(libraw_data_t lr, progress_callback cb, void *data);

// DCRAW
extern int adjust_sizes_info_only(libraw_data_t *lr);

extern int dcraw_document_mode_processing(libraw_data_t *lr);

extern int dcraw_ppm_tiff_writer(libraw_data_t *lr, const char *filename);

extern int dcraw_thumb_writer(libraw_data_t *lr, const char *fname);

extern int dcraw_process(libraw_data_t *lr);

extern libraw_processed_image_t *dcraw_make_mem_image(libraw_data_t *lr, int *errc);

extern libraw_processed_image_t *dcraw_make_mem_thumb(libraw_data_t *lr, int *errc);

extern void dcraw_clear_mem(libraw_processed_image_t *p);%}




%include "librawgo.h"
extern libraw_data_t *init(unsigned int flags);

extern const char *version();

extern const char *strprogress(enum LibRaw_progress p);

extern int versionNumber();

extern const char **cameraList();

extern int cameraCount();

extern const char *unpack_function_name(libraw_data_t *lr);

extern int rotate_fuji_raw(libraw_data_t *lr);

extern void subtract_black(libraw_data_t *lr);

extern int add_masked_borders_to_bitmap(libraw_data_t *lr);

extern int open_file(libraw_data_t *lr, const char *file);

extern int open_file_ex(libraw_data_t *lr, const char *file, INT64 sz);

extern int open_buffer(libraw_data_t *lr, void *buffer, size_t size);

extern int unpack(libraw_data_t *lr);

extern int unpack_thumb(libraw_data_t *lr);

extern void recycle(libraw_data_t *lr);

extern void close(libraw_data_t *lr);

extern void set_memerror_handler(libraw_data_t *lr, memory_callback cb, void *data);

extern void set_dataerror_handler(libraw_data_t lr, data_callback func, void *data);

extern void set_progress_handler(libraw_data_t lr, progress_callback cb, void *data);

// DCRAW
extern int adjust_sizes_info_only(libraw_data_t *lr);

extern int dcraw_document_mode_processing(libraw_data_t *lr);

extern int dcraw_ppm_tiff_writer(libraw_data_t *lr, const char *filename);

extern int dcraw_thumb_writer(libraw_data_t *lr, const char *fname);

extern int dcraw_process(libraw_data_t *lr);

extern libraw_processed_image_t *dcraw_make_mem_image(libraw_data_t *lr, int *errc);

extern libraw_processed_image_t *dcraw_make_mem_thumb(libraw_data_t *lr, int *errc);

extern void dcraw_clear_mem(libraw_processed_image_t *p);