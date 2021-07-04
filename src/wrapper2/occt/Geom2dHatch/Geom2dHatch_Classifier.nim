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

## !!!Ignored construct:  # _Geom2dHatch_Classifier_HeaderFile [NewLine] # _Geom2dHatch_Classifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # Geom2dHatch_FClass2dOfClassifier.hxx [NewLine] # ../Geom2dAdaptor/Geom2dAdaptor_Curve.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../IntRes2d/IntRes2d_Position.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of Geom2dHatch_Elements"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dHatch_Intersector"
discard "forward decl of Geom2dHatch_FClass2dOfClassifier"
discard "forward decl of gp_Pnt2d"
type
  Geom2dHatch_Classifier* {.importcpp: "Geom2dHatch_Classifier",
                           header: "Geom2dHatch_Classifier.hxx", bycopy.} = object ## !
                                                                              ## Empty
                                                                              ## constructor,
                                                                              ## undefined
                                                                              ## algorithm.


proc constructGeom2dHatch_Classifier*(): Geom2dHatch_Classifier {.constructor,
    importcpp: "Geom2dHatch_Classifier(@)", header: "Geom2dHatch_Classifier.hxx".}
proc constructGeom2dHatch_Classifier*(F: var Geom2dHatch_Elements; P: gp_Pnt2d;
                                     Tol: Standard_Real): Geom2dHatch_Classifier {.
    constructor, importcpp: "Geom2dHatch_Classifier(@)",
    header: "Geom2dHatch_Classifier.hxx".}
proc Perform*(this: var Geom2dHatch_Classifier; F: var Geom2dHatch_Elements;
             P: gp_Pnt2d; Tol: Standard_Real) {.importcpp: "Perform",
    header: "Geom2dHatch_Classifier.hxx".}
proc State*(this: Geom2dHatch_Classifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "Geom2dHatch_Classifier.hxx".}
proc Rejected*(this: Geom2dHatch_Classifier): Standard_Boolean {.noSideEffect,
    importcpp: "Rejected", header: "Geom2dHatch_Classifier.hxx".}
proc NoWires*(this: Geom2dHatch_Classifier): Standard_Boolean {.noSideEffect,
    importcpp: "NoWires", header: "Geom2dHatch_Classifier.hxx".}
proc Edge*(this: Geom2dHatch_Classifier): Geom2dAdaptor_Curve {.noSideEffect,
    importcpp: "Edge", header: "Geom2dHatch_Classifier.hxx".}
proc EdgeParameter*(this: Geom2dHatch_Classifier): Standard_Real {.noSideEffect,
    importcpp: "EdgeParameter", header: "Geom2dHatch_Classifier.hxx".}
proc Position*(this: Geom2dHatch_Classifier): IntRes2d_Position {.noSideEffect,
    importcpp: "Position", header: "Geom2dHatch_Classifier.hxx".}
## !!!Ignored construct:  # TheFaceExplorer Geom2dHatch_Elements [NewLine] # TheFaceExplorer_hxx < Geom2dHatch_Elements . hxx > [NewLine] # TheEdge Geom2dAdaptor_Curve [NewLine] # TheEdge_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # TheIntersection2d Geom2dHatch_Intersector [NewLine] # TheIntersection2d_hxx < Geom2dHatch_Intersector . hxx > [NewLine] # TopClass_FClass2d Geom2dHatch_FClass2dOfClassifier [NewLine] # TopClass_FClass2d_hxx < Geom2dHatch_FClass2dOfClassifier . hxx > [NewLine] # TopClass_FaceClassifier Geom2dHatch_Classifier [NewLine] # TopClass_FaceClassifier_hxx < Geom2dHatch_Classifier . hxx > [NewLine] # < TopClass_FaceClassifier . lxx > [NewLine] # TheFaceExplorer [NewLine] # TheFaceExplorer_hxx [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersection2d [NewLine] # TheIntersection2d_hxx [NewLine] # TopClass_FClass2d [NewLine] # TopClass_FClass2d_hxx [NewLine] # TopClass_FaceClassifier [NewLine] # TopClass_FaceClassifier_hxx [NewLine] #  _Geom2dHatch_Classifier_HeaderFile [NewLine]
## Error: did not expect <!!!
