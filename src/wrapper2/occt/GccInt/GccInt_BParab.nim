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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Parab2d, GccInt_Bisec,
  GccInt_IType

discard "forward decl of gp_Parab2d"
discard "forward decl of GccInt_BParab"
discard "forward decl of GccInt_BParab"
type
  Handle_GccInt_BParab* = handle[GccInt_BParab]

## ! Describes a parabola as a bisecting curve between two
## ! 2D geometric objects (such as lines, circles or points).

type
  GccInt_BParab* {.importcpp: "GccInt_BParab", header: "GccInt_BParab.hxx", bycopy.} = object of GccInt_Bisec ##
                                                                                                    ## !
                                                                                                    ## Constructs
                                                                                                    ## a
                                                                                                    ## bisecting
                                                                                                    ## curve
                                                                                                    ## whose
                                                                                                    ## geometry
                                                                                                    ## is
                                                                                                    ## the
                                                                                                    ## 2D
                                                                                                    ## parabola
                                                                                                    ## Parab.


proc constructGccInt_BParab*(Parab: gp_Parab2d): GccInt_BParab {.constructor,
    importcpp: "GccInt_BParab(@)", header: "GccInt_BParab.hxx".}
proc Parabola*(this: GccInt_BParab): gp_Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "GccInt_BParab.hxx".}
proc ArcType*(this: GccInt_BParab): GccInt_IType {.noSideEffect,
    importcpp: "ArcType", header: "GccInt_BParab.hxx".}
type
  GccInt_BParabbase_type* = GccInt_Bisec

proc get_type_name*(): cstring {.importcpp: "GccInt_BParab::get_type_name(@)",
                              header: "GccInt_BParab.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GccInt_BParab::get_type_descriptor(@)",
    header: "GccInt_BParab.hxx".}
proc DynamicType*(this: GccInt_BParab): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BParab.hxx".}