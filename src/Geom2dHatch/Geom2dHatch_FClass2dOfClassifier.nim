##  Created on: 1994-02-03
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1994-1999 Matra Datavision
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

## !!!Ignored construct:  # _Geom2dHatch_FClass2dOfClassifier_HeaderFile [NewLine] # _Geom2dHatch_FClass2dOfClassifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Lin2d . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TopTrans_CurveTransition . hxx > [NewLine] # < Geom2dHatch_Intersector . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TopAbs_State . hxx > [NewLine] # < TopAbs_Orientation . hxx > [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dHatch_Intersector"
discard "forward decl of gp_Lin2d"
type
  Geom2dHatchFClass2dOfClassifier* {.importcpp: "Geom2dHatch_FClass2dOfClassifier", header: "Geom2dHatch_FClass2dOfClassifier.hxx",
                                    bycopy.} = object ## ! Creates an undefined classifier.


proc constructGeom2dHatchFClass2dOfClassifier*(): Geom2dHatchFClass2dOfClassifier {.
    constructor, importcpp: "Geom2dHatch_FClass2dOfClassifier(@)",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc reset*(this: var Geom2dHatchFClass2dOfClassifier; L: Lin2d; p: float; tol: float) {.
    importcpp: "Reset", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc compare*(this: var Geom2dHatchFClass2dOfClassifier; e: Geom2dAdaptorCurve;
             `or`: TopAbsOrientation) {.importcpp: "Compare", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc parameter*(this: Geom2dHatchFClass2dOfClassifier): float {.noSideEffect,
    importcpp: "Parameter", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc intersector*(this: var Geom2dHatchFClass2dOfClassifier): var Geom2dHatchIntersector {.
    importcpp: "Intersector", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc closestIntersection*(this: Geom2dHatchFClass2dOfClassifier): int {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc state*(this: Geom2dHatchFClass2dOfClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc isHeadOrEnd*(this: Geom2dHatchFClass2dOfClassifier): bool {.noSideEffect,
    importcpp: "IsHeadOrEnd", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
## !!!Ignored construct:  # TheEdge Geom2dAdaptor_Curve [NewLine] # TheEdge_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # TheIntersector Geom2dHatch_Intersector [NewLine] # TheIntersector_hxx < Geom2dHatch_Intersector . hxx > [NewLine] # TopClass_Classifier2d Geom2dHatch_FClass2dOfClassifier [NewLine] # TopClass_Classifier2d_hxx < Geom2dHatch_FClass2dOfClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _Geom2dHatch_FClass2dOfClassifier_HeaderFile
## Error: did not expect <!!!














































