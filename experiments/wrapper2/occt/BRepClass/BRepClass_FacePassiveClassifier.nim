##  Created on: 1992-11-18
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _BRepClass_FacePassiveClassifier_HeaderFile [NewLine] # _BRepClass_FacePassiveClassifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Lin2d.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TopTrans/TopTrans_CurveTransition.hxx [NewLine] # BRepClass_Intersector.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] # ../TopAbs/TopAbs_Orientation.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass_Edge"
discard "forward decl of BRepClass_Intersector"
discard "forward decl of gp_Lin2d"
type
  BRepClass_FacePassiveClassifier* {.importcpp: "BRepClass_FacePassiveClassifier", header: "BRepClass_FacePassiveClassifier.hxx",
                                    bycopy.} = object ## ! Creates an undefined classifier.


proc constructBRepClass_FacePassiveClassifier*(): BRepClass_FacePassiveClassifier {.
    constructor, importcpp: "BRepClass_FacePassiveClassifier(@)",
    header: "BRepClass_FacePassiveClassifier.hxx".}
proc Reset*(this: var BRepClass_FacePassiveClassifier; L: gp_Lin2d; P: Standard_Real;
           Tol: Standard_Real) {.importcpp: "Reset",
                               header: "BRepClass_FacePassiveClassifier.hxx".}
proc Compare*(this: var BRepClass_FacePassiveClassifier; E: BRepClass_Edge;
             Or: TopAbs_Orientation) {.importcpp: "Compare", header: "BRepClass_FacePassiveClassifier.hxx".}
proc Parameter*(this: BRepClass_FacePassiveClassifier): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "BRepClass_FacePassiveClassifier.hxx".}
proc Intersector*(this: var BRepClass_FacePassiveClassifier): var BRepClass_Intersector {.
    importcpp: "Intersector", header: "BRepClass_FacePassiveClassifier.hxx".}
proc ClosestIntersection*(this: BRepClass_FacePassiveClassifier): Standard_Integer {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "BRepClass_FacePassiveClassifier.hxx".}
proc State*(this: BRepClass_FacePassiveClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass_FacePassiveClassifier.hxx".}
proc IsHeadOrEnd*(this: BRepClass_FacePassiveClassifier): Standard_Boolean {.
    noSideEffect, importcpp: "IsHeadOrEnd",
    header: "BRepClass_FacePassiveClassifier.hxx".}
## !!!Ignored construct:  # TheEdge BRepClass_Edge [NewLine] # TheEdge_hxx < BRepClass_Edge . hxx > [NewLine] # TheIntersector BRepClass_Intersector [NewLine] # TheIntersector_hxx < BRepClass_Intersector . hxx > [NewLine] # TopClass_Classifier2d BRepClass_FacePassiveClassifier [NewLine] # TopClass_Classifier2d_hxx < BRepClass_FacePassiveClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _BRepClass_FacePassiveClassifier_HeaderFile [NewLine]
## Error: did not expect <!!!
