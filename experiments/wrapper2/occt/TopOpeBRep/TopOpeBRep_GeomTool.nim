##  Created on: 1993-06-24
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
type
  TopOpeBRepGeomTool* {.importcpp: "TopOpeBRep_GeomTool",
                       header: "TopOpeBRep_GeomTool.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_GeomTool::operator new",
    header: "TopOpeBRep_GeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRep_GeomTool::operator delete",
    header: "TopOpeBRep_GeomTool.hxx".}
proc `new[]`*(this: var TopOpeBRepGeomTool; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_GeomTool::operator new[]",
    header: "TopOpeBRep_GeomTool.hxx".}
proc `delete[]`*(this: var TopOpeBRepGeomTool; theAddress: pointer) {.
    importcpp: "TopOpeBRep_GeomTool::operator delete[]",
    header: "TopOpeBRep_GeomTool.hxx".}
proc `new`*(this: var TopOpeBRepGeomTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_GeomTool::operator new",
    header: "TopOpeBRep_GeomTool.hxx".}
proc `delete`*(this: var TopOpeBRepGeomTool; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_GeomTool::operator delete",
    header: "TopOpeBRep_GeomTool.hxx".}
proc makeCurves*(min: StandardReal; max: StandardReal; L: TopOpeBRepLineInter;
                s1: TopoDS_Shape; s2: TopoDS_Shape; c: var TopOpeBRepDS_Curve;
                pc1: var Handle[Geom2dCurve]; pc2: var Handle[Geom2dCurve]) {.
    importcpp: "TopOpeBRep_GeomTool::MakeCurves(@)",
    header: "TopOpeBRep_GeomTool.hxx".}
proc makeCurve*(min: StandardReal; max: StandardReal; L: TopOpeBRepLineInter;
               c: var Handle[GeomCurve]) {.importcpp: "TopOpeBRep_GeomTool::MakeCurve(@)",
                                        header: "TopOpeBRep_GeomTool.hxx".}
proc makeBSpline1fromWALKING3d*(L: TopOpeBRepLineInter): Handle[GeomCurve] {.
    importcpp: "TopOpeBRep_GeomTool::MakeBSpline1fromWALKING3d(@)",
    header: "TopOpeBRep_GeomTool.hxx".}
proc makeBSpline1fromWALKING2d*(L: TopOpeBRepLineInter; si: int): Handle[Geom2dCurve] {.
    importcpp: "TopOpeBRep_GeomTool::MakeBSpline1fromWALKING2d(@)",
    header: "TopOpeBRep_GeomTool.hxx".}