type
  OSD_LockType* {.size: sizeof(cint), importcpp: "OSD_LockType",
                 header: "OSD_LockType.hxx".} = enum
    OSD_NoLock, OSD_ReadLock, OSD_WriteLock, OSD_ExclusiveLock

