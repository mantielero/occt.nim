##  Created on: 1992-05-27
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TFace"
discard "forward decl of BRep_TFace"
type
  HandleBRepTFace* = Handle[BRepTFace]

## ! The Tface from BRep  is  based  on the TFace  from
## ! TopoDS. The TFace contains :
## !
## ! * A suface, a tolerance and a Location.
## !
## ! * A NaturalRestriction flag,   when this  flag  is
## ! True the  boundary of the  face is known to be the
## ! parametric space (Umin, UMax, VMin, VMax).
## !
## ! *  An    optional Triangulation.   If  there  is a
## ! triangulation the surface can be absent.
## !
## ! The  Location is  used   for the Surface.
## !
## ! The triangulation  is in the same reference system
## ! than the TFace.     A point on mySurface must   be
## ! transformed with myLocation,  but  not a point  on
## ! the triangulation.
## !
## ! The Surface may  be shared by different TFaces but
## ! not the  Triangulation, because the  Triangulation
## ! may be modified by  the edges.

type
  BRepTFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## TFace.


proc constructBRepTFace*(): BRepTFace {.constructor, importcpp: "BRep_TFace(@)",
                                     header: "BRep_TFace.hxx".}
proc surface*(this: BRepTFace): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_TFace.hxx".}
proc triangulation*(this: BRepTFace): Handle[PolyTriangulation] {.noSideEffect,
    importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc location*(this: BRepTFace): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "BRep_TFace.hxx".}
proc tolerance*(this: BRepTFace): float {.noSideEffect, importcpp: "Tolerance",
                                      header: "BRep_TFace.hxx".}
proc surface*(this: var BRepTFace; s: Handle[GeomSurface]) {.importcpp: "Surface",
    header: "BRep_TFace.hxx".}
proc triangulation*(this: var BRepTFace; t: Handle[PolyTriangulation]) {.
    importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc location*(this: var BRepTFace; L: TopLocLocation) {.importcpp: "Location",
    header: "BRep_TFace.hxx".}
proc tolerance*(this: var BRepTFace; t: float) {.importcpp: "Tolerance",
    header: "BRep_TFace.hxx".}
proc naturalRestriction*(this: BRepTFace): bool {.noSideEffect,
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc naturalRestriction*(this: var BRepTFace; n: bool) {.
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc emptyCopy*(this: BRepTFace): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TFace.hxx".}
proc dumpJson*(this: BRepTFace; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "BRep_TFace.hxx".}
type
  BRepTFacebaseType* = TopoDS_TFace

proc getTypeName*(): cstring {.importcpp: "BRep_TFace::get_type_name(@)",
                            header: "BRep_TFace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_TFace::get_type_descriptor(@)", header: "BRep_TFace.hxx".}
proc dynamicType*(this: BRepTFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TFace.hxx".}
