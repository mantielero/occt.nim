##  Created on: 1994-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of MoniTool_Element"
type
  MoniToolElemHasher* {.importcpp: "MoniTool_ElemHasher",
                       header: "MoniTool_ElemHasher.hxx", bycopy.} = object ## ! Returns hash code for the given element, in the range [1,
                                                                       ## theUpperBound].
                                                                       ## ! Asks
                                                                       ## theElement its HashCode, then
                                                                       ## transforms it to be in the required range.
                                                                       ## ! @param
                                                                       ## theElement the element which hash code is to be computed
                                                                       ## ! @param
                                                                       ## theUpperBound the upper bound of the range a computing hash code must be within
                                                                       ## ! @return a computed hash code, in the range [1,
                                                                       ## theUpperBound]


proc hashCode*(theElement: Handle[MoniToolElement]; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "MoniTool_ElemHasher::HashCode(@)",
    header: "MoniTool_ElemHasher.hxx".}
proc isEqual*(k1: Handle[MoniToolElement]; k2: Handle[MoniToolElement]): StandardBoolean {.
    importcpp: "MoniTool_ElemHasher::IsEqual(@)",
    header: "MoniTool_ElemHasher.hxx".}

