##  Created on: 1994-07-22
##  Created by: Remi LEQUETTE
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopLoc/TopLoc_Location

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopLoc_Location"
type
  BRepLib_FindSurface* {.importcpp: "BRepLib_FindSurface",
                        header: "BRepLib_FindSurface.hxx", bycopy.} = object


proc constructBRepLib_FindSurface*(): BRepLib_FindSurface {.constructor,
    importcpp: "BRepLib_FindSurface(@)", header: "BRepLib_FindSurface.hxx".}
proc constructBRepLib_FindSurface*(S: TopoDS_Shape; Tol: Standard_Real = -1;
                                  OnlyPlane: Standard_Boolean = Standard_False;
                                  OnlyClosed: Standard_Boolean = Standard_False): BRepLib_FindSurface {.
    constructor, importcpp: "BRepLib_FindSurface(@)",
    header: "BRepLib_FindSurface.hxx".}
proc Init*(this: var BRepLib_FindSurface; S: TopoDS_Shape; Tol: Standard_Real = -1;
          OnlyPlane: Standard_Boolean = Standard_False;
          OnlyClosed: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepLib_FindSurface.hxx".}
proc Found*(this: BRepLib_FindSurface): Standard_Boolean {.noSideEffect,
    importcpp: "Found", header: "BRepLib_FindSurface.hxx".}
proc Surface*(this: BRepLib_FindSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRepLib_FindSurface.hxx".}
proc Tolerance*(this: BRepLib_FindSurface): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRepLib_FindSurface.hxx".}
proc ToleranceReached*(this: BRepLib_FindSurface): Standard_Real {.noSideEffect,
    importcpp: "ToleranceReached", header: "BRepLib_FindSurface.hxx".}
proc Existed*(this: BRepLib_FindSurface): Standard_Boolean {.noSideEffect,
    importcpp: "Existed", header: "BRepLib_FindSurface.hxx".}
proc Location*(this: BRepLib_FindSurface): TopLoc_Location {.noSideEffect,
    importcpp: "Location", header: "BRepLib_FindSurface.hxx".}