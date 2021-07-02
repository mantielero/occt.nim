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

## !!!Ignored construct:  # _BRepClass_FClass2dOfFClassifier_HeaderFile [NewLine] # _BRepClass_FClass2dOfFClassifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Lin2d . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TopTrans_CurveTransition . hxx > [NewLine] # < BRepClass_Intersector . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TopAbs_State . hxx > [NewLine] # < TopAbs_Orientation . hxx > [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass_Edge"
discard "forward decl of BRepClass_Intersector"
discard "forward decl of gp_Lin2d"
type
  BRepClassFClass2dOfFClassifier* {.importcpp: "BRepClass_FClass2dOfFClassifier", header: "BRepClass_FClass2dOfFClassifier.hxx",
                                   bycopy.} = object ## ! Creates an undefined classifier.


proc constructBRepClassFClass2dOfFClassifier*(): BRepClassFClass2dOfFClassifier {.
    constructor, importcpp: "BRepClass_FClass2dOfFClassifier(@)",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc reset*(this: var BRepClassFClass2dOfFClassifier; L: GpLin2d; p: StandardReal;
           tol: StandardReal) {.importcpp: "Reset",
                              header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc compare*(this: var BRepClassFClass2dOfFClassifier; e: BRepClassEdge;
             `or`: TopAbsOrientation) {.importcpp: "Compare", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc parameter*(this: BRepClassFClass2dOfFClassifier): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc intersector*(this: var BRepClassFClass2dOfFClassifier): var BRepClassIntersector {.
    importcpp: "Intersector", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc closestIntersection*(this: BRepClassFClass2dOfFClassifier): StandardInteger {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc state*(this: BRepClassFClass2dOfFClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc isHeadOrEnd*(this: BRepClassFClass2dOfFClassifier): StandardBoolean {.
    noSideEffect, importcpp: "IsHeadOrEnd",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
## !!!Ignored construct:  # TheEdge BRepClass_Edge [NewLine] # TheEdge_hxx < BRepClass_Edge . hxx > [NewLine] # TheIntersector BRepClass_Intersector [NewLine] # TheIntersector_hxx < BRepClass_Intersector . hxx > [NewLine] # TopClass_Classifier2d BRepClass_FClass2dOfFClassifier [NewLine] # TopClass_Classifier2d_hxx < BRepClass_FClass2dOfFClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _BRepClass_FClass2dOfFClassifier_HeaderFile
## Error: did not expect <!!!


