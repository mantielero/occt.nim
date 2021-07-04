# 1 "/usr/include/opencascade/Graphic3d_ArrayFlags.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_ArrayFlags.hxx"
# 18 "/usr/include/opencascade/Graphic3d_ArrayFlags.hxx"
typedef Standard_Integer Graphic3d_ArrayFlags;


enum
{
  Graphic3d_ArrayFlags_None = 0x00,
  Graphic3d_ArrayFlags_VertexNormal = 0x01,
  Graphic3d_ArrayFlags_VertexColor = 0x02,
  Graphic3d_ArrayFlags_VertexTexel = 0x04,
  Graphic3d_ArrayFlags_BoundColor = 0x10,

  Graphic3d_ArrayFlags_AttribsMutable = 0x20,
  Graphic3d_ArrayFlags_AttribsDeinterleaved = 0x40,
  Graphic3d_ArrayFlags_IndexesMutable = 0x80,
};
