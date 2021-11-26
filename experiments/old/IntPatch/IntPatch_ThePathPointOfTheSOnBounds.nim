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

## !!!Ignored construct:  # _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile [NewLine] # _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class Adaptor3d_HVertex ;
## Error: did not expect <!!!

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
type
  IntPatchThePathPointOfTheSOnBounds* {.importcpp: "IntPatch_ThePathPointOfTheSOnBounds", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx",
                                       bycopy.} = object
    adaptor3dHVertex* {.importc: "Adaptor3d_HVertex".}: Handle
    adaptor2dHCurve2d* {.importc: "Adaptor2d_HCurve2d".}: Handle


proc constructIntPatchThePathPointOfTheSOnBounds*(): IntPatchThePathPointOfTheSOnBounds {.
    constructor, importcpp: "IntPatch_ThePathPointOfTheSOnBounds(@)",
    header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
## !!!Ignored construct:  IntPatch_ThePathPointOfTheSOnBounds ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor3d_HVertex ) & V , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  IntPatch_ThePathPointOfTheSOnBounds ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void SetValue ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor3d_HVertex ) & V , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void SetValue ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

proc value*(this: IntPatchThePathPointOfTheSOnBounds): Pnt {.noSideEffect,
    importcpp: "Value", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc tolerance*(this: IntPatchThePathPointOfTheSOnBounds): float {.noSideEffect,
    importcpp: "Tolerance", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
proc isNew*(this: IntPatchThePathPointOfTheSOnBounds): bool {.noSideEffect,
    importcpp: "IsNew", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
## !!!Ignored construct:  & Vertex ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & Arc ( ) const ;
## Error: identifier expected, but got: &!!!

proc parameter*(this: IntPatchThePathPointOfTheSOnBounds): float {.noSideEffect,
    importcpp: "Parameter", header: "IntPatch_ThePathPointOfTheSOnBounds.hxx".}
## !!!Ignored construct:  vtx ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  arc ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # IntStart_PathPoint IntPatch_ThePathPointOfTheSOnBounds [NewLine] # IntStart_PathPoint_hxx < IntPatch_ThePathPointOfTheSOnBounds . hxx > [NewLine] # < IntStart_PathPoint . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # IntStart_PathPoint [NewLine] # IntStart_PathPoint_hxx [NewLine] #  _IntPatch_ThePathPointOfTheSOnBounds_HeaderFile
## Error: did not expect <!!!














































