##  Created on: 1997-12-19
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of GeomFill_Frenet"
discard "forward decl of Law_Function"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of gp_Vec"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_CorrectedFrenet"
discard "forward decl of GeomFill_CorrectedFrenet"
type
  HandleGeomFillCorrectedFrenet* = Handle[GeomFillCorrectedFrenet]

## ! Defined an Corrected Frenet  Trihedron  Law It is
## ! like Frenet with an Torsion's minimization

type
  GeomFillCorrectedFrenet* {.importcpp: "GeomFill_CorrectedFrenet",
                            header: "GeomFill_CorrectedFrenet.hxx", bycopy.} = object of GeomFillTrihedronLaw


proc constructGeomFillCorrectedFrenet*(): GeomFillCorrectedFrenet {.constructor,
    importcpp: "GeomFill_CorrectedFrenet(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc constructGeomFillCorrectedFrenet*(forEvaluation: StandardBoolean): GeomFillCorrectedFrenet {.
    constructor, importcpp: "GeomFill_CorrectedFrenet(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc copy*(this: GeomFillCorrectedFrenet): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_CorrectedFrenet.hxx".}
proc setCurve*(this: var GeomFillCorrectedFrenet; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_CorrectedFrenet.hxx".}
proc setInterval*(this: var GeomFillCorrectedFrenet; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_CorrectedFrenet.hxx".}
proc d0*(this: var GeomFillCorrectedFrenet; param: StandardReal; tangent: var GpVec;
        normal: var GpVec; biNormal: var GpVec): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc d1*(this: var GeomFillCorrectedFrenet; param: StandardReal; tangent: var GpVec;
        dTangent: var GpVec; normal: var GpVec; dNormal: var GpVec; biNormal: var GpVec;
        dBiNormal: var GpVec): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc d2*(this: var GeomFillCorrectedFrenet; param: StandardReal; tangent: var GpVec;
        dTangent: var GpVec; d2Tangent: var GpVec; normal: var GpVec; dNormal: var GpVec;
        d2Normal: var GpVec; biNormal: var GpVec; dBiNormal: var GpVec;
        d2BiNormal: var GpVec): StandardBoolean {.importcpp: "D2",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc nbIntervals*(this: GeomFillCorrectedFrenet; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_CorrectedFrenet.hxx".}
proc intervals*(this: GeomFillCorrectedFrenet; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_CorrectedFrenet.hxx".}
proc evaluateBestMode*(this: var GeomFillCorrectedFrenet): GeomFillTrihedron {.
    importcpp: "EvaluateBestMode", header: "GeomFill_CorrectedFrenet.hxx".}
proc getAverageLaw*(this: var GeomFillCorrectedFrenet; aTangent: var GpVec;
                   aNormal: var GpVec; aBiNormal: var GpVec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_CorrectedFrenet.hxx".}
proc isConstant*(this: GeomFillCorrectedFrenet): StandardBoolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_CorrectedFrenet.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillCorrectedFrenet): StandardBoolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_CorrectedFrenet.hxx".}
type
  GeomFillCorrectedFrenetbaseType* = GeomFillTrihedronLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_CorrectedFrenet::get_type_name(@)",
                            header: "GeomFill_CorrectedFrenet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_CorrectedFrenet::get_type_descriptor(@)",
    header: "GeomFill_CorrectedFrenet.hxx".}
proc dynamicType*(this: GeomFillCorrectedFrenet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_CorrectedFrenet.hxx".}

