##  Created on: 1994-11-14
##  Created by: Bruno DUMORTIER
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
  ../AppCont/AppCont_Function, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Macro,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  BRepFill_MultiLine* {.importcpp: "BRepFill_MultiLine",
                       header: "BRepFill_MultiLine.hxx", bycopy.} = object of AppCont_Function


proc constructBRepFill_MultiLine*(): BRepFill_MultiLine {.constructor,
    importcpp: "BRepFill_MultiLine(@)", header: "BRepFill_MultiLine.hxx".}
proc constructBRepFill_MultiLine*(Face1: TopoDS_Face; Face2: TopoDS_Face;
                                 Edge1: TopoDS_Edge; Edge2: TopoDS_Edge;
                                 Inv1: Standard_Boolean; Inv2: Standard_Boolean;
                                 Bissec: handle[Geom2d_Curve]): BRepFill_MultiLine {.
    constructor, importcpp: "BRepFill_MultiLine(@)",
    header: "BRepFill_MultiLine.hxx".}
proc IsParticularCase*(this: BRepFill_MultiLine): Standard_Boolean {.noSideEffect,
    importcpp: "IsParticularCase", header: "BRepFill_MultiLine.hxx".}
proc Continuity*(this: BRepFill_MultiLine): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepFill_MultiLine.hxx".}
proc Curves*(this: BRepFill_MultiLine; Curve: var handle[Geom_Curve];
            PCurve1: var handle[Geom2d_Curve]; PCurve2: var handle[Geom2d_Curve]) {.
    noSideEffect, importcpp: "Curves", header: "BRepFill_MultiLine.hxx".}
proc FirstParameter*(this: BRepFill_MultiLine): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepFill_MultiLine.hxx".}
proc LastParameter*(this: BRepFill_MultiLine): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "BRepFill_MultiLine.hxx".}
proc Value*(this: BRepFill_MultiLine; U: Standard_Real): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "BRepFill_MultiLine.hxx".}
proc ValueOnF1*(this: BRepFill_MultiLine; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "ValueOnF1", header: "BRepFill_MultiLine.hxx".}
proc ValueOnF2*(this: BRepFill_MultiLine; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "ValueOnF2", header: "BRepFill_MultiLine.hxx".}
proc Value3dOnF1OnF2*(this: BRepFill_MultiLine; U: Standard_Real; P3d: var gp_Pnt;
                     PF1: var gp_Pnt2d; PF2: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Value3dOnF1OnF2", header: "BRepFill_MultiLine.hxx".}
proc Value*(this: BRepFill_MultiLine; theU: Standard_Real;
           thePnt2d: var NCollection_Array1[gp_Pnt2d];
           thePnt: var NCollection_Array1[gp_Pnt]): Standard_Boolean {.noSideEffect,
    importcpp: "Value", header: "BRepFill_MultiLine.hxx".}
proc D1*(this: BRepFill_MultiLine; theU: Standard_Real;
        theVec2d: var NCollection_Array1[gp_Vec2d];
        theVec: var NCollection_Array1[gp_Vec]): Standard_Boolean {.noSideEffect,
    importcpp: "D1", header: "BRepFill_MultiLine.hxx".}