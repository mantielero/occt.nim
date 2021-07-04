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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopLoc/TopLoc_Location,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../TopoDS/TopoDS_TFace

discard "forward decl of Geom_Surface"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_TShape"
discard "forward decl of BRep_TFace"
discard "forward decl of BRep_TFace"
type
  Handle_BRep_TFace* = handle[BRep_TFace]

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
  BRep_TFace* {.importcpp: "BRep_TFace", header: "BRep_TFace.hxx", bycopy.} = object of TopoDS_TFace ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## TFace.


proc constructBRep_TFace*(): BRep_TFace {.constructor, importcpp: "BRep_TFace(@)",
                                       header: "BRep_TFace.hxx".}
proc Surface*(this: BRep_TFace): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "BRep_TFace.hxx".}
proc Triangulation*(this: BRep_TFace): handle[Poly_Triangulation] {.noSideEffect,
    importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc Location*(this: BRep_TFace): TopLoc_Location {.noSideEffect,
    importcpp: "Location", header: "BRep_TFace.hxx".}
proc Tolerance*(this: BRep_TFace): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "BRep_TFace.hxx".}
proc Surface*(this: var BRep_TFace; S: handle[Geom_Surface]) {.importcpp: "Surface",
    header: "BRep_TFace.hxx".}
proc Triangulation*(this: var BRep_TFace; T: handle[Poly_Triangulation]) {.
    importcpp: "Triangulation", header: "BRep_TFace.hxx".}
proc Location*(this: var BRep_TFace; L: TopLoc_Location) {.importcpp: "Location",
    header: "BRep_TFace.hxx".}
proc Tolerance*(this: var BRep_TFace; T: Standard_Real) {.importcpp: "Tolerance",
    header: "BRep_TFace.hxx".}
proc NaturalRestriction*(this: BRep_TFace): Standard_Boolean {.noSideEffect,
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc NaturalRestriction*(this: var BRep_TFace; N: Standard_Boolean) {.
    importcpp: "NaturalRestriction", header: "BRep_TFace.hxx".}
proc EmptyCopy*(this: BRep_TFace): handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "BRep_TFace.hxx".}
proc DumpJson*(this: BRep_TFace; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_TFace.hxx".}
type
  BRep_TFacebase_type* = TopoDS_TFace

proc get_type_name*(): cstring {.importcpp: "BRep_TFace::get_type_name(@)",
                              header: "BRep_TFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_TFace::get_type_descriptor(@)", header: "BRep_TFace.hxx".}
proc DynamicType*(this: BRep_TFace): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_TFace.hxx".}