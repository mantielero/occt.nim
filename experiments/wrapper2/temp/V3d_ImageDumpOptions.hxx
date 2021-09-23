# 1 "/usr/include/opencascade/V3d_ImageDumpOptions.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/V3d_ImageDumpOptions.hxx"
# 17 "/usr/include/opencascade/V3d_ImageDumpOptions.hxx"
# 1 "/usr/include/opencascade/Graphic3d_BufferType.hxx" 1
# 18 "/usr/include/opencascade/Graphic3d_BufferType.hxx"
enum Graphic3d_BufferType
{
  Graphic3d_BT_RGB,
  Graphic3d_BT_RGBA,
  Graphic3d_BT_Depth,
  Graphic3d_BT_RGB_RayTraceHdrLeft,
  Graphic3d_BT_Red,
};
# 18 "/usr/include/opencascade/V3d_ImageDumpOptions.hxx" 2
# 1 "/usr/include/opencascade/V3d_StereoDumpOptions.hxx" 1
# 21 "/usr/include/opencascade/V3d_StereoDumpOptions.hxx"
enum V3d_StereoDumpOptions
{
  V3d_SDO_MONO,
  V3d_SDO_LEFT_EYE,
  V3d_SDO_RIGHT_EYE,
  V3d_SDO_BLENDED
};
# 19 "/usr/include/opencascade/V3d_ImageDumpOptions.hxx" 2


struct V3d_ImageDumpOptions
{

  Standard_Integer Width;
  Standard_Integer Height;
  Graphic3d_BufferType BufferType;
  V3d_StereoDumpOptions StereoOptions;
  Standard_Integer TileSize;
  Standard_Boolean ToAdjustAspect;

public:


  V3d_ImageDumpOptions()
  : Width (0),
    Height (0),
    BufferType (Graphic3d_BT_RGB),
    StereoOptions (V3d_SDO_MONO),
    TileSize (0),
    ToAdjustAspect(Standard_True) {}

};
