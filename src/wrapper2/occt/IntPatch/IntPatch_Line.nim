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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntPatch_Line"
discard "forward decl of IntPatch_Line"
type
  HandleIntPatchLine* = Handle[IntPatchLine]

## ! Definition of an intersection line between two
## ! surfaces.
## ! A line may be either geometric : line, circle, ellipse,
## ! parabola, hyperbola, as defined in the class GLine,
## ! or analytic, as defined in the class ALine, or defined
## ! by a set of points (coming from a walking algorithm) as
## ! defined in the class WLine.

type
  IntPatchLine* {.importcpp: "IntPatch_Line", header: "IntPatch_Line.hxx", bycopy.} = object of StandardTransient ##
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


proc setValue*(this: var IntPatchLine; uiso1: StandardBoolean; viso1: StandardBoolean;
              uiso2: StandardBoolean; viso2: StandardBoolean) {.
    importcpp: "SetValue", header: "IntPatch_Line.hxx".}
proc arcType*(this: IntPatchLine): IntPatchIType {.noSideEffect,
    importcpp: "ArcType", header: "IntPatch_Line.hxx".}
proc isTangent*(this: IntPatchLine): StandardBoolean {.noSideEffect,
    importcpp: "IsTangent", header: "IntPatch_Line.hxx".}
proc transitionOnS1*(this: IntPatchLine): IntSurfTypeTrans {.noSideEffect,
    importcpp: "TransitionOnS1", header: "IntPatch_Line.hxx".}
proc transitionOnS2*(this: IntPatchLine): IntSurfTypeTrans {.noSideEffect,
    importcpp: "TransitionOnS2", header: "IntPatch_Line.hxx".}
proc situationS1*(this: IntPatchLine): IntSurfSituation {.noSideEffect,
    importcpp: "SituationS1", header: "IntPatch_Line.hxx".}
proc situationS2*(this: IntPatchLine): IntSurfSituation {.noSideEffect,
    importcpp: "SituationS2", header: "IntPatch_Line.hxx".}
proc isUIsoOnS1*(this: IntPatchLine): StandardBoolean {.noSideEffect,
    importcpp: "IsUIsoOnS1", header: "IntPatch_Line.hxx".}
proc isVIsoOnS1*(this: IntPatchLine): StandardBoolean {.noSideEffect,
    importcpp: "IsVIsoOnS1", header: "IntPatch_Line.hxx".}
proc isUIsoOnS2*(this: IntPatchLine): StandardBoolean {.noSideEffect,
    importcpp: "IsUIsoOnS2", header: "IntPatch_Line.hxx".}
proc isVIsoOnS2*(this: IntPatchLine): StandardBoolean {.noSideEffect,
    importcpp: "IsVIsoOnS2", header: "IntPatch_Line.hxx".}
type
  IntPatchLinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IntPatch_Line::get_type_name(@)",
                            header: "IntPatch_Line.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_Line::get_type_descriptor(@)",
    header: "IntPatch_Line.hxx".}
proc dynamicType*(this: IntPatchLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_Line.hxx".}

