##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepLib/BRepLib_MakeSolid,
  BRepBuilderAPI_MakeShape, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_MakeSolid* {.importcpp: "BRepBuilderAPI_MakeSolid",
                             header: "BRepBuilderAPI_MakeSolid.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## Initializes
                                                                                                            ## the
                                                                                                            ## construction
                                                                                                            ## of
                                                                                                            ## a
                                                                                                            ## solid.
                                                                                                            ## An
                                                                                                            ## empty
                                                                                                            ## solid
                                                                                                            ## is
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## considered
                                                                                                            ## to
                                                                                                            ## cover
                                                                                                            ## the
                                                                                                            ## whole
                                                                                                            ## space.
                                                                                                            ## The
                                                                                                            ## Add
                                                                                                            ## function
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## is
                                                                                                            ## used
                                                                                                            ## to
                                                                                                            ## define
                                                                                                            ## shells
                                                                                                            ## to
                                                                                                            ## bound
                                                                                                            ## it.


proc constructBRepBuilderAPI_MakeSolid*(): BRepBuilderAPI_MakeSolid {.constructor,
    importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(S: TopoDS_CompSolid): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(S: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell;
                                       S3: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(So: TopoDS_Solid): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(So: TopoDS_Solid; S: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc Add*(this: var BRepBuilderAPI_MakeSolid; S: TopoDS_Shell) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc IsDone*(this: BRepBuilderAPI_MakeSolid): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeSolid.hxx".}
proc Solid*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
converter `TopoDS_Solid`*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator TopoDS_Solid",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc IsDeleted*(this: var BRepBuilderAPI_MakeSolid; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepBuilderAPI_MakeSolid.hxx".}