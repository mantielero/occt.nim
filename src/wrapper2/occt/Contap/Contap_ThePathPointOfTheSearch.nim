##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _Contap_ThePathPointOfTheSearch_HeaderFile [NewLine] # _Contap_ThePathPointOfTheSearch_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class Adaptor3d_HVertex ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  Contap_ThePathPointOfTheSearch* {.importcpp: "Contap_ThePathPointOfTheSearch", header: "Contap_ThePathPointOfTheSearch.hxx",
                                   bycopy.} = object


proc constructContap_ThePathPointOfTheSearch*(): Contap_ThePathPointOfTheSearch {.
    constructor, importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc constructContap_ThePathPointOfTheSearch*(P: gp_Pnt; Tol: Standard_Real;
    V: handle[Adaptor3d_HVertex]; A: handle[Adaptor2d_HCurve2d];
    Parameter: Standard_Real): Contap_ThePathPointOfTheSearch {.constructor,
    importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc constructContap_ThePathPointOfTheSearch*(P: gp_Pnt; Tol: Standard_Real;
    A: handle[Adaptor2d_HCurve2d]; Parameter: Standard_Real): Contap_ThePathPointOfTheSearch {.
    constructor, importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc SetValue*(this: var Contap_ThePathPointOfTheSearch; P: gp_Pnt;
              Tol: Standard_Real; V: handle[Adaptor3d_HVertex];
              A: handle[Adaptor2d_HCurve2d]; Parameter: Standard_Real) {.
    importcpp: "SetValue", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc SetValue*(this: var Contap_ThePathPointOfTheSearch; P: gp_Pnt;
              Tol: Standard_Real; A: handle[Adaptor2d_HCurve2d];
              Parameter: Standard_Real) {.importcpp: "SetValue", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc Value*(this: Contap_ThePathPointOfTheSearch): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc Tolerance*(this: Contap_ThePathPointOfTheSearch): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc IsNew*(this: Contap_ThePathPointOfTheSearch): Standard_Boolean {.noSideEffect,
    importcpp: "IsNew", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc Vertex*(this: Contap_ThePathPointOfTheSearch): handle[Adaptor3d_HVertex] {.
    noSideEffect, importcpp: "Vertex", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc Arc*(this: Contap_ThePathPointOfTheSearch): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "Arc", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc Parameter*(this: Contap_ThePathPointOfTheSearch): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Contap_ThePathPointOfTheSearch.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # IntStart_PathPoint Contap_ThePathPointOfTheSearch [NewLine] # IntStart_PathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # < IntStart_PathPoint . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # IntStart_PathPoint [NewLine] # IntStart_PathPoint_hxx [NewLine] #  _Contap_ThePathPointOfTheSearch_HeaderFile [NewLine]
## Error: did not expect <!!!
