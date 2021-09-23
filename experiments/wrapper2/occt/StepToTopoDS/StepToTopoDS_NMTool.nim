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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepToTopoDS_DataMapOfRI,
  StepToTopoDS_DataMapOfRINames, ../TopTools/TopTools_ListOfShape,
  ../Standard/Standard_Boolean

discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_NMTool* {.importcpp: "StepToTopoDS_NMTool",
                        header: "StepToTopoDS_NMTool.hxx", bycopy.} = object


proc constructStepToTopoDS_NMTool*(): StepToTopoDS_NMTool {.constructor,
    importcpp: "StepToTopoDS_NMTool(@)", header: "StepToTopoDS_NMTool.hxx".}
proc constructStepToTopoDS_NMTool*(MapOfRI: StepToTopoDS_DataMapOfRI;
                                  MapOfRINames: StepToTopoDS_DataMapOfRINames): StepToTopoDS_NMTool {.
    constructor, importcpp: "StepToTopoDS_NMTool(@)",
    header: "StepToTopoDS_NMTool.hxx".}
proc Init*(this: var StepToTopoDS_NMTool; MapOfRI: StepToTopoDS_DataMapOfRI;
          MapOfRINames: StepToTopoDS_DataMapOfRINames) {.importcpp: "Init",
    header: "StepToTopoDS_NMTool.hxx".}
proc SetActive*(this: var StepToTopoDS_NMTool; isActive: Standard_Boolean) {.
    importcpp: "SetActive", header: "StepToTopoDS_NMTool.hxx".}
proc IsActive*(this: var StepToTopoDS_NMTool): Standard_Boolean {.
    importcpp: "IsActive", header: "StepToTopoDS_NMTool.hxx".}
proc CleanUp*(this: var StepToTopoDS_NMTool) {.importcpp: "CleanUp",
    header: "StepToTopoDS_NMTool.hxx".}
proc IsBound*(this: var StepToTopoDS_NMTool; RI: handle[StepRepr_RepresentationItem]): Standard_Boolean {.
    importcpp: "IsBound", header: "StepToTopoDS_NMTool.hxx".}
proc IsBound*(this: var StepToTopoDS_NMTool; RIName: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "IsBound", header: "StepToTopoDS_NMTool.hxx".}
proc Bind*(this: var StepToTopoDS_NMTool; RI: handle[StepRepr_RepresentationItem];
          S: TopoDS_Shape) {.importcpp: "Bind", header: "StepToTopoDS_NMTool.hxx".}
proc Bind*(this: var StepToTopoDS_NMTool; RIName: TCollection_AsciiString;
          S: TopoDS_Shape) {.importcpp: "Bind", header: "StepToTopoDS_NMTool.hxx".}
proc Find*(this: var StepToTopoDS_NMTool; RI: handle[StepRepr_RepresentationItem]): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_NMTool.hxx".}
proc Find*(this: var StepToTopoDS_NMTool; RIName: TCollection_AsciiString): TopoDS_Shape {.
    importcpp: "Find", header: "StepToTopoDS_NMTool.hxx".}
proc RegisterNMEdge*(this: var StepToTopoDS_NMTool; Edge: TopoDS_Shape) {.
    importcpp: "RegisterNMEdge", header: "StepToTopoDS_NMTool.hxx".}
proc IsSuspectedAsClosing*(this: var StepToTopoDS_NMTool; BaseShell: TopoDS_Shape;
                          SuspectedShell: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsSuspectedAsClosing", header: "StepToTopoDS_NMTool.hxx".}
proc IsPureNMShell*(this: var StepToTopoDS_NMTool; Shell: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsPureNMShell", header: "StepToTopoDS_NMTool.hxx".}
proc SetIDEASCase*(this: var StepToTopoDS_NMTool; IDEASCase: Standard_Boolean) {.
    importcpp: "SetIDEASCase", header: "StepToTopoDS_NMTool.hxx".}
proc IsIDEASCase*(this: var StepToTopoDS_NMTool): Standard_Boolean {.
    importcpp: "IsIDEASCase", header: "StepToTopoDS_NMTool.hxx".}