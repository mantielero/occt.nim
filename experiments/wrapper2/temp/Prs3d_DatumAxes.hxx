# 1 "/usr/include/opencascade/Prs3d_DatumAxes.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Prs3d_DatumAxes.hxx"
# 18 "/usr/include/opencascade/Prs3d_DatumAxes.hxx"
enum Prs3d_DatumAxes
{
  Prs3d_DA_XAxis = 0x00000001,
  Prs3d_DA_YAxis = 0x00000002,
  Prs3d_DA_ZAxis = 0x00000004,
  Prs3d_DA_XYAxis = Prs3d_DA_XAxis
                      | Prs3d_DA_YAxis,
  Prs3d_DA_YZAxis = Prs3d_DA_YAxis
                      | Prs3d_DA_ZAxis,
  Prs3d_DA_XZAxis = Prs3d_DA_XAxis
                      | Prs3d_DA_ZAxis,
  Prs3d_DA_XYZAxis = Prs3d_DA_XAxis
                      | Prs3d_DA_YAxis
                      | Prs3d_DA_ZAxis
};
