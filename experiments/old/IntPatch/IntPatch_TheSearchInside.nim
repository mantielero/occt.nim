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

## !!!Ignored construct:  # _IntPatch_TheSearchInside_HeaderFile [NewLine] # _IntPatch_TheSearchInside_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntSurf_SequenceOfInteriorPoint . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_HInterTool"
discard "forward decl of IntPatch_TheSurfFunction"
discard "forward decl of IntSurf_InteriorPoint"
type
  IntPatchTheSearchInside* {.importcpp: "IntPatch_TheSearchInside",
                            header: "IntPatch_TheSearchInside.hxx", bycopy.} = object


proc constructIntPatchTheSearchInside*(): IntPatchTheSearchInside {.constructor,
    importcpp: "IntPatch_TheSearchInside(@)",
    header: "IntPatch_TheSearchInside.hxx".}
## !!!Ignored construct:  IntPatch_TheSearchInside ( IntPatch_TheSurfFunction & F , const Handle ( Adaptor3d_HSurface ) & Surf , const Handle ( Adaptor3d_TopolTool ) & T , const Standard_Real Epsilon ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void Perform ( IntPatch_TheSurfFunction & F , const Handle ( Adaptor3d_HSurface ) & Surf , const Handle ( Adaptor3d_TopolTool ) & T , const Standard_Real Epsilon ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void Perform ( IntPatch_TheSurfFunction & F , const Handle ( Adaptor3d_HSurface ) & Surf , const Standard_Real UStart , const Standard_Real VStart ) ;
## Error: token expected: ) but got: &!!!

proc isDone*(this: IntPatchTheSearchInside): bool {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_TheSearchInside.hxx".}
proc nbPoints*(this: IntPatchTheSearchInside): int {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_TheSearchInside.hxx".}
proc value*(this: IntPatchTheSearchInside; index: int): IntSurfInteriorPoint {.
    noSideEffect, importcpp: "Value", header: "IntPatch_TheSearchInside.hxx".}
## !!!Ignored construct:  # ThePSurface Handle ( Adaptor3d_HSurface ) [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # Handle_TheTopolTool Handle ( Adaptor3d_TopolTool ) [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheSITool IntPatch_HInterTool [NewLine] # TheSITool_hxx < IntPatch_HInterTool . hxx > [NewLine] # TheFunction IntPatch_TheSurfFunction [NewLine] # TheFunction_hxx < IntPatch_TheSurfFunction . hxx > [NewLine] # IntStart_SearchInside IntPatch_TheSearchInside [NewLine] # IntStart_SearchInside_hxx < IntPatch_TheSearchInside . hxx > [NewLine] # < IntStart_SearchInside . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheSITool [NewLine] # TheSITool_hxx [NewLine] # TheFunction [NewLine] # TheFunction_hxx [NewLine] # IntStart_SearchInside [NewLine] # IntStart_SearchInside_hxx [NewLine] #  _IntPatch_TheSearchInside_HeaderFile
## Error: did not expect <!!!














































