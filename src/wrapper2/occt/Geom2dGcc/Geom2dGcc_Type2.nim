type
  Geom2dGccType2* {.size: sizeof(cint), importcpp: "Geom2dGcc_Type2",
                   header: "Geom2dGcc_Type2.hxx".} = enum
    Geom2dGccCuCuOnCu, Geom2dGccCiCuOnCu, Geom2dGccLiCuOnCu, Geom2dGccCuPtOnCu,
    Geom2dGccCuCuOnLi, Geom2dGccCiCuOnLi, Geom2dGccLiCuOnLi, Geom2dGccCuPtOnLi,
    Geom2dGccCuCuOnCi, Geom2dGccCiCuOnCi, Geom2dGccLiCuOnCi, Geom2dGccCuPtOnCi

