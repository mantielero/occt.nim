type
  BRepLibShellError* {.size: sizeof(cint), importcpp: "BRepLib_ShellError",
                      header: "BRepLib_ShellError.hxx".} = enum
    BRepLibShellDone, BRepLibEmptyShell, BRepLibDisconnectedShell,
    BRepLibShellParametersOutOfRange

