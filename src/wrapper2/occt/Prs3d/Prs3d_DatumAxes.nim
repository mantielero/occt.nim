type
  Prs3dDatumAxes* {.size: sizeof(cint), importcpp: "Prs3d_DatumAxes",
                   header: "Prs3d_DatumAxes.hxx".} = enum
    Prs3dDA_XAxis = 0x00000001, Prs3dDA_YAxis = 0x00000002,
    Prs3dDA_ZAxis = 0x00000004, Prs3dDA_XYAxis = prs3dDA_XAxis or prs3dDA_YAxis,
    Prs3dDA_YZAxis = prs3dDA_YAxis or prs3dDA_ZAxis,
    Prs3dDA_XZAxis = prs3dDA_XAxis or prs3dDA_ZAxis,
    Prs3dDA_XYZAxis = prs3dDA_XAxis or prs3dDA_YAxis or prs3dDA_ZAxis

