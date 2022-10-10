#include <libraw/libraw.h>

libraw_data_t *init(unsigned int flags)
{
    return libraw_init(flags);
}

const char *version()
{
    return libraw_version();
}

const char *strprogress(enum LibRaw_progress p)
{
    return libraw_strprogress(p);
}

int versionNumber()
{
    return libraw_versionNumber();
}

const char **cameraList()
{
    return libraw_cameraList();
}

int cameraCount()
{
    return libraw_cameraCount();
}

const char *unpack_function_name(libraw_data_t *lr)
{
    return libraw_unpack_function_name(lr);
}

int rotate_fuji_raw(libraw_data_t *lr)
{
    return libraw_rotate_fuji_raw(lr);
}

void subtract_black(libraw_data_t *lr)
{
    return libraw_subtract_black(lr);
}

int add_masked_borders_to_bitmap(libraw_data_t *lr)
{
    return libraw_add_masked_borders_to_bitmap(lr);
}

int open_file(libraw_data_t *lr, const char *file)
{
    return libraw_open_file(lr, file);
}

int open_file_ex(libraw_data_t *lr, const char *file, INT64 sz)
{
    return libraw_open_file_ex(lr, file, sz);
}

int open_buffer(libraw_data_t *lr, void *buffer, size_t size)
{
    return libraw_open_buffer(lr, buffer, size);
}

int unpack(libraw_data_t *lr)
{
    return libraw_unpack(lr);
}

int unpack_thumb(libraw_data_t *lr)
{
    return libraw_unpack_thumb(lr);
}

void recycle(libraw_data_t *lr)
{
    libraw_recycle(lr);
}

void close(libraw_data_t *lr)
{
    libraw_close(lr);
}

void set_memerror_handler(libraw_data_t *lr, memory_callback cb, void *data)
{
    libraw_set_memerror_handler(lr, cb, data);
}

void set_dataerror_handler(libraw_data_t *lr, data_callback func, void *data)
{
    libraw_set_dataerror_handler(lr, func, data);
}

void set_progress_handler(libraw_data_t *lr, progress_callback cb, void *data)
{
    libraw_set_progress_handler(lr, cb, data);
}

// DCRAW
int adjust_sizes_info_only(libraw_data_t *lr)
{
    return libraw_adjust_sizes_info_only(lr);
}

int dcraw_document_mode_processing(libraw_data_t *lr)
{
    return libraw_dcraw_document_mode_processing(lr);
}

int dcraw_ppm_tiff_writer(libraw_data_t *lr, const char *filename)
{
    return libraw_dcraw_ppm_tiff_writer(lr, filename);
}

int dcraw_thumb_writer(libraw_data_t *lr, const char *fname)
{
    return libraw_dcraw_thumb_writer(lr, fname);
}

int dcraw_process(libraw_data_t *lr)
{
    return libraw_dcraw_process(lr);
}

libraw_processed_image_t *dcraw_make_mem_image(libraw_data_t *lr, int *errc)
{
    return libraw_dcraw_make_mem_image(lr, errc);
}

libraw_processed_image_t *dcraw_make_mem_thumb(libraw_data_t *lr, int *errc)
{
    return libraw_dcraw_make_mem_thumb(lr, errc);
}

void dcraw_clear_mem(libraw_processed_image_t *p)
{
    libraw_dcraw_clear_mem(p);
}