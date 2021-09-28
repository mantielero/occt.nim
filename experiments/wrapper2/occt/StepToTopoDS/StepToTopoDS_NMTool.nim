##  Created on: 2010-11-15
##  Created by: Sergey SLYADNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
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

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_NMTool* {.importcpp: "StepToTopoDS_NMTool",
                        header: "StepToTopoDS_NMTool.hxx", bycopy.} = object


proc constructStepToTopoDS_NMTool*(): StepToTopoDS_NMTool {.constructor,
    importcpp: "StepToTopoDS_NMTool(@)", header: "StepToTopoDS_NMTool.hxx".}
proc constructStepToTopoDS_NMTool*(mapOfRI: StepToTopoDS_DataMapOfRI;
                                  mapOfRINames: StepToTopoDS_DataMapOfRINames): StepToTopoDS_NMTool {.
    constructor, importcpp: "StepToTopoDS_NMTool(@)",
    header: "StepToTopoDS_NMTool.hxx".}
proc init*(this: var StepToTopoDS_NMTool; mapOfRI: StepToTopoDS_DataMapOfRI;
          mapOfRINames: StepToTopoDS_DataMapOfRINames) {.importcpp: "Init",
    header: "StepToTopoDS_NMTool.hxx".}
proc setActive*(this: var StepToTopoDS_NMTool; isActive: bool) {.
    importcpp: "SetActive", header: "StepToTopoDS_NMTool.hxx".}
proc isActive*(this: var StepToTopoDS_NMTool): bool {.importcpp: "IsActive",
    header: "StepToTopoDS_NMTool.hxx".}
proc cleanUp*(this: var StepToTopoDS_NMTool) {.importcpp: "CleanUp",
    header: "StepToTopoDS_NMTool.hxx".}
proc isBound*(this: var StepToTopoDS_NMTool; ri: Handle[StepReprRepresentationItem]): bool {.
    importcpp: "IsBound", header: "StepToTopoDS_NMTool.hxx".}
proc isBound*(this: var StepToTopoDS_NMTool; rIName: TCollectionAsciiString): bool {.
    importcpp: "IsBound", header: "StepToTopoDS_NMTool.hxx".}
proc `bind`*(this: var StepToTopoDS_NMTool; ri: Handle[StepReprRepresentationItem];
            s: TopoDS_Shape) {.importcpp: "Bind", header: "StepToTopoDS_NMTool.hxx".}
proc `bind`*(this: var StepToTopoDS_NMTool; rIName: TCollectionAsciiString;
            s: TopoDS_Shape) {.importcpp: "Bind", header: "StepToTopoDS_NMTool.hxx".}
proc find*(this: var StepToTopoDS_NMTool; ri: Handle[StepReprRepresentationItem]): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_NMTool.hxx".}
proc find*(this: var StepToTopoDS_NMTool; rIName: TCollectionAsciiString): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_NMTool.hxx".}
proc registerNMEdge*(this: var StepToTopoDS_NMTool; edge: TopoDS_Shape) {.
    importcpp: "RegisterNMEdge", header: "StepToTopoDS_NMTool.hxx".}
proc isSuspectedAsClosing*(this: var StepToTopoDS_NMTool; baseShell: TopoDS_Shape;
                          suspectedShell: TopoDS_Shape): bool {.
    importcpp: "IsSuspectedAsClosing", header: "StepToTopoDS_NMTool.hxx".}
proc isPureNMShell*(this: var StepToTopoDS_NMTool; shell: TopoDS_Shape): bool {.
    importcpp: "IsPureNMShell", header: "StepToTopoDS_NMTool.hxx".}
proc setIDEASCase*(this: var StepToTopoDS_NMTool; iDEASCase: bool) {.
    importcpp: "SetIDEASCase", header: "StepToTopoDS_NMTool.hxx".}
proc isIDEASCase*(this: var StepToTopoDS_NMTool): bool {.importcpp: "IsIDEASCase",
    header: "StepToTopoDS_NMTool.hxx".}

























