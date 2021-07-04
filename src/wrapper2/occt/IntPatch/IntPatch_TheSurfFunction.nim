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

## !!!Ignored construct:  # _IntPatch_TheSurfFunction_HeaderFile [NewLine] # _IntPatch_TheSurfFunction_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Address.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../gp/gp_Pnt.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../gp/gp_Vec.hxx [NewLine] # ../gp/gp_Dir2d.hxx [NewLine] # ../math/math_FunctionSetWithDerivatives.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../math/math_Vector.hxx [NewLine] class StdFail_UndefinedDerivative ;
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
  IntPatch_TheSurfFunction* {.importcpp: "IntPatch_TheSurfFunction",
                             header: "IntPatch_TheSurfFunction.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructIntPatch_TheSurfFunction*(): IntPatch_TheSurfFunction {.constructor,
    importcpp: "IntPatch_TheSurfFunction(@)",
    header: "IntPatch_TheSurfFunction.hxx".}
proc constructIntPatch_TheSurfFunction*(PS: handle[Adaptor3d_HSurface];
                                       IS: IntSurf_Quadric): IntPatch_TheSurfFunction {.
    constructor, importcpp: "IntPatch_TheSurfFunction(@)",
    header: "IntPatch_TheSurfFunction.hxx".}
proc constructIntPatch_TheSurfFunction*(IS: IntSurf_Quadric): IntPatch_TheSurfFunction {.
    constructor, importcpp: "IntPatch_TheSurfFunction(@)",
    header: "IntPatch_TheSurfFunction.hxx".}
proc Set*(this: var IntPatch_TheSurfFunction; PS: handle[Adaptor3d_HSurface]) {.
    importcpp: "Set", header: "IntPatch_TheSurfFunction.hxx".}
proc SetImplicitSurface*(this: var IntPatch_TheSurfFunction; IS: IntSurf_Quadric) {.
    importcpp: "SetImplicitSurface", header: "IntPatch_TheSurfFunction.hxx".}
proc Set*(this: var IntPatch_TheSurfFunction; Tolerance: Standard_Real) {.
    importcpp: "Set", header: "IntPatch_TheSurfFunction.hxx".}
proc NbVariables*(this: IntPatch_TheSurfFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "IntPatch_TheSurfFunction.hxx".}
proc NbEquations*(this: IntPatch_TheSurfFunction): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "IntPatch_TheSurfFunction.hxx".}
proc Value*(this: var IntPatch_TheSurfFunction; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "IntPatch_TheSurfFunction.hxx".}
proc Derivatives*(this: var IntPatch_TheSurfFunction; X: math_Vector;
                 D: var math_Matrix): Standard_Boolean {.importcpp: "Derivatives",
    header: "IntPatch_TheSurfFunction.hxx".}
proc Values*(this: var IntPatch_TheSurfFunction; X: math_Vector; F: var math_Vector;
            D: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "IntPatch_TheSurfFunction.hxx".}
proc Root*(this: IntPatch_TheSurfFunction): Standard_Real {.noSideEffect,
    importcpp: "Root", header: "IntPatch_TheSurfFunction.hxx".}
proc Tolerance*(this: IntPatch_TheSurfFunction): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "IntPatch_TheSurfFunction.hxx".}
proc Point*(this: IntPatch_TheSurfFunction): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "IntPatch_TheSurfFunction.hxx".}
proc IsTangent*(this: var IntPatch_TheSurfFunction): Standard_Boolean {.
    importcpp: "IsTangent", header: "IntPatch_TheSurfFunction.hxx".}
proc Direction3d*(this: var IntPatch_TheSurfFunction): gp_Vec {.
    importcpp: "Direction3d", header: "IntPatch_TheSurfFunction.hxx".}
proc Direction2d*(this: var IntPatch_TheSurfFunction): gp_Dir2d {.
    importcpp: "Direction2d", header: "IntPatch_TheSurfFunction.hxx".}
proc PSurface*(this: IntPatch_TheSurfFunction): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "PSurface", header: "IntPatch_TheSurfFunction.hxx".}
proc ISurface*(this: IntPatch_TheSurfFunction): IntSurf_Quadric {.noSideEffect,
    importcpp: "ISurface", header: "IntPatch_TheSurfFunction.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheISurface IntSurf_Quadric [NewLine] # TheISurface_hxx < IntSurf_Quadric . hxx > [NewLine] # TheISurfaceTool IntSurf_QuadricTool [NewLine] # TheISurfaceTool_hxx < IntSurf_QuadricTool . hxx > [NewLine] # IntImp_ZerImpFunc IntPatch_TheSurfFunction [NewLine] # IntImp_ZerImpFunc_hxx < IntPatch_TheSurfFunction . hxx > [NewLine] # < IntImp_ZerImpFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheISurface [NewLine] # TheISurface_hxx [NewLine] # TheISurfaceTool [NewLine] # TheISurfaceTool_hxx [NewLine] # IntImp_ZerImpFunc [NewLine] # IntImp_ZerImpFunc_hxx [NewLine] #  _IntPatch_TheSurfFunction_HeaderFile [NewLine]
## Error: did not expect <!!!
