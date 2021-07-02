type
  OSD_SysType* {.size: sizeof(cint), importcpp: "OSD_SysType",
                header: "OSD_SysType.hxx".} = enum
    OSD_Unknown, OSD_Default, OSD_UnixBSD, OSD_UnixSystemV, OSD_VMS, OSD_OS2, OSD_OSF,
    OSD_MacOs, OSD_Taligent, OSD_WindowsNT, OSD_LinuxREDHAT, OSD_Aix

