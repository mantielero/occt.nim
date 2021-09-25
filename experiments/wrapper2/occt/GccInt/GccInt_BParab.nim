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

discard "forward decl of gp_Parab2d"
discard "forward decl of GccInt_BParab"
discard "forward decl of GccInt_BParab"
type
  HandleGccIntBParab* = Handle[GccIntBParab]

## ! Describes a parabola as a bisecting curve between two
## ! 2D geometric objects (such as lines, circles or points).

type
  GccIntBParab* {.importcpp: "GccInt_BParab", header: "GccInt_BParab.hxx", bycopy.} = object of GccIntBisec ##
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


proc constructGccIntBParab*(parab: Parab2d): GccIntBParab {.constructor,
    importcpp: "GccInt_BParab(@)", header: "GccInt_BParab.hxx".}
proc parabola*(this: GccIntBParab): Parab2d {.noSideEffect, importcpp: "Parabola",
    header: "GccInt_BParab.hxx".}
proc arcType*(this: GccIntBParab): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BParab.hxx".}
type
  GccIntBParabbaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BParab::get_type_name(@)",
                            header: "GccInt_BParab.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BParab::get_type_descriptor(@)",
    header: "GccInt_BParab.hxx".}
proc dynamicType*(this: GccIntBParab): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BParab.hxx".}
