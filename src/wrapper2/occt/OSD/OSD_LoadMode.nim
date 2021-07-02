type
  OSD_LoadMode* {.size: sizeof(cint), importcpp: "OSD_LoadMode",
                 header: "OSD_LoadMode.hxx".} = enum
    OSD_RTLD_LAZY, OSD_RTLD_NOW

