##  Created on: 1993-06-23
##  Created by: Didier PIFFAULT
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
type
  Intf_Tool* {.importcpp: "Intf_Tool", header: "Intf_Tool.hxx", bycopy.} = object


proc constructIntf_Tool*(): Intf_Tool {.constructor, importcpp: "Intf_Tool(@)",
                                     header: "Intf_Tool.hxx".}
proc Lin2dBox*(this: var Intf_Tool; theLin2d: gp_Lin2d; bounding: Bnd_Box2d;
              boxLin: var Bnd_Box2d) {.importcpp: "Lin2dBox", header: "Intf_Tool.hxx".}
proc Hypr2dBox*(this: var Intf_Tool; theHypr2d: gp_Hypr2d; bounding: Bnd_Box2d;
               boxHypr: var Bnd_Box2d) {.importcpp: "Hypr2dBox",
                                      header: "Intf_Tool.hxx".}
proc Parab2dBox*(this: var Intf_Tool; theParab2d: gp_Parab2d; bounding: Bnd_Box2d;
                boxHypr: var Bnd_Box2d) {.importcpp: "Parab2dBox",
                                       header: "Intf_Tool.hxx".}
proc LinBox*(this: var Intf_Tool; theLin: gp_Lin; bounding: Bnd_Box; boxLin: var Bnd_Box) {.
    importcpp: "LinBox", header: "Intf_Tool.hxx".}
proc HyprBox*(this: var Intf_Tool; theHypr: gp_Hypr; bounding: Bnd_Box;
             boxHypr: var Bnd_Box) {.importcpp: "HyprBox", header: "Intf_Tool.hxx".}
proc ParabBox*(this: var Intf_Tool; theParab: gp_Parab; bounding: Bnd_Box;
              boxHypr: var Bnd_Box) {.importcpp: "ParabBox", header: "Intf_Tool.hxx".}
proc NbSegments*(this: Intf_Tool): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "Intf_Tool.hxx".}
proc BeginParam*(this: Intf_Tool; SegmentNum: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BeginParam", header: "Intf_Tool.hxx".}
proc EndParam*(this: Intf_Tool; SegmentNum: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "EndParam", header: "Intf_Tool.hxx".}