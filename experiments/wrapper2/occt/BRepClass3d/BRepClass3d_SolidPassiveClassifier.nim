##  Created on: 1994-04-18
##  Created by: Laurent BUCHARD
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

## !!!Ignored construct:  # _BRepClass3d_SolidPassiveClassifier_HeaderFile [NewLine] # _BRepClass3d_SolidPassiveClassifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TopoDS/TopoDS_Face.hxx [NewLine] # ../gp/gp_Lin.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] # BRepClass3d_Intersector3d.hxx [NewLine] # ../TopAbs/TopAbs_Orientation.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass3d_Intersector3d"
discard "forward decl of gp_Lin"
discard "forward decl of TopoDS_Face"
type
  BRepClass3d_SolidPassiveClassifier* {.importcpp: "BRepClass3d_SolidPassiveClassifier", header: "BRepClass3d_SolidPassiveClassifier.hxx",
                                       bycopy.} = object ## ! Creates an undefined classifier.


proc constructBRepClass3d_SolidPassiveClassifier*(): BRepClass3d_SolidPassiveClassifier {.
    constructor, importcpp: "BRepClass3d_SolidPassiveClassifier(@)",
    header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc Reset*(this: var BRepClass3d_SolidPassiveClassifier; L: gp_Lin; P: Standard_Real;
           Tol: Standard_Real) {.importcpp: "Reset",
                               header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc Compare*(this: var BRepClass3d_SolidPassiveClassifier; F: TopoDS_Face;
             Or: TopAbs_Orientation) {.importcpp: "Compare", header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc Parameter*(this: BRepClass3d_SolidPassiveClassifier): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc HasIntersection*(this: BRepClass3d_SolidPassiveClassifier): Standard_Boolean {.
    noSideEffect, importcpp: "HasIntersection",
    header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc Intersector*(this: var BRepClass3d_SolidPassiveClassifier): var BRepClass3d_Intersector3d {.
    importcpp: "Intersector", header: "BRepClass3d_SolidPassiveClassifier.hxx".}
proc State*(this: BRepClass3d_SolidPassiveClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass3d_SolidPassiveClassifier.hxx".}
## !!!Ignored construct:  # TheIntersector BRepClass3d_Intersector3d [NewLine] # TheIntersector_hxx < BRepClass3d_Intersector3d . hxx > [NewLine] # TopClass_Classifier3d BRepClass3d_SolidPassiveClassifier [NewLine] # TopClass_Classifier3d_hxx < BRepClass3d_SolidPassiveClassifier . hxx > [NewLine] # < TopClass_Classifier3d . lxx > [NewLine] # TheIntersector [NewLine] # TheIntersector_hxx [NewLine] # TopClass_Classifier3d [NewLine] # TopClass_Classifier3d_hxx [NewLine] #  _BRepClass3d_SolidPassiveClassifier_HeaderFile [NewLine]
## Error: did not expect <!!!
