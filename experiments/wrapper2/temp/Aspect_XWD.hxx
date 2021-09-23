# 1 "/usr/include/opencascade/Aspect_XWD.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Aspect_XWD.hxx"
# 18 "/usr/include/opencascade/Aspect_XWD.hxx"
# 1 "/usr/include/X11/XWDFile.h" 1 3 4
# 41 "/usr/include/X11/XWDFile.h" 3 4
# 1 "/usr/include/X11/Xmd.h" 1 3 4
# 97 "/usr/include/X11/Xmd.h" 3 4

# 97 "/usr/include/X11/Xmd.h" 3 4
typedef long INT64;
typedef int INT32;



typedef short INT16;

typedef signed char INT8;


typedef unsigned long CARD64;
typedef unsigned int CARD32;




typedef unsigned short CARD16;
typedef unsigned char CARD8;

typedef CARD32 BITS32;
typedef CARD16 BITS16;

typedef CARD8 BYTE;
typedef CARD8 BOOL;
# 42 "/usr/include/X11/XWDFile.h" 2 3 4





typedef CARD32 xwdval;



typedef struct _xwd_file_header {


 CARD32 header_size;

 CARD32 file_version;
 CARD32 pixmap_format;
 CARD32 pixmap_depth;
 CARD32 pixmap_width;
 CARD32 pixmap_height;
 CARD32 xoffset;
 CARD32 byte_order;



 CARD32 bitmap_unit;

 CARD32 bitmap_bit_order;



 CARD32 bitmap_pad;

 CARD32 bits_per_pixel;




 CARD32 bytes_per_line;
 CARD32 visual_class;
 CARD32 red_mask;
 CARD32 green_mask;
 CARD32 blue_mask;
 CARD32 bits_per_rgb;
 CARD32 colormap_entries;
 CARD32 ncolors;
 CARD32 window_width;
 CARD32 window_height;
 CARD32 window_x;
 CARD32 window_y;
 CARD32 window_bdrwidth;
} XWDFileHeader;
# 101 "/usr/include/X11/XWDFile.h" 3 4
typedef struct {
        CARD32 pixel;
        CARD16 red;
        CARD16 green;
        CARD16 blue;
        CARD8 flags;
        CARD8 pad;
} XWDColor;
# 19 "/usr/include/opencascade/Aspect_XWD.hxx" 2
