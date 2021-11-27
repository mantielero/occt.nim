##  Created on: 1993-07-08
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of TopOpeBRepTool_HBoxTool"
type
  HandleTopOpeBRepToolHBoxTool* = Handle[TopOpeBRepToolHBoxTool]
  TopOpeBRepToolHBoxTool* {.importcpp: "TopOpeBRepTool_HBoxTool",
                           header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient


proc newTopOpeBRepToolHBoxTool*(): TopOpeBRepToolHBoxTool {.cdecl, constructor,
    importcpp: "TopOpeBRepTool_HBoxTool(@)", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc clear*(this: var TopOpeBRepToolHBoxTool) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc addBoxes*(this: var TopOpeBRepToolHBoxTool; s: TopoDS_Shape; ts: TopAbsShapeEnum;
              ta: TopAbsShapeEnum = topAbsSHAPE) {.cdecl, importcpp: "AddBoxes",
    header: "TopOpeBRepTool_HBoxTool.hxx".}
proc addBox*(this: var TopOpeBRepToolHBoxTool; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddBox", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc computeBox*(s: TopoDS_Shape; b: var BndBox) {.cdecl,
    importcpp: "TopOpeBRepTool_HBoxTool::ComputeBox(@)", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc computeBoxOnVertices*(s: TopoDS_Shape; b: var BndBox) {.cdecl,
    importcpp: "TopOpeBRepTool_HBoxTool::ComputeBoxOnVertices(@)", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc dumpB*(b: BndBox) {.cdecl, importcpp: "TopOpeBRepTool_HBoxTool::DumpB(@)",
                      header: "TopOpeBRepTool_HBoxTool.hxx".}
proc box*(this: var TopOpeBRepToolHBoxTool; s: TopoDS_Shape): BndBox {.cdecl,
    importcpp: "Box", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc box*(this: TopOpeBRepToolHBoxTool; i: cint): BndBox {.noSideEffect, cdecl,
    importcpp: "Box", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc hasBox*(this: TopOpeBRepToolHBoxTool; s: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "HasBox", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc shape*(this: TopOpeBRepToolHBoxTool; i: cint): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc index*(this: TopOpeBRepToolHBoxTool; s: TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc extent*(this: TopOpeBRepToolHBoxTool): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc changeIMS*(this: var TopOpeBRepToolHBoxTool): var TopOpeBRepToolIndexedDataMapOfShapeBox {.
    cdecl, importcpp: "ChangeIMS", header: "TopOpeBRepTool_HBoxTool.hxx".}
proc ims*(this: TopOpeBRepToolHBoxTool): TopOpeBRepToolIndexedDataMapOfShapeBox {.
    noSideEffect, cdecl, importcpp: "IMS", header: "TopOpeBRepTool_HBoxTool.hxx".}