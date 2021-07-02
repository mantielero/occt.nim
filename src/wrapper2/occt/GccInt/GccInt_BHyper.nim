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

discard "forward decl of gp_Hypr2d"
discard "forward decl of GccInt_BHyper"
discard "forward decl of GccInt_BHyper"
type
  HandleGccIntBHyper* = Handle[GccIntBHyper]

## ! Describes a hyperbola as a bisecting curve between two
## ! 2D geometric objects (such as circles or points).

type
  GccIntBHyper* {.importcpp: "GccInt_BHyper", header: "GccInt_BHyper.hxx", bycopy.} = object of GccIntBisec ##
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
                                                                                                  ## hyperbola
                                                                                                  ## Hyper.


proc constructGccIntBHyper*(hyper: GpHypr2d): GccIntBHyper {.constructor,
    importcpp: "GccInt_BHyper(@)", header: "GccInt_BHyper.hxx".}
proc hyperbola*(this: GccIntBHyper): GpHypr2d {.noSideEffect, importcpp: "Hyperbola",
    header: "GccInt_BHyper.hxx".}
proc arcType*(this: GccIntBHyper): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BHyper.hxx".}
type
  GccIntBHyperbaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BHyper::get_type_name(@)",
                            header: "GccInt_BHyper.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BHyper::get_type_descriptor(@)",
    header: "GccInt_BHyper.hxx".}
proc dynamicType*(this: GccIntBHyper): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BHyper.hxx".}

