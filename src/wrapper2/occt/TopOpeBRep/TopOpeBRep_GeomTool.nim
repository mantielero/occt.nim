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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
type
  TopOpeBRep_GeomTool* {.importcpp: "TopOpeBRep_GeomTool",
                        header: "TopOpeBRep_GeomTool.hxx", bycopy.} = object ## ! Make the  DS curve <C> and the pcurves
                                                                        ## <PC1,PC2> from
                                                                        ## !
                                                                        ## intersection line <L> lying on shapes <S1,S2>.
                                                                        ## <min,max> = <L> bounds


proc MakeCurves*(min: Standard_Real; max: Standard_Real; L: TopOpeBRep_LineInter;
                S1: TopoDS_Shape; S2: TopoDS_Shape; C: var TopOpeBRepDS_Curve;
                PC1: var handle[Geom2d_Curve]; PC2: var handle[Geom2d_Curve]) {.
    importcpp: "TopOpeBRep_GeomTool::MakeCurves(@)",
    header: "TopOpeBRep_GeomTool.hxx".}
proc MakeCurve*(min: Standard_Real; max: Standard_Real; L: TopOpeBRep_LineInter;
               C: var handle[Geom_Curve]) {.
    importcpp: "TopOpeBRep_GeomTool::MakeCurve(@)",
    header: "TopOpeBRep_GeomTool.hxx".}
proc MakeBSpline1fromWALKING3d*(L: TopOpeBRep_LineInter): handle[Geom_Curve] {.
    importcpp: "TopOpeBRep_GeomTool::MakeBSpline1fromWALKING3d(@)",
    header: "TopOpeBRep_GeomTool.hxx".}
proc MakeBSpline1fromWALKING2d*(L: TopOpeBRep_LineInter; SI: Standard_Integer): handle[
    Geom2d_Curve] {.importcpp: "TopOpeBRep_GeomTool::MakeBSpline1fromWALKING2d(@)",
                   header: "TopOpeBRep_GeomTool.hxx".}