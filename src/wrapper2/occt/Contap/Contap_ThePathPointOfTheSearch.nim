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

## !!!Ignored construct:  # _Contap_ThePathPointOfTheSearch_HeaderFile [NewLine] # _Contap_ThePathPointOfTheSearch_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class Adaptor3d_HVertex ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  ContapThePathPointOfTheSearch* {.importcpp: "Contap_ThePathPointOfTheSearch",
                                  header: "Contap_ThePathPointOfTheSearch.hxx",
                                  bycopy.} = object


proc constructContapThePathPointOfTheSearch*(): ContapThePathPointOfTheSearch {.
    constructor, importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc constructContapThePathPointOfTheSearch*(p: GpPnt; tol: StandardReal;
    v: Handle[Adaptor3dHVertex]; a: Handle[Adaptor2dHCurve2d];
    parameter: StandardReal): ContapThePathPointOfTheSearch {.constructor,
    importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc constructContapThePathPointOfTheSearch*(p: GpPnt; tol: StandardReal;
    a: Handle[Adaptor2dHCurve2d]; parameter: StandardReal): ContapThePathPointOfTheSearch {.
    constructor, importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
proc setValue*(this: var ContapThePathPointOfTheSearch; p: GpPnt; tol: StandardReal;
              v: Handle[Adaptor3dHVertex]; a: Handle[Adaptor2dHCurve2d];
              parameter: StandardReal) {.importcpp: "SetValue", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc setValue*(this: var ContapThePathPointOfTheSearch; p: GpPnt; tol: StandardReal;
              a: Handle[Adaptor2dHCurve2d]; parameter: StandardReal) {.
    importcpp: "SetValue", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc value*(this: ContapThePathPointOfTheSearch): GpPnt {.noSideEffect,
    importcpp: "Value", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc tolerance*(this: ContapThePathPointOfTheSearch): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc isNew*(this: ContapThePathPointOfTheSearch): StandardBoolean {.noSideEffect,
    importcpp: "IsNew", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc vertex*(this: ContapThePathPointOfTheSearch): Handle[Adaptor3dHVertex] {.
    noSideEffect, importcpp: "Vertex", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc arc*(this: ContapThePathPointOfTheSearch): Handle[Adaptor2dHCurve2d] {.
    noSideEffect, importcpp: "Arc", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc parameter*(this: ContapThePathPointOfTheSearch): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Contap_ThePathPointOfTheSearch.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # IntStart_PathPoint Contap_ThePathPointOfTheSearch [NewLine] # IntStart_PathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # < IntStart_PathPoint . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # IntStart_PathPoint [NewLine] # IntStart_PathPoint_hxx [NewLine] #  _Contap_ThePathPointOfTheSearch_HeaderFile
## Error: did not expect <!!!


