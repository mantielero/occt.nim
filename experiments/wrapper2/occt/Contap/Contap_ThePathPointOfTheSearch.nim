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
    adaptor3dHVertex* {.importc: "Adaptor3d_HVertex".}: Handle
    adaptor2dHCurve2d* {.importc: "Adaptor2d_HCurve2d".}: Handle


proc constructContapThePathPointOfTheSearch*(): ContapThePathPointOfTheSearch {.
    constructor, importcpp: "Contap_ThePathPointOfTheSearch(@)",
    header: "Contap_ThePathPointOfTheSearch.hxx".}
## !!!Ignored construct:  Contap_ThePathPointOfTheSearch ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor3d_HVertex ) & V , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  Contap_ThePathPointOfTheSearch ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void SetValue ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor3d_HVertex ) & V , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void SetValue ( const gp_Pnt & P , const Standard_Real Tol , const Handle ( Adaptor2d_HCurve2d ) & A , const Standard_Real Parameter ) ;
## Error: token expected: ) but got: &!!!

proc value*(this: ContapThePathPointOfTheSearch): Pnt {.noSideEffect,
    importcpp: "Value", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc tolerance*(this: ContapThePathPointOfTheSearch): float {.noSideEffect,
    importcpp: "Tolerance", header: "Contap_ThePathPointOfTheSearch.hxx".}
proc isNew*(this: ContapThePathPointOfTheSearch): bool {.noSideEffect,
    importcpp: "IsNew", header: "Contap_ThePathPointOfTheSearch.hxx".}
## !!!Ignored construct:  & Vertex ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & Arc ( ) const ;
## Error: identifier expected, but got: &!!!

proc parameter*(this: ContapThePathPointOfTheSearch): float {.noSideEffect,
    importcpp: "Parameter", header: "Contap_ThePathPointOfTheSearch.hxx".}
## !!!Ignored construct:  vtx ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  arc ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheVertex Handle ( Adaptor3d_HVertex ) [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc Handle ( Adaptor2d_HCurve2d ) [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # IntStart_PathPoint Contap_ThePathPointOfTheSearch [NewLine] # IntStart_PathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # < IntStart_PathPoint . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # IntStart_PathPoint [NewLine] # IntStart_PathPoint_hxx [NewLine] #  _Contap_ThePathPointOfTheSearch_HeaderFile
## Error: did not expect <!!!














































