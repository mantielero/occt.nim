##  Created on: 2001-02-26
##  Created by: Peter KURNEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of IntTools_Range"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of IntTools_CommonPrt"
type
  IntToolsEdgeFace* {.importcpp: "IntTools_EdgeFace",
                     header: "IntTools_EdgeFace.hxx", bycopy.} = object ## ! @name Constructors
                                                                   ## ! Empty Constructor
                                                                   ## ! @name
                                                                   ## Setters/Getters
                                                                   ## ! Sets the edge for intersection
                                                                   ## ! @name Performing the operation
                                                                   ## ! Launches the process
                                                                   ## ! @name Checking validity of the intersection
                                                                   ## ! Returns TRUE if computation was successful.
                                                                   ## ! Otherwise returns FALSE.
                                                                   ## ! @name Obtaining results
                                                                   ## ! Returns resulting common parts
                                                                   ## ! @name Protected methods performing the intersection
    ## !< Minimal distance found


proc constructIntToolsEdgeFace*(): IntToolsEdgeFace {.constructor,
    importcpp: "IntTools_EdgeFace(@)", header: "IntTools_EdgeFace.hxx".}
proc setEdge*(this: var IntToolsEdgeFace; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge", header: "IntTools_EdgeFace.hxx".}
proc edge*(this: IntToolsEdgeFace): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "IntTools_EdgeFace.hxx".}
proc setFace*(this: var IntToolsEdgeFace; theFace: TopoDS_Face) {.
    importcpp: "SetFace", header: "IntTools_EdgeFace.hxx".}
proc face*(this: IntToolsEdgeFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "IntTools_EdgeFace.hxx".}
proc setRange*(this: var IntToolsEdgeFace; theRange: IntToolsRange) {.
    importcpp: "SetRange", header: "IntTools_EdgeFace.hxx".}
proc setRange*(this: var IntToolsEdgeFace; theFirst: StandardReal;
              theLast: StandardReal) {.importcpp: "SetRange",
                                     header: "IntTools_EdgeFace.hxx".}
proc range*(this: IntToolsEdgeFace): IntToolsRange {.noSideEffect,
    importcpp: "Range", header: "IntTools_EdgeFace.hxx".}
proc setContext*(this: var IntToolsEdgeFace; theContext: Handle[IntToolsContext]) {.
    importcpp: "SetContext", header: "IntTools_EdgeFace.hxx".}
proc context*(this: IntToolsEdgeFace): Handle[IntToolsContext] {.noSideEffect,
    importcpp: "Context", header: "IntTools_EdgeFace.hxx".}
proc setFuzzyValue*(this: var IntToolsEdgeFace; theFuzz: StandardReal) {.
    importcpp: "SetFuzzyValue", header: "IntTools_EdgeFace.hxx".}
proc fuzzyValue*(this: IntToolsEdgeFace): StandardReal {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_EdgeFace.hxx".}
proc useQuickCoincidenceCheck*(this: var IntToolsEdgeFace; theFlag: StandardBoolean) {.
    importcpp: "UseQuickCoincidenceCheck", header: "IntTools_EdgeFace.hxx".}
proc isCoincidenceCheckedQuickly*(this: var IntToolsEdgeFace): StandardBoolean {.
    importcpp: "IsCoincidenceCheckedQuickly", header: "IntTools_EdgeFace.hxx".}
proc perform*(this: var IntToolsEdgeFace) {.importcpp: "Perform",
                                        header: "IntTools_EdgeFace.hxx".}
proc isDone*(this: IntToolsEdgeFace): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_EdgeFace.hxx".}
proc errorStatus*(this: IntToolsEdgeFace): StandardInteger {.noSideEffect,
    importcpp: "ErrorStatus", header: "IntTools_EdgeFace.hxx".}
proc commonParts*(this: IntToolsEdgeFace): IntToolsSequenceOfCommonPrts {.
    noSideEffect, importcpp: "CommonParts", header: "IntTools_EdgeFace.hxx".}
proc minimalDistance*(this: IntToolsEdgeFace): StandardReal {.noSideEffect,
    importcpp: "MinimalDistance", header: "IntTools_EdgeFace.hxx".}

