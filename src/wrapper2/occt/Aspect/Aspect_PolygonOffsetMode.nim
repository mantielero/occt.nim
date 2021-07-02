type
  AspectPolygonOffsetMode* {.size: sizeof(cint),
                            importcpp: "Aspect_PolygonOffsetMode",
                            header: "Aspect_PolygonOffsetMode.hxx".} = enum
    AspectPOM_Off = 0x00, AspectPOM_Fill = 0x01, AspectPOM_Line = 0x02,
    AspectPOM_Point = 0x04,
    AspectPOM_All = aspectPOM_Fill or aspectPOM_Line or aspectPOM_Point,
    AspectPOM_None = 0x08, AspectPOM_Mask = aspectPOM_All or aspectPOM_None

