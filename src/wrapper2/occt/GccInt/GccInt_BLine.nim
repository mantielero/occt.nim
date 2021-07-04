##  Created on: 1991-10-04
##  Created by: Remi GILET
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Lin2d, GccInt_Bisec,
  GccInt_IType

discard "forward decl of gp_Lin2d"
discard "forward decl of GccInt_BLine"
discard "forward decl of GccInt_BLine"
type
  Handle_GccInt_BLine* = handle[GccInt_BLine]

## ! Describes a line as a bisecting curve between two 2D
## ! geometric objects (such as lines, circles or points).

type
  GccInt_BLine* {.importcpp: "GccInt_BLine", header: "GccInt_BLine.hxx", bycopy.} = object of GccInt_Bisec ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## a
                                                                                                 ## bisecting
                                                                                                 ## line
                                                                                                 ## whose
                                                                                                 ## geometry
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## 2D
                                                                                                 ## line
                                                                                                 ## Line.


proc constructGccInt_BLine*(Line: gp_Lin2d): GccInt_BLine {.constructor,
    importcpp: "GccInt_BLine(@)", header: "GccInt_BLine.hxx".}
proc Line*(this: GccInt_BLine): gp_Lin2d {.noSideEffect, importcpp: "Line",
                                       header: "GccInt_BLine.hxx".}
proc ArcType*(this: GccInt_BLine): GccInt_IType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BLine.hxx".}
type
  GccInt_BLinebase_type* = GccInt_Bisec

proc get_type_name*(): cstring {.importcpp: "GccInt_BLine::get_type_name(@)",
                              header: "GccInt_BLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GccInt_BLine::get_type_descriptor(@)", header: "GccInt_BLine.hxx".}
proc DynamicType*(this: GccInt_BLine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BLine.hxx".}