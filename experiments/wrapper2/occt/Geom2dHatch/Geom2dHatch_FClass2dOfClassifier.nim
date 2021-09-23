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

## !!!Ignored construct:  # _Geom2dHatch_FClass2dOfClassifier_HeaderFile [NewLine] # _Geom2dHatch_FClass2dOfClassifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Lin2d.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TopTrans/TopTrans_CurveTransition.hxx [NewLine] # Geom2dHatch_Intersector.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] # ../TopAbs/TopAbs_Orientation.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dHatch_Intersector"
discard "forward decl of gp_Lin2d"
type
  Geom2dHatch_FClass2dOfClassifier* {.importcpp: "Geom2dHatch_FClass2dOfClassifier", header: "Geom2dHatch_FClass2dOfClassifier.hxx",
                                     bycopy.} = object ## ! Creates an undefined classifier.


proc constructGeom2dHatch_FClass2dOfClassifier*(): Geom2dHatch_FClass2dOfClassifier {.
    constructor, importcpp: "Geom2dHatch_FClass2dOfClassifier(@)",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc Reset*(this: var Geom2dHatch_FClass2dOfClassifier; L: gp_Lin2d; P: Standard_Real;
           Tol: Standard_Real) {.importcpp: "Reset",
                               header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc Compare*(this: var Geom2dHatch_FClass2dOfClassifier; E: Geom2dAdaptor_Curve;
             Or: TopAbs_Orientation) {.importcpp: "Compare", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc Parameter*(this: Geom2dHatch_FClass2dOfClassifier): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc Intersector*(this: var Geom2dHatch_FClass2dOfClassifier): var Geom2dHatch_Intersector {.
    importcpp: "Intersector", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc ClosestIntersection*(this: Geom2dHatch_FClass2dOfClassifier): Standard_Integer {.
    noSideEffect, importcpp: "ClosestIntersection",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc State*(this: Geom2dHatch_FClass2dOfClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
proc IsHeadOrEnd*(this: Geom2dHatch_FClass2dOfClassifier): Standard_Boolean {.
    noSideEffect, importcpp: "IsHeadOrEnd",
    header: "Geom2dHatch_FClass2dOfClassifier.hxx".}
## !!!Ignored construct:  # TheEdge Geom2dAdaptor_Curve [NewLine] # TheEdge_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # TheIntersector Geom2dHatch_Intersector [NewLine] # TheIntersector_hxx < Geom2dHatch_Intersector . hxx > [NewLine] # TopClass_Classifier2d Geom2dHatch_FClass2dOfClassifier [NewLine] # TopClass_Classifier2d_hxx < Geom2dHatch_FClass2dOfClassifier . hxx > [NewLine] # < TopClass_Classifier2d . lxx > [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier2d [NewLine] # TopClass_Classifier2d_hxx [NewLine] #  _Geom2dHatch_FClass2dOfClassifier_HeaderFile [NewLine]
## Error: did not expect <!!!
