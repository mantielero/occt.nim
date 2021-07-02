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

## !!!Ignored construct:  # _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntSurf_PntOn2S . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] class StdFail_NotDone ;
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
  BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox* {.
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


proc constructBRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    param: TColStdArray1OfReal; s1: BRepAdaptorSurface; s2: BRepAdaptorSurface;
    tolTangency: StandardReal): BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox*(
    s1: BRepAdaptorSurface; s2: BRepAdaptorSurface; tolTangency: StandardReal): BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    constructor,
    importcpp: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc perform*(this: var BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox;
             param: TColStdArray1OfReal; rsnld: var MathFunctionSetRoot): IntImpConstIsoparametric {.
    importcpp: "Perform",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc perform*(this: var BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox;
             param: TColStdArray1OfReal; rsnld: var MathFunctionSetRoot;
             choixIso: IntImpConstIsoparametric): IntImpConstIsoparametric {.
    importcpp: "Perform",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc isDone*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc isEmpty*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsEmpty",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc point*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Point",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc isTangent*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsTangent",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc direction*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir {.
    noSideEffect, importcpp: "Direction",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc directionOnS1*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc directionOnS2*(this: BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): GpDir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc function*(this: var BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): var BRepApproxTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox {.
    importcpp: "Function",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
proc changePoint*(this: var BRepApproxTheInt2SOfThePrmPrmSvSurfacesOfApprox): var IntSurfPntOn2S {.
    importcpp: "ChangePoint",
    header: "BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox.hxx".}
## !!!Ignored construct:  # ThePSurface BRepAdaptor_Surface [NewLine] # ThePSurface_hxx < BRepAdaptor_Surface . hxx > [NewLine] # ThePSurfaceTool BRepApprox_SurfaceTool [NewLine] # ThePSurfaceTool_hxx < BRepApprox_SurfaceTool . hxx > [NewLine] # IntImp_TheFunction BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_TheFunction_hxx < BRepApprox_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # IntImp_Int2S BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox [NewLine] # IntImp_Int2S_hxx < BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _BRepApprox_TheInt2SOfThePrmPrmSvSurfacesOfApprox_HeaderFile
## Error: did not expect <!!!


