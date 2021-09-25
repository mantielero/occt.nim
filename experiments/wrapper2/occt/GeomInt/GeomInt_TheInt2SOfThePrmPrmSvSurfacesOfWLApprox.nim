##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntSurf_PntOn2S . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
type
  GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox* {.
      importcpp: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox",
      header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## compute
                                                                                  ## the
                                                                                  ## solution
                                                                                  ## point
                                                                                  ## with
                                                                                  ## the
                                                                                  ## close
                                                                                  ## point


proc constructGeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox*(
    param: TColStdArray1OfReal; s1: Handle[Adaptor3dHSurface];
    s2: Handle[Adaptor3dHSurface]; tolTangency: float): GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc constructGeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox*(
    s1: Handle[Adaptor3dHSurface]; s2: Handle[Adaptor3dHSurface]; tolTangency: float): GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc perform*(this: var GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
             param: TColStdArray1OfReal; rsnld: var MathFunctionSetRoot): IntImpConstIsoparametric {.
    importcpp: "Perform",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc perform*(this: var GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
             param: TColStdArray1OfReal; rsnld: var MathFunctionSetRoot;
             choixIso: IntImpConstIsoparametric): IntImpConstIsoparametric {.
    importcpp: "Perform",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc isDone*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): bool {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc isEmpty*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): bool {.
    noSideEffect, importcpp: "IsEmpty",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc point*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): IntSurfPntOn2S {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc isTangent*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): bool {.
    noSideEffect, importcpp: "IsTangent",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc direction*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir {.
    noSideEffect, importcpp: "Direction",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc directionOnS1*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc directionOnS2*(this: GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc function*(this: var GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): var GeomIntTheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    importcpp: "Function",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc changePoint*(this: var GeomIntTheInt2SOfThePrmPrmSvSurfacesOfWLApprox): var IntSurfPntOn2S {.
    importcpp: "ChangePoint",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_TheFunction GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_TheFunction_hxx < GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # IntImp_Int2S GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_Int2S_hxx < GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile
## Error: did not expect <!!!

