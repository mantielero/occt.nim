##  File:      HLRAppli_ReflectLines.cdl
##  Created:   05.12.12 15:53:35
##  Created by: Julia GERASIMOVA
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
  ../Standard/Standard_Handle, ../HLRAlgo/HLRAlgo_Projector,
  ../HLRBRep/HLRBRep_Algo, ../HLRBRep/HLRBRep_TypeOfResultingEdge,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
type
  HLRAppli_ReflectLines* {.importcpp: "HLRAppli_ReflectLines",
                          header: "HLRAppli_ReflectLines.hxx", bycopy.} = object ## !
                                                                            ## Constructor
    ## TopoDS_Shape myCompound;


proc constructHLRAppli_ReflectLines*(aShape: TopoDS_Shape): HLRAppli_ReflectLines {.
    constructor, importcpp: "HLRAppli_ReflectLines(@)",
    header: "HLRAppli_ReflectLines.hxx".}
proc SetAxes*(this: var HLRAppli_ReflectLines; Nx: Standard_Real; Ny: Standard_Real;
             Nz: Standard_Real; XAt: Standard_Real; YAt: Standard_Real;
             ZAt: Standard_Real; XUp: Standard_Real; YUp: Standard_Real;
             ZUp: Standard_Real) {.importcpp: "SetAxes",
                                 header: "HLRAppli_ReflectLines.hxx".}
proc Perform*(this: var HLRAppli_ReflectLines) {.importcpp: "Perform",
    header: "HLRAppli_ReflectLines.hxx".}
proc GetResult*(this: HLRAppli_ReflectLines): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "HLRAppli_ReflectLines.hxx".}
proc GetCompoundOf3dEdges*(this: HLRAppli_ReflectLines;
                          `type`: HLRBRep_TypeOfResultingEdge;
                          visible: Standard_Boolean; In3d: Standard_Boolean): TopoDS_Shape {.
    noSideEffect, importcpp: "GetCompoundOf3dEdges",
    header: "HLRAppli_ReflectLines.hxx".}