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


proc newBRepBuilderAPI_MakeSolid*(): BRepBuilderAPI_MakeSolid {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(s: TopoDS_CompSolid): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(s: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell;
                                 s3: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(so: TopoDS_Solid): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc newBRepBuilderAPI_MakeSolid*(so: TopoDS_Solid; s: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)", dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_MakeSolid; s: TopoDS_Shell) {.cdecl,
    importcpp: "Add", dynlib: tktopalgo.}
proc isDone*(this: BRepBuilderAPI_MakeSolid): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tktopalgo.}
proc solid*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.cdecl,
    importcpp: "Solid", dynlib: tktopalgo.}
converter `topoDS_Solid`*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.cdecl,
    importcpp: "BRepBuilderAPI_MakeSolid::operator TopoDS_Solid",
    dynlib: tktopalgo.}
proc isDeleted*(this: var BRepBuilderAPI_MakeSolid; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", dynlib: tktopalgo.}