##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

## !!!Ignored construct:  # _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_PntOn2S.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
type
  BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox* {.
      importcpp: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox",
      header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## compute
                                                                                   ## the
                                                                                   ## solution
                                                                                   ## point
                                                                                   ## with
                                                                                   ## the
                                                                                   ## close
                                                                                   ## point


proc constructBRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    Param: TColStd_Array1OfReal; S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface;
    TolTangency: Standard_Real): BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface; TolTangency: Standard_Real): BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Perform*(this: var BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox;
             Param: TColStd_Array1OfReal; Rsnld: var math_FunctionSetRoot): IntImp_ConstIsoparametric {.
    importcpp: "Perform",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Perform*(this: var BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox;
             Param: TColStd_Array1OfReal; Rsnld: var math_FunctionSetRoot;
             ChoixIso: IntImp_ConstIsoparametric): IntImp_ConstIsoparametric {.
    importcpp: "Perform",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc IsDone*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc IsEmpty*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Point*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc IsTangent*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangent",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Direction*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir {.
    noSideEffect, importcpp: "Direction",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc DirectionOnS1*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc DirectionOnS2*(this: BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc Function*(this: var BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): var BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    importcpp: "Function",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc ChangePoint*(this: var BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox): var IntSurf_PntOn2S {.
    importcpp: "ChangePoint",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # IntImp_TheFunction BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_TheFunction_hxx < BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # IntImp_Int2S BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_Int2S_hxx < BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
