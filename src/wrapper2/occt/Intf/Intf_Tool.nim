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
  IntfTool* {.importcpp: "Intf_Tool", header: "Intf_Tool.hxx", bycopy.} = object


proc constructIntfTool*(): IntfTool {.constructor, importcpp: "Intf_Tool(@)",
                                   header: "Intf_Tool.hxx".}
proc lin2dBox*(this: var IntfTool; theLin2d: GpLin2d; bounding: BndBox2d;
              boxLin: var BndBox2d) {.importcpp: "Lin2dBox", header: "Intf_Tool.hxx".}
proc hypr2dBox*(this: var IntfTool; theHypr2d: GpHypr2d; bounding: BndBox2d;
               boxHypr: var BndBox2d) {.importcpp: "Hypr2dBox",
                                     header: "Intf_Tool.hxx".}
proc parab2dBox*(this: var IntfTool; theParab2d: GpParab2d; bounding: BndBox2d;
                boxHypr: var BndBox2d) {.importcpp: "Parab2dBox",
                                      header: "Intf_Tool.hxx".}
proc linBox*(this: var IntfTool; theLin: GpLin; bounding: BndBox; boxLin: var BndBox) {.
    importcpp: "LinBox", header: "Intf_Tool.hxx".}
proc hyprBox*(this: var IntfTool; theHypr: GpHypr; bounding: BndBox; boxHypr: var BndBox) {.
    importcpp: "HyprBox", header: "Intf_Tool.hxx".}
proc parabBox*(this: var IntfTool; theParab: GpParab; bounding: BndBox;
              boxHypr: var BndBox) {.importcpp: "ParabBox", header: "Intf_Tool.hxx".}
proc nbSegments*(this: IntfTool): StandardInteger {.noSideEffect,
    importcpp: "NbSegments", header: "Intf_Tool.hxx".}
proc beginParam*(this: IntfTool; segmentNum: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "BeginParam", header: "Intf_Tool.hxx".}
proc endParam*(this: IntfTool; segmentNum: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "EndParam", header: "Intf_Tool.hxx".}

