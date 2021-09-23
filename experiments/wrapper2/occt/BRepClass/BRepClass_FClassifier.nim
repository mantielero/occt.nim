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

## !!!Ignored construct:  # _BRepClass_FClassifier_HeaderFile [NewLine] # _BRepClass_FClassifier_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # BRepClass_FClass2dOfFClassifier.hxx [NewLine] # BRepClass_Edge.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../IntRes2d/IntRes2d_Position.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../TopAbs/TopAbs_State.hxx [NewLine] class Standard_DomainError ;
## Error: did not expect <!!!

discard "forward decl of BRepClass_FaceExplorer"
discard "forward decl of BRepClass_Edge"
discard "forward decl of BRepClass_Intersector"
discard "forward decl of BRepClass_FClass2dOfFClassifier"
discard "forward decl of gp_Pnt2d"
type
  BRepClass_FClassifier* {.importcpp: "BRepClass_FClassifier",
                          header: "BRepClass_FClassifier.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor,
                                                                            ## undefined
                                                                            ## algorithm.


proc constructBRepClass_FClassifier*(): BRepClass_FClassifier {.constructor,
    importcpp: "BRepClass_FClassifier(@)", header: "BRepClass_FClassifier.hxx".}
proc constructBRepClass_FClassifier*(F: var BRepClass_FaceExplorer; P: gp_Pnt2d;
                                    Tol: Standard_Real): BRepClass_FClassifier {.
    constructor, importcpp: "BRepClass_FClassifier(@)",
    header: "BRepClass_FClassifier.hxx".}
proc Perform*(this: var BRepClass_FClassifier; F: var BRepClass_FaceExplorer;
             P: gp_Pnt2d; Tol: Standard_Real) {.importcpp: "Perform",
    header: "BRepClass_FClassifier.hxx".}
proc State*(this: BRepClass_FClassifier): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "BRepClass_FClassifier.hxx".}
proc Rejected*(this: BRepClass_FClassifier): Standard_Boolean {.noSideEffect,
    importcpp: "Rejected", header: "BRepClass_FClassifier.hxx".}
proc NoWires*(this: BRepClass_FClassifier): Standard_Boolean {.noSideEffect,
    importcpp: "NoWires", header: "BRepClass_FClassifier.hxx".}
proc Edge*(this: BRepClass_FClassifier): BRepClass_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepClass_FClassifier.hxx".}
proc EdgeParameter*(this: BRepClass_FClassifier): Standard_Real {.noSideEffect,
    importcpp: "EdgeParameter", header: "BRepClass_FClassifier.hxx".}
proc Position*(this: BRepClass_FClassifier): IntRes2d_Position {.noSideEffect,
    importcpp: "Position", header: "BRepClass_FClassifier.hxx".}
## !!!Ignored construct:  # TheFaceExplorer BRepClass_FaceExplorer [NewLine] # TheFaceExplorer_hxx < BRepClass_FaceExplorer . hxx > [NewLine] # TheEdge BRepClass_Edge [NewLine] # TheEdge_hxx < BRepClass_Edge . hxx > [NewLine] # TheIntersection2d BRepClass_Intersector [NewLine] # TheIntersection2d_hxx < BRepClass_Intersector . hxx > [NewLine] # TopClass_FClass2d BRepClass_FClass2dOfFClassifier [NewLine] # TopClass_FClass2d_hxx < BRepClass_FClass2dOfFClassifier . hxx > [NewLine] # TopClass_FaceClassifier BRepClass_FClassifier [NewLine] # TopClass_FaceClassifier_hxx < BRepClass_FClassifier . hxx > [NewLine] # < TopClass_FaceClassifier . lxx > [NewLine] # TheFaceExplorer [NewLine] # TheFaceExplorer_hxx [NewLine] # TheEdge [NewLine] # TheEdge_hxx [NewLine] # TheIntersection2d [NewLine] # TheIntersection2d_hxx [NewLine] # TopClass_FClass2d [NewLine] # TopClass_FClass2d_hxx [NewLine] # TopClass_FaceClassifier [NewLine] # TopClass_FaceClassifier_hxx [NewLine] #  _BRepClass_FClassifier_HeaderFile [NewLine]
## Error: did not expect <!!!
