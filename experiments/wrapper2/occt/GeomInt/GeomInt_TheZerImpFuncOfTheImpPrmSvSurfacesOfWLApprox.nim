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

## !!!Ignored construct:  # _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir2d"
type
  GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox* {.
      importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox",
      header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox*(): GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {.
    constructor,
    importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc constructGeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox*(
    PS: handle[Adaptor3d_HSurface]; IS: IntSurf_Quadric): GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {.
    constructor,
    importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc constructGeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox*(
    IS: IntSurf_Quadric): GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox {.
    constructor,
    importcpp: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Set*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
         PS: handle[Adaptor3d_HSurface]) {.importcpp: "Set",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc SetImplicitSurface*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
                        IS: IntSurf_Quadric) {.importcpp: "SetImplicitSurface",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Set*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
         Tolerance: Standard_Real) {.importcpp: "Set", header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc NbVariables*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbVariables",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc NbEquations*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Standard_Integer {.
    noSideEffect, importcpp: "NbEquations",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Value*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
           X: math_Vector; F: var math_Vector): Standard_Boolean {.importcpp: "Value",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Derivatives*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
                 X: math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Values*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox;
            X: math_Vector; F: var math_Vector; D: var math_Matrix): Standard_Boolean {.
    importcpp: "Values",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Root*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "Root",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Tolerance*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Standard_Real {.
    noSideEffect, importcpp: "Tolerance",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Point*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): gp_Pnt {.
    noSideEffect, importcpp: "Point",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc IsTangent*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): Standard_Boolean {.
    importcpp: "IsTangent",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Direction3d*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): gp_Vec {.
    importcpp: "Direction3d",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc Direction2d*(this: var GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): gp_Dir2d {.
    importcpp: "Direction2d",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc PSurface*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): handle[
    Adaptor3d_HSurface] {.noSideEffect, importcpp: "PSurface", header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
proc ISurface*(this: GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox): IntSurf_Quadric {.
    noSideEffect, importcpp: "ISurface",
    header: "GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox [NewLine] # IntImp_ZerImpFunc_hxx < GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox_HeaderFile [NewLine]
## Error: did not expect <!!!
