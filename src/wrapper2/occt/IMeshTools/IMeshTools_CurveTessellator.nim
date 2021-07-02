##  Created on: 2016-04-19
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of gp_Pnt"
type
  IMeshToolsCurveTessellator* {.importcpp: "IMeshTools_CurveTessellator",
                               header: "IMeshTools_CurveTessellator.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Destructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Constructor.


proc destroyIMeshToolsCurveTessellator*(this: var IMeshToolsCurveTessellator) {.
    importcpp: "#.~IMeshTools_CurveTessellator()",
    header: "IMeshTools_CurveTessellator.hxx".}
proc pointsNb*(this: IMeshToolsCurveTessellator): StandardInteger {.noSideEffect,
    importcpp: "PointsNb", header: "IMeshTools_CurveTessellator.hxx".}
proc value*(this: IMeshToolsCurveTessellator; theIndex: StandardInteger;
           thePoint: var GpPnt; theParameter: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Value", header: "IMeshTools_CurveTessellator.hxx".}
type
  IMeshToolsCurveTessellatorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshTools_CurveTessellator::get_type_name(@)",
                            header: "IMeshTools_CurveTessellator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_CurveTessellator::get_type_descriptor(@)",
    header: "IMeshTools_CurveTessellator.hxx".}
proc dynamicType*(this: IMeshToolsCurveTessellator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IMeshTools_CurveTessellator.hxx".}

