import brepbuilderapi_types


type
  BRepBuilderAPI_MakeShell* {.header: "BRepBuilderAPI_MakeShell.hxx", importcpp: "BRepBuilderAPI_MakeShell", byref.} = object #of class BRepBuilderAPI_MakeShape
    ## Describes functions to build a shape corresponding to the skin of a
    ## surface. Note that the term shell in the class name has the same
    ## definition as that of a shell in STEP, in other words the skin of a
    ## shape, and not a solid model defined by surface and thickness. If you
    ## want to build the second sort of shell, you must use
    ## BRepOffsetAPI_MakeOffsetShape. A shell is made of a series of faces
    ## connected by their common edges. If the underlying surface of a face
    ## is not C2 continuous and the flag Segment is True, MakeShell breaks
    ## the surface down into several faces which are all C2 continuous and
    ## which are connected along the non-regular curves on the surface. The
    ## resulting shell contains all these faces. Construction of a Shell from
    ## a non-C2 continuous Surface A MakeShell object provides a framework
    ## for: - defining the construction of a shell, - implementing the
    ## construction algorithm, and - consulting the result. Warning The
    ## connected C2 faces in the shell resulting from a decomposition of the
    ## surface are not sewn. For a sewn result, you need to use
    ## BRepOffsetAPI_Sewing. For a shell with thickness, you need to use
    ## BRepOffsetAPI_MakeOffsetShape.



{.push header: "BRepBuilderAPI_MakeShell.hxx".}

proc constructBRepBuilderAPI_MakeShell*(): BRepBuilderAPI_MakeShell {.constructor,importcpp: "BRepBuilderAPI_MakeShell::BRepBuilderAPI_MakeShell".}
    ## Constructs an empty shell framework. The Init function is used to
    ## define the construction arguments. Warning The function Error will
    ## return BRepBuilderAPI_EmptyShell if it is called before the function
    ## Init.

proc constructBRepBuilderAPI_MakeShell*(S: handle[Geom_Surface], Segment: Standard_Boolean): BRepBuilderAPI_MakeShell {.constructor,importcpp: "BRepBuilderAPI_MakeShell::BRepBuilderAPI_MakeShell(@)".}
    ## Constructs a shell from the surface S.

proc constructBRepBuilderAPI_MakeShell*(S: handle[Geom_Surface], UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real, Segment: Standard_Boolean): BRepBuilderAPI_MakeShell {.constructor,importcpp: "BRepBuilderAPI_MakeShell::BRepBuilderAPI_MakeShell(@)".}
    ## Constructs a shell from the surface S, limited in the u parametric
    ## direction by the two parameter values UMin and UMax, and limited in
    ## the v parametric direction by the two parameter values VMin and VMax.

proc ` new`*(this: var BRepBuilderAPI_MakeShell, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeShell, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeShell, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeShell, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeShell, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeShell, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc init*(this: var BRepBuilderAPI_MakeShell, S: handle[Geom_Surface], UMin: Standard_Real, UMax: Standard_Real, VMin: Standard_Real, VMax: Standard_Real, Segment: Standard_Boolean)  {.importcpp: "Init".}
    ## Defines or redefines the arguments for the construction of a shell.
    ## The construction is initialized with the surface S, limited in the u
    ## parametric direction by the two parameter values UMin and UMax, and in
    ## the v parametric direction by the two parameter values VMin and VMax.
    ## Warning The function Error returns: -
    ## BRepBuilderAPI_ShellParametersOutOfRange when the given parameters are
    ## outside the bounds of the surface or the basis surface if S is trimmed

proc isDone*(this: BRepBuilderAPI_MakeShell): Standard_Boolean  {.importcpp: "IsDone".}
    ## Returns true if the shell is built.

proc error*(this: BRepBuilderAPI_MakeShell): BRepBuilderAPI_ShellError  {.importcpp: "Error".}
    ## Returns the construction status: - BRepBuilderAPI_ShellDone if the
    ## shell is built, or - another value of the BRepBuilderAPI_ShellError
    ## enumeration indicating why the construction failed. This is frequently
    ## BRepBuilderAPI_ShellParametersOutOfRange indicating that the given
    ## parameters are outside the bounds of the surface.

proc shell*(this: BRepBuilderAPI_MakeShell): TopoDS_Shell  {.importcpp: "Shell".}
    ## Returns the new Shell.

{.pop.}  # header: "BRepBuilderAPI_MakeShell.hxx"
