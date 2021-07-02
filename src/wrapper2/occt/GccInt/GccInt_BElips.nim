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

discard "forward decl of gp_Elips2d"
discard "forward decl of GccInt_BElips"
discard "forward decl of GccInt_BElips"
type
  HandleGccIntBElips* = Handle[GccIntBElips]

## ! Describes an ellipse as a bisecting curve between two
## ! 2D geometric objects (such as circles or points).

type
  GccIntBElips* {.importcpp: "GccInt_BElips", header: "GccInt_BElips.hxx", bycopy.} = object of GccIntBisec ##
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
                                                                                                  ## ellipse
                                                                                                  ## Ellipse.


proc constructGccIntBElips*(ellipse: GpElips2d): GccIntBElips {.constructor,
    importcpp: "GccInt_BElips(@)", header: "GccInt_BElips.hxx".}
proc ellipse*(this: GccIntBElips): GpElips2d {.noSideEffect, importcpp: "Ellipse",
    header: "GccInt_BElips.hxx".}
proc arcType*(this: GccIntBElips): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BElips.hxx".}
type
  GccIntBElipsbaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BElips::get_type_name(@)",
                            header: "GccInt_BElips.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BElips::get_type_descriptor(@)",
    header: "GccInt_BElips.hxx".}
proc dynamicType*(this: GccIntBElips): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BElips.hxx".}

