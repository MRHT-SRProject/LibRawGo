%{
// crxFns
int crxDecodeLine(CrxBandParam *param);
int crxDecodeLineRounded(CrxBandParam *param);
int crxDecodeLineNoRefPrevLine(CrxBandParam *param);
int crxDecodeTopLine(CrxBandParam *param);
int crxDecodeTopLineRounded(CrxBandParam *param);
int crxDecodeTopLineNoRefPrevLine(CrxBandParam *param);
int crxDecodeLine(CrxBandParam *param, uint8_t *bandBuf);
int crxDecodeLineWithIQuantization(CrxSubband *subband);
void crxHorizontal53(int32_t *lineBufLA, int32_t *lineBufLB,
                     CrxWaveletTransform *wavelet, uint32_t tileFlag);
int32_t *crxIdwt53FilterGetLine(CrxPlaneComp *comp, int32_t level);
int crxIdwt53FilterDecode(CrxPlaneComp *comp, int32_t level);
int crxIdwt53FilterTransform(CrxPlaneComp *comp, uint32_t level);
int crxIdwt53FilterInitialize(CrxPlaneComp *comp, int32_t prevLevel);
void crxFreeSubbandData(CrxImage *image, CrxPlaneComp *comp);
void crxConvertPlaneLine(CrxImage *img, int imageRow, int imageCol = 0,
                         int plane = 0, int32_t *lineData = 0,
                         int lineLength = 0);
int crxParamInit(
#ifdef LIBRAW_CR3_MEMPOOL
	libraw_memmgr&  mm,
#endif	
	CrxBandParam **param, uint64_t subbandMdatOffset,
                 uint64_t subbandDataSize, uint32_t subbandWidth,
                 uint32_t subbandHeight, int32_t supportsPartial,
                 uint32_t roundedBitsMask, LibRaw_abstract_datastream *input);
int crxSetupSubbandData(CrxImage *img, CrxPlaneComp *planeComp,
                        const CrxTile *tile, uint32_t mdatOffset);
int crxReadSubbandHeaders(crx_data_header_t *hdr, CrxImage *img, CrxTile *tile,
                          CrxPlaneComp *comp, uint8_t **subbandMdatPtr,
                          int32_t *hdrSize);
int crxReadImageHeaders(crx_data_header_t *hdr, CrxImage *img, uint8_t *mdatPtr,
                        int32_t hdrBufSize);
int crxSetupImageData(crx_data_header_t *hdr, CrxImage *img, int16_t *outBuf,
                      uint64_t mdatOffset, uint32_t mdatSize, int32_t hdrBufSize,
                      uint8_t *mdatHdrPtr);
int crxFreeImageData(CrxImage *img);

#define libraw_inline inline __attribute__((always_inline))
#elif defined(_MSC_VER) && _MSC_VER > 1400
#define libraw_inline __forceinline
#else
#define libraw_inline inline
#endif

// this should be divisible by 4
#define CRX_BUF_SIZE 0x10000
#if !defined(_WIN32) || (defined (__GNUC__) && !defined(__INTRINSIC_SPECIAL__BitScanReverse))  
/* __INTRINSIC_SPECIAL__BitScanReverse found in MinGW32-W64 v7.30 headers, may be there is a better solution? */
typedef uint32_t DWORD;
libraw_inline void _BitScanReverse(DWORD *Index, unsigned long Mask)
static inline void crxFillBuffer(CrxBitstream *bitStrm)
libraw_inline int crxBitstreamGetZeros(CrxBitstream *bitStrm)
libraw_inline uint32_t crxBitstreamGetBits(CrxBitstream *bitStrm, int bits)
libraw_inline int crxPredictKParameter(int32_t prevK, int32_t bitCode,
                                       int32_t maxVal = 0)
libraw_inline void crxDecodeSymbolL1(CrxBandParam *param,
                                     int32_t doMedianPrediction,
                                     int32_t notEOL = 0)
libraw_inline void crxDecodeSymbolL1Rounded(CrxBandParam *param,
                                            int32_t doSym = 1,
                                            int32_t doCode = 1)

// fuji
static inline void fuji_fill_buffer(struct fuji_compressed_block *info);
static inline void fuji_zerobits(struct fuji_compressed_block *info, int *count);
static inline void fuji_read_code(struct fuji_compressed_block *info, int *data,
                                  int bits_to_read);
static inline int bitDiff(int value1, int value2);
static inline int
fuji_decode_sample_even(struct fuji_compressed_block *info,
                        const struct fuji_compressed_params *params,
                        ushort *line_buf, int pos, struct int_pair *grads);
static inline int
fuji_decode_sample_odd(struct fuji_compressed_block *info,
                       const struct fuji_compressed_params *params,
                       ushort *line_buf, int pos, struct int_pair *grads);                                          

%}

%include "fuji_compressed.cpp"
%include "crx.cpp"
%include "fp_dng.cpp"
%include "decoders_libraw.cpp"
%include "unpack.cpp"
%include "unpack_thumb.cpp"