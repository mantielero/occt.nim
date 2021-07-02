type
  Prs3dDatumParts* {.size: sizeof(cint), importcpp: "Prs3d_DatumParts",
                    header: "Prs3d_DatumParts.hxx".} = enum
    Prs3dDP_Origin = 0, Prs3dDP_XAxis, Prs3dDP_YAxis, Prs3dDP_ZAxis, Prs3dDP_XArrow,
    Prs3dDP_YArrow, Prs3dDP_ZArrow, Prs3dDP_XOYAxis, Prs3dDP_YOZAxis,
    Prs3dDP_XOZAxis, Prs3dDP_None

