import breptools_types
import ../topods/topods_types
##  Copyright (c) 2021 OPEN CASCADE SAS
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

## ! Removes location datums, which satisfy conditions:
## ! aTrsf.IsNegative() || (Abs(Abs(aTrsf.ScaleFactor()) - 1.) > TopLoc_Location::ScalePrec())
## ! from all locations of shape and its subshapes



proc newBRepTools_PurgeLocations*(): BRepTools_PurgeLocations {.cdecl, constructor,
    importcpp: "BRepTools_PurgeLocations(@)",
    header: "BRepTools_PurgeLocations.hxx".}
proc Perform*(this: var BRepTools_PurgeLocations; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "Perform", header: "BRepTools_PurgeLocations.hxx".}
proc GetResult*(this: BRepTools_PurgeLocations): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetResult", header: "BRepTools_PurgeLocations.hxx".}
proc IsDone*(this: BRepTools_PurgeLocations): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepTools_PurgeLocations.hxx".}
proc ModifiedShape*(this: BRepTools_PurgeLocations; theInitShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape",
    header: "BRepTools_PurgeLocations.hxx".}