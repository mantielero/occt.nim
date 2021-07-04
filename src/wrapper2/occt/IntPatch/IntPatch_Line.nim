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

import
  ../Standard/Standard, ../Standard/Standard_Type, IntPatch_IType,
  ../Standard/Standard_Boolean, ../IntSurf/IntSurf_TypeTrans,
  ../IntSurf/IntSurf_Situation, ../Standard/Standard_Transient

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_Line"
type
  Handle_IntPatch_Line* = handle[IntPatch_Line]

## ! Definition of an intersection line between two
## ! surfaces.
## ! A line may be either geometric : line, circle, ellipse,
## ! parabola, hyperbola, as defined in the class GLine,
## ! or analytic, as defined in the class ALine, or defined
## ! by a set of points (coming from a walking algorithm) as
## ! defined in the class WLine.

type
  IntPatch_Line* {.importcpp: "IntPatch_Line", header: "IntPatch_Line.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## To
                                                                                                          ## set
                                                                                                          ## the
                                                                                                          ## values
                                                                                                          ## returned
                                                                                                          ## by
                                                                                                          ## IsUIsoS1,....
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## default
                                                                                                          ## values
                                                                                                          ## are
                                                                                                          ## False.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## To
                                                                                                          ## initialize
                                                                                                          ## the
                                                                                                          ## fields,
                                                                                                          ## when
                                                                                                          ## the
                                                                                                          ## transitions
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## are
                                                                                                          ## In
                                                                                                          ## or
                                                                                                          ## Out.


proc SetValue*(this: var IntPatch_Line; Uiso1: Standard_Boolean;
              Viso1: Standard_Boolean; Uiso2: Standard_Boolean;
              Viso2: Standard_Boolean) {.importcpp: "SetValue",
                                       header: "IntPatch_Line.hxx".}
proc ArcType*(this: IntPatch_Line): IntPatch_IType {.noSideEffect,
    importcpp: "ArcType", header: "IntPatch_Line.hxx".}
proc IsTangent*(this: IntPatch_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntPatch_Line.hxx".}
proc TransitionOnS1*(this: IntPatch_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS1", header: "IntPatch_Line.hxx".}
proc TransitionOnS2*(this: IntPatch_Line): IntSurf_TypeTrans {.noSideEffect,
    importcpp: "TransitionOnS2", header: "IntPatch_Line.hxx".}
proc SituationS1*(this: IntPatch_Line): IntSurf_Situation {.noSideEffect,
    importcpp: "SituationS1", header: "IntPatch_Line.hxx".}
proc SituationS2*(this: IntPatch_Line): IntSurf_Situation {.noSideEffect,
    importcpp: "SituationS2", header: "IntPatch_Line.hxx".}
proc IsUIsoOnS1*(this: IntPatch_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsUIsoOnS1", header: "IntPatch_Line.hxx".}
proc IsVIsoOnS1*(this: IntPatch_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsVIsoOnS1", header: "IntPatch_Line.hxx".}
proc IsUIsoOnS2*(this: IntPatch_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsUIsoOnS2", header: "IntPatch_Line.hxx".}
proc IsVIsoOnS2*(this: IntPatch_Line): Standard_Boolean {.noSideEffect,
    importcpp: "IsVIsoOnS2", header: "IntPatch_Line.hxx".}
type
  IntPatch_Linebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IntPatch_Line::get_type_name(@)",
                              header: "IntPatch_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntPatch_Line::get_type_descriptor(@)",
    header: "IntPatch_Line.hxx".}
proc DynamicType*(this: IntPatch_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_Line.hxx".}