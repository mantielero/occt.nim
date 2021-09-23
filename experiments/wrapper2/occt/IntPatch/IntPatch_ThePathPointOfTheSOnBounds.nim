##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile [NewLine] # _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class Adaptor3d_HVertex ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  IntPatch_ThePathPointOfTheSOnBounds* {.importcpp: "IntPatch_ThePathPointOfTheSOnBounds", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx",
                                        bycopy.} = object


proc constructIntPatch_ThePathPointOfTheSOnBounds*(): IntPatch_ThePathPointOfTheSOnBounds {.
    constructor, importcpp: "IntPatch_ThePathPointOfTheSOnBounds(@)",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc constructIntPatch_ThePathPointOfTheSOnBounds*(P: gp_Pnt; Tol: Standard_Real;
    V: handle[Adaptor3d_HVertex]; A: handle[Adaptor2d_HCurve2d];
    Parameter: Standard_Real): IntPatch_ThePathPointOfTheSOnBounds {.constructor,
    importcpp: "IntPatch_ThePathPointOfTheSOnBounds(@)",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc constructIntPatch_ThePathPointOfTheSOnBounds*(P: gp_Pnt; Tol: Standard_Real;
    A: handle[Adaptor2d_HCurve2d]; Parameter: Standard_Real): IntPatch_ThePathPointOfTheSOnBounds {.
    constructor, importcpp: "IntPatch_ThePathPointOfTheSOnBounds(@)",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc SetValue*(this: var IntPatch_ThePathPointOfTheSOnBounds; P: gp_Pnt;
              Tol: Standard_Real; V: handle[Adaptor3d_HVertex];
              A: handle[Adaptor2d_HCurve2d]; Parameter: Standard_Real) {.
    importcpp: "SetValue", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc SetValue*(this: var IntPatch_ThePathPointOfTheSOnBounds; P: gp_Pnt;
              Tol: Standard_Real; A: handle[Adaptor2d_HCurve2d];
              Parameter: Standard_Real) {.importcpp: "SetValue", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc Value*(this: IntPatch_ThePathPointOfTheSOnBounds): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc Tolerance*(this: IntPatch_ThePathPointOfTheSOnBounds): Standard_Real {.
    noSideEffect, importcpp: "Tolerance",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc IsNew*(this: IntPatch_ThePathPointOfTheSOnBounds): Standard_Boolean {.
    noSideEffect, importcpp: "IsNew",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc Vertex*(this: IntPatch_ThePathPointOfTheSOnBounds): handle[Adaptor3d_HVertex] {.
    noSideEffect, importcpp: "Vertex",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc Arc*(this: IntPatch_ThePathPointOfTheSOnBounds): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "Arc",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc Parameter*(this: IntPatch_ThePathPointOfTheSOnBounds): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # IntStart_PathPoint IntPatch_ThePathPointOfTheSOnBounds [NewLine] # IntStart_PathPoint_hxx < IntPatch_ThePathPointOfTheSOnBounds . hxx > [NewLine] # < IntStart_PathPoint . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # IntStart_PathPoint [NewLine] # IntStart_PathPoint_hxx [NewLine] #  _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile [NewLine]
## Error: did not expect <!!!
