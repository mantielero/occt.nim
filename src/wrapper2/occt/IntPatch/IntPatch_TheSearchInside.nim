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

## !!!Ignored construct:  # _IntPatch_TheSearchInside_HeaderFile [NewLine] # _IntPatch_TheSearchInside_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_SequenceOfInteriorPoint.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_HInterTool"
discard "forward decl of IntPatch_TheSurfFunction"
discard "forward decl of IntSurf_InteriorPoint"
type
  IntPatch_TheSearchInside* {.importcpp: "IntPatch_TheSearchInside",
                             header: "IntPatch_TheSearchInside.hxx", bycopy.} = object


proc constructIntPatch_TheSearchInside*(): IntPatch_TheSearchInside {.constructor,
    importcpp: "IntPatch_TheSearchInside(@)",
    header: "IntPatch_TheSearchInside.hxx".}
proc constructIntPatch_TheSearchInside*(F: var IntPatch_TheSurfFunction;
                                       Surf: handle[Adaptor3d_HSurface];
                                       T: handle[Adaptor3d_TopolTool];
                                       Epsilon: Standard_Real): IntPatch_TheSearchInside {.
    constructor, importcpp: "IntPatch_TheSearchInside(@)",
    header: "IntPatch_TheSearchInside.hxx".}
proc Perform*(this: var IntPatch_TheSearchInside; F: var IntPatch_TheSurfFunction;
             Surf: handle[Adaptor3d_HSurface]; T: handle[Adaptor3d_TopolTool];
             Epsilon: Standard_Real) {.importcpp: "Perform",
                                     header: "IntPatch_TheSearchInside.hxx".}
proc Perform*(this: var IntPatch_TheSearchInside; F: var IntPatch_TheSurfFunction;
             Surf: handle[Adaptor3d_HSurface]; UStart: Standard_Real;
             VStart: Standard_Real) {.importcpp: "Perform",
                                    header: "IntPatch_TheSearchInside.hxx".}
proc IsDone*(this: IntPatch_TheSearchInside): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_TheSearchInside.hxx".}
proc NbPoints*(this: IntPatch_TheSearchInside): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_TheSearchInside.hxx".}
proc Value*(this: IntPatch_TheSearchInside; Index: Standard_Integer): IntSurf_InteriorPoint {.
    noSideEffect, importcpp: "Value", header: "IntPatch_TheSearchInside.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # Handle_TheTopolTool opencascade :: handle < Adaptor3d_TopolTool > [end of template] [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheSITool IntPatch_HInterTool [NewLine] # TheSITool_hxx < IntPatch_HInterTool . hxx > [NewLine] # TheFunction IntPatch_TheSurfFunction [NewLine] # TheFunction_hxx < IntPatch_TheSurfFunction . hxx > [NewLine] # IntStart_SearchInside IntPatch_TheSearchInside [NewLine] # IntStart_SearchInside_hxx < IntPatch_TheSearchInside . hxx > [NewLine] # < IntStart_SearchInside . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheSITool [NewLine] # TheSITool_hxx [NewLine] # TheFunction [NewLine] # TheFunction_hxx [NewLine] # IntStart_SearchInside [NewLine] # IntStart_SearchInside_hxx [NewLine] #  _IntPatch_TheSearchInside_HeaderFile [NewLine]
## Error: did not expect <!!!
