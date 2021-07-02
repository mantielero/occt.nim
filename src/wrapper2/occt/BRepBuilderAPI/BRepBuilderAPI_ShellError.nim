type
  BRepBuilderAPI_ShellError* {.size: sizeof(cint),
                              importcpp: "BRepBuilderAPI_ShellError",
                              header: "BRepBuilderAPI_ShellError.hxx".} = enum
    BRepBuilderAPI_ShellDone, BRepBuilderAPI_EmptyShell,
    BRepBuilderAPI_DisconnectedShell, BRepBuilderAPI_ShellParametersOutOfRange

