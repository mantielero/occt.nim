##  Created on: 2000-01-19
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Real, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Message/Message_ProgressRange

discard "forward decl of XSAlgo_ToolContainer"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of XSAlgo_AlgoContainer"
discard "forward decl of XSAlgo_AlgoContainer"
type
  Handle_XSAlgo_AlgoContainer* = handle[XSAlgo_AlgoContainer]
  XSAlgo_AlgoContainer* {.importcpp: "XSAlgo_AlgoContainer",
                         header: "XSAlgo_AlgoContainer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructXSAlgo_AlgoContainer*(): XSAlgo_AlgoContainer {.constructor,
    importcpp: "XSAlgo_AlgoContainer(@)", header: "XSAlgo_AlgoContainer.hxx".}
proc SetToolContainer*(this: var XSAlgo_AlgoContainer;
                      TC: handle[XSAlgo_ToolContainer]) {.
    importcpp: "SetToolContainer", header: "XSAlgo_AlgoContainer.hxx".}
proc ToolContainer*(this: XSAlgo_AlgoContainer): handle[XSAlgo_ToolContainer] {.
    noSideEffect, importcpp: "ToolContainer", header: "XSAlgo_AlgoContainer.hxx".}
proc PrepareForTransfer*(this: XSAlgo_AlgoContainer) {.noSideEffect,
    importcpp: "PrepareForTransfer", header: "XSAlgo_AlgoContainer.hxx".}
proc ProcessShape*(this: XSAlgo_AlgoContainer; shape: TopoDS_Shape;
                  Prec: Standard_Real; MaxTol: Standard_Real;
                  rscfile: Standard_CString; seq: Standard_CString;
                  info: var handle[Standard_Transient];
                  theProgress: Message_ProgressRange = Message_ProgressRange();
                  NonManifold: Standard_Boolean = Standard_False): TopoDS_Shape {.
    noSideEffect, importcpp: "ProcessShape", header: "XSAlgo_AlgoContainer.hxx".}
proc CheckPCurve*(this: XSAlgo_AlgoContainer; edge: TopoDS_Edge; face: TopoDS_Face;
                 preci: Standard_Real; isSeam: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "CheckPCurve", header: "XSAlgo_AlgoContainer.hxx".}
proc MergeTransferInfo*(this: XSAlgo_AlgoContainer;
                       TP: handle[Transfer_TransientProcess];
                       info: handle[Standard_Transient];
                       startTPitem: Standard_Integer = 1) {.noSideEffect,
    importcpp: "MergeTransferInfo", header: "XSAlgo_AlgoContainer.hxx".}
proc MergeTransferInfo*(this: XSAlgo_AlgoContainer;
                       FP: handle[Transfer_FinderProcess];
                       info: handle[Standard_Transient]) {.noSideEffect,
    importcpp: "MergeTransferInfo", header: "XSAlgo_AlgoContainer.hxx".}
type
  XSAlgo_AlgoContainerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XSAlgo_AlgoContainer::get_type_name(@)",
                              header: "XSAlgo_AlgoContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSAlgo_AlgoContainer::get_type_descriptor(@)",
    header: "XSAlgo_AlgoContainer.hxx".}
proc DynamicType*(this: XSAlgo_AlgoContainer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XSAlgo_AlgoContainer.hxx".}