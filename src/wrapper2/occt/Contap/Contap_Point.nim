##  Created on: 1993-03-04
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Transition"
type
  ContapPoint* {.importcpp: "Contap_Point", header: "Contap_Point.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.


proc constructContapPoint*(): ContapPoint {.constructor,
    importcpp: "Contap_Point(@)", header: "Contap_Point.hxx".}
proc constructContapPoint*(pt: GpPnt; u: StandardReal; v: StandardReal): ContapPoint {.
    constructor, importcpp: "Contap_Point(@)", header: "Contap_Point.hxx".}
proc setValue*(this: var ContapPoint; pt: GpPnt; u: StandardReal; v: StandardReal) {.
    importcpp: "SetValue", header: "Contap_Point.hxx".}
proc setParameter*(this: var ContapPoint; para: StandardReal) {.
    importcpp: "SetParameter", header: "Contap_Point.hxx".}
proc setVertex*(this: var ContapPoint; v: Handle[Adaptor3dHVertex]) {.
    importcpp: "SetVertex", header: "Contap_Point.hxx".}
proc setArc*(this: var ContapPoint; a: Handle[Adaptor2dHCurve2d]; param: StandardReal;
            tLine: IntSurfTransition; tArc: IntSurfTransition) {.
    importcpp: "SetArc", header: "Contap_Point.hxx".}
proc setMultiple*(this: var ContapPoint) {.importcpp: "SetMultiple",
                                       header: "Contap_Point.hxx".}
proc setInternal*(this: var ContapPoint) {.importcpp: "SetInternal",
                                       header: "Contap_Point.hxx".}
proc value*(this: ContapPoint): GpPnt {.noSideEffect, importcpp: "Value",
                                    header: "Contap_Point.hxx".}
proc parameterOnLine*(this: ContapPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnLine", header: "Contap_Point.hxx".}
proc parameters*(this: ContapPoint; u1: var StandardReal; v1: var StandardReal) {.
    noSideEffect, importcpp: "Parameters", header: "Contap_Point.hxx".}
proc isOnArc*(this: ContapPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsOnArc", header: "Contap_Point.hxx".}
proc arc*(this: ContapPoint): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "Arc", header: "Contap_Point.hxx".}
proc parameterOnArc*(this: ContapPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnArc", header: "Contap_Point.hxx".}
proc transitionOnLine*(this: ContapPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnLine", header: "Contap_Point.hxx".}
proc transitionOnArc*(this: ContapPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnArc", header: "Contap_Point.hxx".}
proc isVertex*(this: ContapPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsVertex", header: "Contap_Point.hxx".}
proc vertex*(this: ContapPoint): Handle[Adaptor3dHVertex] {.noSideEffect,
    importcpp: "Vertex", header: "Contap_Point.hxx".}
proc isMultiple*(this: ContapPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Contap_Point.hxx".}
proc isInternal*(this: ContapPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsInternal", header: "Contap_Point.hxx".}

