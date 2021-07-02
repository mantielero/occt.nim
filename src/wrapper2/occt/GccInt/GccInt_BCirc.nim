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

discard "forward decl of gp_Circ2d"
discard "forward decl of GccInt_BCirc"
discard "forward decl of GccInt_BCirc"
type
  HandleGccIntBCirc* = Handle[GccIntBCirc]

## ! Describes a circle as a bisecting curve between two 2D
## ! geometric objects (such as circles or points).

type
  GccIntBCirc* {.importcpp: "GccInt_BCirc", header: "GccInt_BCirc.hxx", bycopy.} = object of GccIntBisec ##
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
                                                                                               ## circle
                                                                                               ## Circ.


proc constructGccIntBCirc*(circ: GpCirc2d): GccIntBCirc {.constructor,
    importcpp: "GccInt_BCirc(@)", header: "GccInt_BCirc.hxx".}
proc circle*(this: GccIntBCirc): GpCirc2d {.noSideEffect, importcpp: "Circle",
                                        header: "GccInt_BCirc.hxx".}
proc arcType*(this: GccIntBCirc): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BCirc.hxx".}
type
  GccIntBCircbaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BCirc::get_type_name(@)",
                            header: "GccInt_BCirc.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BCirc::get_type_descriptor(@)", header: "GccInt_BCirc.hxx".}
proc dynamicType*(this: GccIntBCirc): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BCirc.hxx".}

