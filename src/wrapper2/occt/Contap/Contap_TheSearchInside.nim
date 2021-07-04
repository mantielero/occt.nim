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

## !!!Ignored construct:  # _Contap_TheSearchInside_HeaderFile [NewLine] # _Contap_TheSearchInside_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfInteriorPoint.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Contap_HContTool"
discard "forward decl of Contap_SurfFunction"
discard "forward decl of IntSurf_InteriorPoint"
type
  Contap_TheSearchInside* {.importcpp: "Contap_TheSearchInside",
                           header: "Contap_TheSearchInside.hxx", bycopy.} = object


proc constructContap_TheSearchInside*(): Contap_TheSearchInside {.constructor,
    importcpp: "Contap_TheSearchInside(@)", header: "Contap_TheSearchInside.hxx".}
proc constructContap_TheSearchInside*(F: var Contap_SurfFunction;
                                     Surf: handle[Adaptor3d_HSurface];
                                     T: handle[Adaptor3d_TopolTool];
                                     Epsilon: Standard_Real): Contap_TheSearchInside {.
    constructor, importcpp: "Contap_TheSearchInside(@)",
    header: "Contap_TheSearchInside.hxx".}
proc Perform*(this: var Contap_TheSearchInside; F: var Contap_SurfFunction;
             Surf: handle[Adaptor3d_HSurface]; T: handle[Adaptor3d_TopolTool];
             Epsilon: Standard_Real) {.importcpp: "Perform",
                                     header: "Contap_TheSearchInside.hxx".}
proc Perform*(this: var Contap_TheSearchInside; F: var Contap_SurfFunction;
             Surf: handle[Adaptor3d_HSurface]; UStart: Standard_Real;
             VStart: Standard_Real) {.importcpp: "Perform",
                                    header: "Contap_TheSearchInside.hxx".}
proc IsDone*(this: Contap_TheSearchInside): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_TheSearchInside.hxx".}
proc NbPoints*(this: Contap_TheSearchInside): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "Contap_TheSearchInside.hxx".}
proc Value*(this: Contap_TheSearchInside; Index: Standard_Integer): IntSurf_InteriorPoint {.
    noSideEffect, importcpp: "Value", header: "Contap_TheSearchInside.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # Handle_TheTopolTool opencascade :: handle < Adaptor3d_TopolTool > [end of template] [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheSITool Contap_HContTool [NewLine] # TheSITool_hxx < Contap_HContTool . hxx > [NewLine] # TheFunction Contap_SurfFunction [NewLine] # TheFunction_hxx < Contap_SurfFunction . hxx > [NewLine] # IntStart_SearchInside Contap_TheSearchInside [NewLine] # IntStart_SearchInside_hxx < Contap_TheSearchInside . hxx > [NewLine] # < IntStart_SearchInside . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheSITool [NewLine] # TheSITool_hxx [NewLine] # TheFunction [NewLine] # TheFunction_hxx [NewLine] # IntStart_SearchInside [NewLine] # IntStart_SearchInside_hxx [NewLine] #  _Contap_TheSearchInside_HeaderFile [NewLine]
## Error: did not expect <!!!
