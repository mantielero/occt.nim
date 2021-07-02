type
  OSD_SingleProtection* {.size: sizeof(cint), importcpp: "OSD_SingleProtection",
                         header: "OSD_SingleProtection.hxx".} = enum
    OSD_None, OSD_R, OSD_W, OSD_RW, OSD_X, OSD_RX, OSD_WX, OSD_RWX, OSD_D, OSD_RD, OSD_WD,
    OSD_RWD, OSD_XD, OSD_RXD, OSD_WXD, OSD_RWXD

