##  Created on: 1995-03-08
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Solid,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: "BRepPrimAPI_MakeHalfSpace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Make
                                                                                                              ## a
                                                                                                              ## HalfSpace
                                                                                                              ## defined
                                                                                                              ## with
                                                                                                              ## a
                                                                                                              ## Face
                                                                                                              ## and
                                                                                                              ## a
                                                                                                              ## Point.


proc constructBRepPrimAPI_MakeHalfSpace*(Face: TopoDS_Face; RefPnt: gp_Pnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc constructBRepPrimAPI_MakeHalfSpace*(Shell: TopoDS_Shell; RefPnt: gp_Pnt): BRepPrimAPI_MakeHalfSpace {.
    constructor, importcpp: "BRepPrimAPI_MakeHalfSpace(@)",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}
proc Solid*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "BRepPrimAPI_MakeHalfSpace.hxx".}
converter `TopoDS_Solid`*(this: BRepPrimAPI_MakeHalfSpace): TopoDS_Solid {.
    noSideEffect, importcpp: "BRepPrimAPI_MakeHalfSpace::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeHalfSpace.hxx".}