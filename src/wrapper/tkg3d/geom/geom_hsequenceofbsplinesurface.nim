##  Created on: 1993-03-09
##  Created by: JCV
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

type
  GeomHSequenceOfBSplineSurface* {.importcpp: "Geom_HSequenceOfBSplineSurface",
                                  header: "Geom_HSequenceOfBSplineSurface.hxx",
                                  bycopy.} = object of GeomSequenceOfBSplineSurface


proc newGeomHSequenceOfBSplineSurface*(): GeomHSequenceOfBSplineSurface {.cdecl,
    constructor, importcpp: "Geom_HSequenceOfBSplineSurface(@)", header: "Geom_HSequenceOfBSplineSurface.hxx".}
proc newGeomHSequenceOfBSplineSurface*(theOther: GeomSequenceOfBSplineSurface): GeomHSequenceOfBSplineSurface {.
    cdecl, constructor, importcpp: "Geom_HSequenceOfBSplineSurface(@)",
    header: "Geom_HSequenceOfBSplineSurface.hxx".}
proc sequence*(this: GeomHSequenceOfBSplineSurface): GeomSequenceOfBSplineSurface {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "Geom_HSequenceOfBSplineSurface.hxx".}
proc append*(this: var GeomHSequenceOfBSplineSurface; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "Geom_HSequenceOfBSplineSurface.hxx".}
proc append*(this: var GeomHSequenceOfBSplineSurface;
            theSequence: var GeomSequenceOfBSplineSurface) {.cdecl,
    importcpp: "Append", header: "Geom_HSequenceOfBSplineSurface.hxx".}
proc changeSequence*(this: var GeomHSequenceOfBSplineSurface): var GeomSequenceOfBSplineSurface {.
    cdecl, importcpp: "ChangeSequence", header: "Geom_HSequenceOfBSplineSurface.hxx".}
type
  HandleGeomHSequenceOfBSplineSurface* = Handle[GeomHSequenceOfBSplineSurface]
