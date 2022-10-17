%{
// open.cpp
typedef struct foveon_data_t
{
   const char *make;
   const char *model;
   int raw_width, raw_height;
   int white;
   int left_margin, top_margin;
   int width, height;
} foveon_data_t; 

foveon_data_t foveon_data[] = {
    {"Sigma", "SD9", 2304, 1531, 12000, 20, 8, 2266, 1510},
    {"Sigma", "SD9", 1152, 763, 12000, 10, 2, 1132, 755},
    {"Sigma", "SD10", 2304, 1531, 12000, 20, 8, 2266, 1510},
    {"Sigma", "SD10", 1152, 763, 12000, 10, 2, 1132, 755},
    {"Sigma", "SD14", 2688, 1792, 14000, 18, 12, 2651, 1767},
    {"Sigma", "SD14", 2688, 896, 14000, 18, 6, 2651, 883}, // 2/3
    {"Sigma", "SD14", 1344, 896, 14000, 9, 6, 1326, 883},  // 1/2
    {"Sigma", "SD15", 2688, 1792, 2900, 18, 12, 2651, 1767},
    {"Sigma", "SD15", 2688, 896, 2900, 18, 6, 2651, 883}, // 2/3 ?
    {"Sigma", "SD15", 1344, 896, 2900, 9, 6, 1326, 883},  // 1/2 ?
    {"Sigma", "DP1", 2688, 1792, 2100, 18, 12, 2651, 1767},
    {"Sigma", "DP1", 2688, 896, 2100, 18, 6, 2651, 883}, // 2/3 ?
    {"Sigma", "DP1", 1344, 896, 2100, 9, 6, 1326, 883},  // 1/2 ?
    {"Sigma", "DP1S", 2688, 1792, 2200, 18, 12, 2651, 1767},
    {"Sigma", "DP1S", 2688, 896, 2200, 18, 6, 2651, 883}, // 2/3
    {"Sigma", "DP1S", 1344, 896, 2200, 9, 6, 1326, 883},  // 1/2
    {"Sigma", "DP1X", 2688, 1792, 3560, 18, 12, 2651, 1767},
    {"Sigma", "DP1X", 2688, 896, 3560, 18, 6, 2651, 883}, // 2/3
    {"Sigma", "DP1X", 1344, 896, 3560, 9, 6, 1326, 883},  // 1/2
    {"Sigma", "DP2", 2688, 1792, 2326, 13, 16, 2651, 1767},
    {"Sigma", "DP2", 2688, 896, 2326, 13, 8, 2651, 883}, // 2/3 ??
    {"Sigma", "DP2", 1344, 896, 2326, 7, 8, 1325, 883},  // 1/2 ??
    {"Sigma", "DP2S", 2688, 1792, 2300, 18, 12, 2651, 1767},
    {"Sigma", "DP2S", 2688, 896, 2300, 18, 6, 2651, 883}, // 2/3
    {"Sigma", "DP2S", 1344, 896, 2300, 9, 6, 1326, 883},  // 1/2
    {"Sigma", "DP2X", 2688, 1792, 2300, 18, 12, 2651, 1767},
    {"Sigma", "DP2X", 2688, 896, 2300, 18, 6, 2651, 883},           // 2/3
    {"Sigma", "DP2X", 1344, 896, 2300, 9, 6, 1325, 883},            // 1/2
    {"Sigma", "SD1", 4928, 3264, 3900, 12, 52, 4807, 3205},         // Full size
    {"Sigma", "SD1", 4928, 1632, 3900, 12, 26, 4807, 1603},         // 2/3 size
    {"Sigma", "SD1", 2464, 1632, 3900, 6, 26, 2403, 1603},          // 1/2 size
    {"Sigma", "SD1 Merrill", 4928, 3264, 3900, 12, 52, 4807, 3205}, // Full size
    {"Sigma", "SD1 Merrill", 4928, 1632, 3900, 12, 26, 4807, 1603}, // 2/3 size
    {"Sigma", "SD1 Merrill", 2464, 1632, 3900, 6, 26, 2403, 1603},  // 1/2 size
    {"Sigma", "DP1 Merrill", 4928, 3264, 3900, 12, 0, 4807, 3205},
    {"Sigma", "DP1 Merrill", 2464, 1632, 3900, 12, 0, 2403, 1603}, // 1/2 size
    {"Sigma", "DP1 Merrill", 4928, 1632, 3900, 12, 0, 4807, 1603}, // 2/3 size
    {"Sigma", "DP2 Merrill", 4928, 3264, 3900, 12, 0, 4807, 3205},
    {"Sigma", "DP2 Merrill", 2464, 1632, 3900, 12, 0, 2403, 1603}, // 1/2 size
    {"Sigma", "DP2 Merrill", 4928, 1632, 3900, 12, 0, 4807, 1603}, // 2/3 size
    {"Sigma", "DP3 Merrill", 4928, 3264, 3900, 12, 0, 4807, 3205},
    {"Sigma", "DP3 Merrill", 2464, 1632, 3900, 12, 0, 2403, 1603}, // 1/2 size
    {"Sigma", "DP3 Merrill", 4928, 1632, 3900, 12, 0, 4807, 1603}, // 2/3 size
    {"Polaroid", "x530", 1440, 1088, 2700, 10, 13, 1419, 1059},
    // dp2 Q
    {"Sigma", "dp3 Quattro", 5888, 3776, 16383, 204, 76, 5446,
     3624}, // full size, new fw ??
    {"Sigma", "dp3 Quattro", 5888, 3672, 16383, 204, 24, 5446,
     3624}, // full size
    {"Sigma", "dp3 Quattro", 2944, 1836, 16383, 102, 12, 2723,
     1812}, // half size
    {"Sigma", "dp3 Quattro", 2944, 1888, 16383, 102, 38, 2723,
     1812}, // half size, new fw??

    {"Sigma", "dp2 Quattro", 5888, 3776, 16383, 204, 76, 5446,
     3624}, // full size, new fw
    {"Sigma", "dp2 Quattro", 5888, 3672, 16383, 204, 24, 5446,
     3624}, // full size
    {"Sigma", "dp2 Quattro", 2944, 1836, 16383, 102, 12, 2723,
     1812}, // half size
    {"Sigma", "dp2 Quattro", 2944, 1888, 16383, 102, 38, 2723,
     1812}, // half size, new fw

    {"Sigma", "dp1 Quattro", 5888, 3776, 16383, 204, 76, 5446,
     3624}, // full size, new fw??
    {"Sigma", "dp1 Quattro", 5888, 3672, 16383, 204, 24, 5446,
     3624}, // full size
    {"Sigma", "dp1 Quattro", 2944, 1836, 16383, 102, 12, 2723,
     1812}, // half size
    {"Sigma", "dp1 Quattro", 2944, 1888, 16383, 102, 38, 2723,
     1812}, // half size, new fw

    {"Sigma", "dp0 Quattro", 5888, 3776, 16383, 204, 76, 5446,
     3624}, // full size, new fw??
    {"Sigma", "dp0 Quattro", 5888, 3672, 16383, 204, 24, 5446,
     3624}, // full size
    {"Sigma", "dp0 Quattro", 2944, 1836, 16383, 102, 12, 2723,
     1812}, // half size
    {"Sigma", "dp0 Quattro", 2944, 1888, 16383, 102, 38, 2723,
     1812}, // half size, new fw
    // Sigma sd Quattro
    {"Sigma", "sd Quattro", 5888, 3776, 16383, 204, 76, 5446,
     3624}, // full size
    {"Sigma", "sd Quattro", 2944, 1888, 16383, 102, 38, 2723,
     1812}, // half size
    // Sd Quattro H
    {"Sigma", "sd Quattro H", 6656, 4480, 4000, 224, 160, 6208,
     4160}, // full size
    {"Sigma", "sd Quattro H", 3328, 2240, 4000, 112, 80, 3104,
     2080},                                                        // half size
    {"Sigma", "sd Quattro H", 5504, 3680, 4000, 0, 4, 5496, 3668}, // full size
    {"Sigma", "sd Quattro H", 2752, 1840, 4000, 0, 2, 2748, 1834}, // half size
    


};
const int foveon_count = sizeof(foveon_data) / sizeof(foveon_data[0]);
static void cleargps(libraw_gps_info_t *q)
{
  for (int i = 0; i < 3; i++)
    q->latitude[i] = q->longitude[i] = q->gpstimestamp[i] = 0.f;
  q->altitude = 0.f;
  q->altref = q->latref = q->longref = q->gpsstatus = q->gpsparsed = 0;
}
void x3f_clear(void *);
%}

%include "utils_libraw.cpp"
%include "init_close_utils.cpp"
%include "decoder_info.cpp"
%include "open.cpp"
%include "phaseone_processing.cpp"
%include "thumb_utils.cpp"