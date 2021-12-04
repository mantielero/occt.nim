##  Created on: 1997-03-03
##  Created by: Jean-Pierre COMBE
##  Copyright (c) 1997-1999 Matra Datavision
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

type
  HandlePrsDimSymmetricRelation* = Handle[PrsDimSymmetricRelation]

## ! A framework to display constraints of symmetricity
## ! between two or more datum Interactive Objects.
## ! A plane serves as the axis of symmetry between the
## ! shapes of which the datums are parts.

type
  PrsDimSymmetricRelation* {.importcpp: "PrsDim_SymmetricRelation",
                            header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## object
                                                                                                 ## to
                                                                                                 ## display
                                                                                                 ## constraints
                                                                                                 ## of
                                                                                                 ## symmetricity.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## object
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## a
                                                                                                 ## tool
                                                                                                 ## aSymmTool,
                                                                                                 ## a
                                                                                                 ## first
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## shape
                                                                                                 ## FirstShape,
                                                                                                 ## a
                                                                                                 ## second
                                                                                                 ## shape
                                                                                                 ## SecondShape,
                                                                                                 ## and
                                                                                                 ## a
                                                                                                 ## plane
                                                                                                 ## aPlane.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## aPlane
                                                                                                 ## serves
                                                                                                 ## as
                                                                                                 ## the
                                                                                                 ## axis
                                                                                                 ## of
                                                                                                 ## symmetry.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## aSymmTool
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## shape
                                                                                                 ## composed
                                                                                                 ## of
                                                                                                 ## FirstShape
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## SecondShape
                                                                                                 ## and
                                                                                                 ## aPlane.
                                                                                                 ## It
                                                                                                 ## may
                                                                                                 ## be
                                                                                                 ## queried
                                                                                                 ## and
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## edited
                                                                                                 ## using
                                                                                                 ## the
                                                                                                 ## functions
                                                                                                 ## GetTool
                                                                                                 ## and
                                                                                                 ## SetTool.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## two
                                                                                                 ## shapes
                                                                                                 ## are
                                                                                                 ## typically
                                                                                                 ## two
                                                                                                 ## edges,
                                                                                                 ## two
                                                                                                 ## vertices
                                                                                                 ## or
                                                                                                 ## two
                                                                                                 ## points.


proc newPrsDimSymmetricRelation*(aSymmTool: TopoDS_Shape; firstShape: TopoDS_Shape;
                                secondShape: TopoDS_Shape;
                                aPlane: Handle[GeomPlane]): PrsDimSymmetricRelation {.
    cdecl, constructor, importcpp: "PrsDim_SymmetricRelation(@)", header: "PrsDim_SymmetricRelation.hxx".}
proc isMovable*(this: PrsDimSymmetricRelation): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_SymmetricRelation.hxx".}
proc setTool*(this: var PrsDimSymmetricRelation; aSymmetricTool: TopoDS_Shape) {.
    cdecl, importcpp: "SetTool", header: "PrsDim_SymmetricRelation.hxx".}
proc getTool*(this: PrsDimSymmetricRelation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetTool", header: "PrsDim_SymmetricRelation.hxx".}