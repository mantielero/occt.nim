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

discard "forward decl of TopoDS_Shape"
type
  HLRAppliReflectLines* {.importcpp: "HLRAppli_ReflectLines",
                         header: "HLRAppli_ReflectLines.hxx", bycopy.} = object ## !
                                                                           ## Constructor
    ## TopoDS_Shape myCompound;


proc constructHLRAppliReflectLines*(aShape: TopoDS_Shape): HLRAppliReflectLines {.
    constructor, importcpp: "HLRAppli_ReflectLines(@)",
    header: "HLRAppli_ReflectLines.hxx".}
proc setAxes*(this: var HLRAppliReflectLines; nx: float; ny: float; nz: float; xAt: float;
             yAt: float; zAt: float; xUp: float; yUp: float; zUp: float) {.
    importcpp: "SetAxes", header: "HLRAppli_ReflectLines.hxx".}
proc perform*(this: var HLRAppliReflectLines) {.importcpp: "Perform",
    header: "HLRAppli_ReflectLines.hxx".}
proc getResult*(this: HLRAppliReflectLines): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "HLRAppli_ReflectLines.hxx".}
proc getCompoundOf3dEdges*(this: HLRAppliReflectLines;
                          `type`: HLRBRepTypeOfResultingEdge; visible: bool;
                          in3d: bool): TopoDS_Shape {.noSideEffect,
    importcpp: "GetCompoundOf3dEdges", header: "HLRAppli_ReflectLines.hxx".}
