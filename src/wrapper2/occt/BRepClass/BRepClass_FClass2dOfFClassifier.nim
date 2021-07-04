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

## !!!Ignored construct:  # _BRepClass_FClass2dOfFClassifier_HeaderFile [NewLine] # _BRepClass_FClass2dOfFClassifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Lin2d.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TopTrans/TopTrans_CurveTransition.hxx [NewLine] # BRepClass_Intersector.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] # ../TopAbs/TopAbs_Orientation.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass_Edge"
discard "forward decl of BRepClass_Intersector"
discard "forward decl of gp_Lin2d"
type
  BRepClass_FClass2dOfFClassifier* {.importcpp: "BRepClass_FClass2dOfFClassifier", header: "BRepClass_FClass2dOfFClassifier.hxx",
                                    bycopy.} = object ## ! Creates an undefined classifier.


proc constructBRepClass_FClass2dOfFClassifier*(): BRepClass_FClass2dOfFClassifier {.
    constructor, importcpp: "BRepClass_FClass2dOfFClassifier(@)",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc Reset*(this: var BRepClass_FClass2dOfFClassifier; L: gp_Lin2d; P: Standard_Real;
           Tol: Standard_Real) {.importcpp: "Reset",
                               header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc Compare*(this: var BRepClass_FClass2dOfFClassifier; E: BRepClass_Edge;
             Or: TopAbs_Orientation) {.importcpp: "Compare", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc Parameter*(this: BRepClass_FClass2dOfFClassifier): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc Intersector*(this: var BRepClass_FClass2dOfFClassifier): var BRepClass_Intersector {.
    importcpp: "Intersector", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc ClosestIntersection*(this: BRepClass_FClass2dOfFClassifier): Standard_Integer {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc State*(this: BRepClass_FClass2dOfFClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass_FClass2dOfFClassifier.hxx".}
proc IsHeadOrEnd*(this: BRepClass_FClass2dOfFClassifier): Standard_Boolean {.
    noSideEffect, importcpp: "IsHeadOrEnd",
    header: "BRepClass_FClass2dOfFClassifier.hxx".}
## !!!Ignored construct:  # TheEdge BRepClass_Edge [NewLine] # TheEdge_hxx < BRepClass_Edge . hxx > [NewLine] # TheIntersector BRepClass_Intersector [NewLine] # TheIntersector_hxx < BRepClass_Intersector . hxx > [NewLine] # TopClass_Classifier2d BRepClass_FClass2dOfFClassifier [NewLine] # TopClass_Classifier2d_hxx < BRepClass_FClass2dOfFClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _BRepClass_FClass2dOfFClassifier_HeaderFile [NewLine]
## Error: did not expect <!!!
