type
  Int64* = clong
  Int32* = cint
  Int16* = cshort
  Int8* = cchar
  Card64* = culong
  Card32* = cuint
  Card16* = cushort
  Card8* = cuchar
  Bits32* = Card32
  Bits16* = Card16
  Byte* = Card8
  Bool* = Card8
  Xwdval* = Card32
  XWDFileHeader* {.importcpp: "XWDFileHeader", header: "Aspect_XWD.hxx", bycopy.} = object
    headerSize* {.importc: "header_size".}: Card32
    fileVersion* {.importc: "file_version".}: Card32
    pixmapFormat* {.importc: "pixmap_format".}: Card32
    pixmapDepth* {.importc: "pixmap_depth".}: Card32
    pixmapWidth* {.importc: "pixmap_width".}: Card32
    pixmapHeight* {.importc: "pixmap_height".}: Card32
    xoffset* {.importc: "xoffset".}: Card32
    byteOrder* {.importc: "byte_order".}: Card32
    bitmapUnit* {.importc: "bitmap_unit".}: Card32
    bitmapBitOrder* {.importc: "bitmap_bit_order".}: Card32
    bitmapPad* {.importc: "bitmap_pad".}: Card32
    bitsPerPixel* {.importc: "bits_per_pixel".}: Card32
    bytesPerLine* {.importc: "bytes_per_line".}: Card32
    visualClass* {.importc: "visual_class".}: Card32
    redMask* {.importc: "red_mask".}: Card32
    greenMask* {.importc: "green_mask".}: Card32
    blueMask* {.importc: "blue_mask".}: Card32
    bitsPerRgb* {.importc: "bits_per_rgb".}: Card32
    colormapEntries* {.importc: "colormap_entries".}: Card32
    ncolors* {.importc: "ncolors".}: Card32
    windowWidth* {.importc: "window_width".}: Card32
    windowHeight* {.importc: "window_height".}: Card32
    windowX* {.importc: "window_x".}: Card32
    windowY* {.importc: "window_y".}: Card32
    windowBdrwidth* {.importc: "window_bdrwidth".}: Card32

  XWDColor* {.importcpp: "XWDColor", header: "Aspect_XWD.hxx", bycopy.} = object
    pixel* {.importc: "pixel".}: Card32
    red* {.importc: "red".}: Card16
    green* {.importc: "green".}: Card16
    blue* {.importc: "blue".}: Card16
    flags* {.importc: "flags".}: Card8
    pad* {.importc: "pad".}: Card8

