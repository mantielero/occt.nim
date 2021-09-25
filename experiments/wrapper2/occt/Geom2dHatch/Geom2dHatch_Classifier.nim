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

## !!!Ignored construct:  # _Geom2dHatch_Classifier_HeaderFile [NewLine] # _Geom2dHatch_Classifier_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Geom2dHatch_FClass2dOfClassifier . hxx > [NewLine] # < Geom2dAdaptor_Curve . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < IntRes2d_Position . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < TopAbs_State . hxx > [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of Geom2dHatch_Elements"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dHatch_Intersector"
discard "forward decl of Geom2dHatch_FClass2dOfClassifier"
discard "forward decl of gp_Pnt2d"
type
  Geom2dHatchClassifier* {.importcpp: "Geom2dHatch_Classifier",
                          header: "Geom2dHatch_Classifier.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor,
                                                                             ## undefined
                                                                             ## algorithm.


proc constructGeom2dHatchClassifier*(): Geom2dHatchClassifier {.constructor,
    importcpp: "Geom2dHatch_Classifier(@)", header: "Geom2dHatch_Classifier.hxx".}
proc constructGeom2dHatchClassifier*(f: var Geom2dHatchElements; p: Pnt2d; tol: float): Geom2dHatchClassifier {.
    constructor, importcpp: "Geom2dHatch_Classifier(@)",
    header: "Geom2dHatch_Classifier.hxx".}
proc perform*(this: var Geom2dHatchClassifier; f: var Geom2dHatchElements; p: Pnt2d;
             tol: float) {.importcpp: "Perform",
                         header: "Geom2dHatch_Classifier.hxx".}
proc state*(this: Geom2dHatchClassifier): TopAbsState {.noSideEffect,
    importcpp: "State", header: "Geom2dHatch_Classifier.hxx".}
proc rejected*(this: Geom2dHatchClassifier): bool {.noSideEffect,
    importcpp: "Rejected", header: "Geom2dHatch_Classifier.hxx".}
proc noWires*(this: Geom2dHatchClassifier): bool {.noSideEffect,
    importcpp: "NoWires", header: "Geom2dHatch_Classifier.hxx".}
proc edge*(this: Geom2dHatchClassifier): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Edge", header: "Geom2dHatch_Classifier.hxx".}
proc edgeParameter*(this: Geom2dHatchClassifier): float {.noSideEffect,
    importcpp: "EdgeParameter", header: "Geom2dHatch_Classifier.hxx".}
proc position*(this: Geom2dHatchClassifier): IntRes2dPosition {.noSideEffect,
    importcpp: "Position", header: "Geom2dHatch_Classifier.hxx".}
## !!!Ignored construct:  # TheFaceExplorer Geom2dHatch_Elements [NewLine] # TheFaceExplorer_hxx < Geom2dHatch_Elements . hxx > [NewLine] # TheEdge Geom2dAdaptor_Curve [NewLine] # TheEdge_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # TheIntersection2d Geom2dHatch_Intersector [NewLine] # TheIntersection2d_hxx < Geom2dHatch_Intersector . hxx > [NewLine] # TopClass_FClass2d Geom2dHatch_FClass2dOfClassifier [NewLine] # TopClass_FClass2d_hxx < Geom2dHatch_FClass2dOfClassifier . hxx > [NewLine] # TopClass_FaceClassifier Geom2dHatch_Classifier [NewLine] # TopClass_FaceClassifier_hxx < Geom2dHatch_Classifier . hxx > [NewLine] # < TopClass_FaceClassifier . lxx > [NewLine] # TheFaceExplorer [NewLine] # TheFaceExplorer_hxx [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersection2d [NewLine] # TheIntersection2d_hxx [NewLine] # TopClass_FClass2d [NewLine] # TopClass_FClass2d_hxx [NewLine] # TopClass_FaceClassifier [NewLine] # TopClass_FaceClassifier_hxx [NewLine] #  _Geom2dHatch_Classifier_HeaderFile
## Error: did not expect <!!!

