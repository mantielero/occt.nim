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

## !!!Ignored construct:  # _BRepClass_FacePassiveClassifier_HeaderFile [NewLine] # _BRepClass_FacePassiveClassifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Lin2d . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TopTrans_CurveTransition . hxx > [NewLine] # < BRepClass_Intersector . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TopAbs_State . hxx > [NewLine] # < TopAbs_Orientation . hxx > [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass_Edge"
discard "forward decl of BRepClass_Intersector"
discard "forward decl of gp_Lin2d"
type
  BRepClassFacePassiveClassifier* {.importcpp: "BRepClass_FacePassiveClassifier", header: "BRepClass_FacePassiveClassifier.hxx",
                                   bycopy.} = object ## ! Creates an undefined classifier.


proc constructBRepClassFacePassiveClassifier*(): BRepClassFacePassiveClassifier {.
    constructor, importcpp: "BRepClass_FacePassiveClassifier(@)",
    header: "BRepClass_FacePassiveClassifier.hxx".}
proc reset*(this: var BRepClassFacePassiveClassifier; L: GpLin2d; p: StandardReal;
           tol: StandardReal) {.importcpp: "Reset",
                              header: "BRepClass_FacePassiveClassifier.hxx".}
proc compare*(this: var BRepClassFacePassiveClassifier; e: BRepClassEdge;
             `or`: TopAbsOrientation) {.importcpp: "Compare", header: "BRepClass_FacePassiveClassifier.hxx".}
proc parameter*(this: BRepClassFacePassiveClassifier): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "BRepClass_FacePassiveClassifier.hxx".}
proc intersector*(this: var BRepClassFacePassiveClassifier): var BRepClassIntersector {.
    importcpp: "Intersector", header: "BRepClass_FacePassiveClassifier.hxx".}
proc closestIntersection*(this: BRepClassFacePassiveClassifier): StandardInteger {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "BRepClass_FacePassiveClassifier.hxx".}
proc state*(this: BRepClassFacePassiveClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "BRepClass_FacePassiveClassifier.hxx".}
proc isHeadOrEnd*(this: BRepClassFacePassiveClassifier): StandardBoolean {.
    noSideEffect, importcpp: "IsHeadOrEnd",
    header: "BRepClass_FacePassiveClassifier.hxx".}
## !!!Ignored construct:  # TheEdge BRepClass_Edge [NewLine] # TheEdge_hxx < BRepClass_Edge . hxx > [NewLine] # TheIntersector BRepClass_Intersector [NewLine] # TheIntersector_hxx < BRepClass_Intersector . hxx > [NewLine] # TopClass_Classifier2d BRepClass_FacePassiveClassifier [NewLine] # TopClass_Classifier2d_hxx < BRepClass_FacePassiveClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _BRepClass_FacePassiveClassifier_HeaderFile
## Error: did not expect <!!!


