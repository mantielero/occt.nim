type
  PrsDimKindOfSurface* {.size: sizeof(cint), importcpp: "PrsDim_KindOfSurface",
                        header: "PrsDim_KindOfSurface.hxx".} = enum
    PrsDimKOS_Plane, PrsDimKOS_Cylinder, PrsDimKOS_Cone, PrsDimKOS_Sphere,
    PrsDimKOS_Torus, PrsDimKOS_Revolution, PrsDimKOS_Extrusion,
    PrsDimKOS_OtherSurface

