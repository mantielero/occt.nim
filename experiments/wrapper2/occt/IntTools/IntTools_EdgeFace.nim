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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../BRepAdaptor/BRepAdaptor_Curve, ../BRepAdaptor/BRepAdaptor_Surface,
  ../Standard/Standard_Boolean, IntTools_SequenceOfRanges,
  IntTools_SequenceOfCommonPrts, IntTools_Range

discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of IntTools_Range"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of IntTools_CommonPrt"
type
  IntTools_EdgeFace* {.importcpp: "IntTools_EdgeFace",
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


proc constructIntTools_EdgeFace*(): IntTools_EdgeFace {.constructor,
    importcpp: "IntTools_EdgeFace(@)", header: "IntTools_EdgeFace.hxx".}
proc SetEdge*(this: var IntTools_EdgeFace; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge", header: "IntTools_EdgeFace.hxx".}
proc Edge*(this: IntTools_EdgeFace): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "IntTools_EdgeFace.hxx".}
proc SetFace*(this: var IntTools_EdgeFace; theFace: TopoDS_Face) {.
    importcpp: "SetFace", header: "IntTools_EdgeFace.hxx".}
proc Face*(this: IntTools_EdgeFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "IntTools_EdgeFace.hxx".}
proc SetRange*(this: var IntTools_EdgeFace; theRange: IntTools_Range) {.
    importcpp: "SetRange", header: "IntTools_EdgeFace.hxx".}
proc SetRange*(this: var IntTools_EdgeFace; theFirst: Standard_Real;
              theLast: Standard_Real) {.importcpp: "SetRange",
                                      header: "IntTools_EdgeFace.hxx".}
proc Range*(this: IntTools_EdgeFace): IntTools_Range {.noSideEffect,
    importcpp: "Range", header: "IntTools_EdgeFace.hxx".}
proc SetContext*(this: var IntTools_EdgeFace; theContext: handle[IntTools_Context]) {.
    importcpp: "SetContext", header: "IntTools_EdgeFace.hxx".}
proc Context*(this: IntTools_EdgeFace): handle[IntTools_Context] {.noSideEffect,
    importcpp: "Context", header: "IntTools_EdgeFace.hxx".}
proc SetFuzzyValue*(this: var IntTools_EdgeFace; theFuzz: Standard_Real) {.
    importcpp: "SetFuzzyValue", header: "IntTools_EdgeFace.hxx".}
proc FuzzyValue*(this: IntTools_EdgeFace): Standard_Real {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_EdgeFace.hxx".}
proc UseQuickCoincidenceCheck*(this: var IntTools_EdgeFace;
                              theFlag: Standard_Boolean) {.
    importcpp: "UseQuickCoincidenceCheck", header: "IntTools_EdgeFace.hxx".}
proc IsCoincidenceCheckedQuickly*(this: var IntTools_EdgeFace): Standard_Boolean {.
    importcpp: "IsCoincidenceCheckedQuickly", header: "IntTools_EdgeFace.hxx".}
proc Perform*(this: var IntTools_EdgeFace) {.importcpp: "Perform",
    header: "IntTools_EdgeFace.hxx".}
proc IsDone*(this: IntTools_EdgeFace): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_EdgeFace.hxx".}
proc ErrorStatus*(this: IntTools_EdgeFace): Standard_Integer {.noSideEffect,
    importcpp: "ErrorStatus", header: "IntTools_EdgeFace.hxx".}
proc CommonParts*(this: IntTools_EdgeFace): IntTools_SequenceOfCommonPrts {.
    noSideEffect, importcpp: "CommonParts", header: "IntTools_EdgeFace.hxx".}
proc MinimalDistance*(this: IntTools_EdgeFace): Standard_Real {.noSideEffect,
    importcpp: "MinimalDistance", header: "IntTools_EdgeFace.hxx".}