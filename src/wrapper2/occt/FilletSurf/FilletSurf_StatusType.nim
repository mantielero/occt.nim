type
  FilletSurfStatusType* {.size: sizeof(cint), importcpp: "FilletSurf_StatusType",
                         header: "FilletSurf_StatusType.hxx".} = enum
    FilletSurfTwoExtremityOnEdge, FilletSurfOneExtremityOnEdge,
    FilletSurfNoExtremityOnEdge

