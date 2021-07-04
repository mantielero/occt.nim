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

## !!!Ignored construct:  # _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../IntSurf/IntSurf_PntOn2S.hxx [NewLine] # ../gp/gp_Dir.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../IntImp/IntImp_ConstIsoparametric.hxx [NewLine] class StdFail_NotDone ;
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
  GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox* {.
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


proc constructGeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox*(
    Param: TColStd_Array1OfReal; S1: handle[Adaptor3d_HSurface];
    S2: handle[Adaptor3d_HSurface]; TolTangency: Standard_Real): GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc constructGeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox*(
    S1: handle[Adaptor3d_HSurface]; S2: handle[Adaptor3d_HSurface];
    TolTangency: Standard_Real): GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Perform*(this: var GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
             Param: TColStd_Array1OfReal; Rsnld: var math_FunctionSetRoot): IntImp_ConstIsoparametric {.
    importcpp: "Perform",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Perform*(this: var GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox;
             Param: TColStd_Array1OfReal; Rsnld: var math_FunctionSetRoot;
             ChoixIso: IntImp_ConstIsoparametric): IntImp_ConstIsoparametric {.
    importcpp: "Perform",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc IsDone*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc IsEmpty*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsEmpty",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Point*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): IntSurf_PntOn2S {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc IsTangent*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangent",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Direction*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir {.
    noSideEffect, importcpp: "Direction",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc DirectionOnS1*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS1",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc DirectionOnS2*(this: GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): gp_Dir2d {.
    noSideEffect, importcpp: "DirectionOnS2",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Function*(this: var GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): var GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox {.
    importcpp: "Function",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc ChangePoint*(this: var GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox): var IntSurf_PntOn2S {.
    importcpp: "ChangePoint",
    header: "GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_TheFunction GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_TheFunction_hxx < GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # IntImp_Int2S GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox [NewLine] # IntImp_Int2S_hxx < GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox_HeaderFile [NewLine]
## Error: did not expect <!!!