##  Created on: 1991-03-28
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1991-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntWalk_TheInt2S_HeaderFile [NewLine] # _IntWalk_TheInt2S_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_PntOn2S.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # IntWalk_TheFunctionOfTheInt2S.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntWalk_TheFunctionOfTheInt2S"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
type
  IntWalk_TheInt2S* {.importcpp: "IntWalk_TheInt2S",
                     header: "IntWalk_TheInt2S.hxx", bycopy.} = object ## ! compute the solution point with the close point


proc constructIntWalk_TheInt2S*(Param: TColStd_Array1OfReal;
                               S1: handle[Adaptor3d_HSurface];
                               S2: handle[Adaptor3d_HSurface];
                               TolTangency: Standard_Real): IntWalk_TheInt2S {.
    constructor, importcpp: "IntWalk_TheInt2S(@)", header: "IntWalk_TheInt2S.hxx".}
proc constructIntWalk_TheInt2S*(S1: handle[Adaptor3d_HSurface];
                               S2: handle[Adaptor3d_HSurface];
                               TolTangency: Standard_Real): IntWalk_TheInt2S {.
    constructor, importcpp: "IntWalk_TheInt2S(@)", header: "IntWalk_TheInt2S.hxx".}
proc Perform*(this: var IntWalk_TheInt2S; Param: TColStd_Array1OfReal;
             Rsnld: var math_FunctionSetRoot): IntImp_ConstIsoparametric {.
    importcpp: "Perform", header: "IntWalk_TheInt2S.hxx".}
proc Perform*(this: var IntWalk_TheInt2S; Param: TColStd_Array1OfReal;
             Rsnld: var math_FunctionSetRoot; ChoixIso: IntImp_ConstIsoparametric): IntImp_ConstIsoparametric {.
    importcpp: "Perform", header: "IntWalk_TheInt2S.hxx".}
proc IsDone*(this: IntWalk_TheInt2S): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntWalk_TheInt2S.hxx".}
proc IsEmpty*(this: IntWalk_TheInt2S): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntWalk_TheInt2S.hxx".}
proc Point*(this: IntWalk_TheInt2S): IntSurf_PntOn2S {.noSideEffect,
    importcpp: "Point", header: "IntWalk_TheInt2S.hxx".}
proc IsTangent*(this: IntWalk_TheInt2S): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntWalk_TheInt2S.hxx".}
proc Direction*(this: IntWalk_TheInt2S): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "IntWalk_TheInt2S.hxx".}
proc DirectionOnS1*(this: IntWalk_TheInt2S): gp_Dir2d {.noSideEffect,
    importcpp: "DirectionOnS1", header: "IntWalk_TheInt2S.hxx".}
proc DirectionOnS2*(this: IntWalk_TheInt2S): gp_Dir2d {.noSideEffect,
    importcpp: "DirectionOnS2", header: "IntWalk_TheInt2S.hxx".}
proc Function*(this: var IntWalk_TheInt2S): var IntWalk_TheFunctionOfTheInt2S {.
    importcpp: "Function", header: "IntWalk_TheInt2S.hxx".}
proc ChangePoint*(this: var IntWalk_TheInt2S): var IntSurf_PntOn2S {.
    importcpp: "ChangePoint", header: "IntWalk_TheInt2S.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_TheFunction IntWalk_TheFunctionOfTheInt2S [NewLine] # IntImp_TheFunction_hxx < IntWalk_TheFunctionOfTheInt2S . hxx > [NewLine] # IntImp_Int2S IntWalk_TheInt2S [NewLine] # IntImp_Int2S_hxx < IntWalk_TheInt2S . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _IntWalk_TheInt2S_HeaderFile [NewLine]
## Error: did not expect <!!!
