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
  HandleC1C1* = Handle[XSAlgoAlgoContainer]
  XSAlgoAlgoContainer* {.importcpp: "XSAlgo_AlgoContainer",
                        header: "XSAlgo_AlgoContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructXSAlgoAlgoContainer*(): XSAlgoAlgoContainer {.constructor,
    importcpp: "XSAlgo_AlgoContainer(@)", header: "XSAlgo_AlgoContainer.hxx".}
proc setToolContainer*(this: var XSAlgoAlgoContainer;
                      tc: Handle[XSAlgoToolContainer]) {.
    importcpp: "SetToolContainer", header: "XSAlgo_AlgoContainer.hxx".}
proc toolContainer*(this: XSAlgoAlgoContainer): Handle[XSAlgoToolContainer] {.
    noSideEffect, importcpp: "ToolContainer", header: "XSAlgo_AlgoContainer.hxx".}
proc prepareForTransfer*(this: XSAlgoAlgoContainer) {.noSideEffect,
    importcpp: "PrepareForTransfer", header: "XSAlgo_AlgoContainer.hxx".}
proc processShape*(this: XSAlgoAlgoContainer; shape: TopoDS_Shape; prec: cfloat;
                  maxTol: cfloat; rscfile: StandardCString; seq: StandardCString;
                  info: var Handle[StandardTransient];
                  theProgress: MessageProgressRange = messageProgressRange();
                  nonManifold: bool = false): TopoDS_Shape {.noSideEffect,
    importcpp: "ProcessShape", header: "XSAlgo_AlgoContainer.hxx".}
proc checkPCurve*(this: XSAlgoAlgoContainer; edge: TopoDS_Edge; face: TopoDS_Face;
                 preci: cfloat; isSeam: bool): bool {.noSideEffect,
    importcpp: "CheckPCurve", header: "XSAlgo_AlgoContainer.hxx".}
proc mergeTransferInfo*(this: XSAlgoAlgoContainer;
                       tp: Handle[TransferTransientProcess];
                       info: Handle[StandardTransient]; startTPitem: cint = 1) {.
    noSideEffect, importcpp: "MergeTransferInfo",
    header: "XSAlgo_AlgoContainer.hxx".}
proc mergeTransferInfo*(this: XSAlgoAlgoContainer;
                       fp: Handle[TransferFinderProcess];
                       info: Handle[StandardTransient]) {.noSideEffect,
    importcpp: "MergeTransferInfo", header: "XSAlgo_AlgoContainer.hxx".}
type
  XSAlgoAlgoContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XSAlgo_AlgoContainer::get_type_name(@)",
                            header: "XSAlgo_AlgoContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSAlgo_AlgoContainer::get_type_descriptor(@)",
    header: "XSAlgo_AlgoContainer.hxx".}
proc dynamicType*(this: XSAlgoAlgoContainer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSAlgo_AlgoContainer.hxx".}

























