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

discard "forward decl of gp_Pnt2d"
discard "forward decl of GccInt_BPoint"
discard "forward decl of GccInt_BPoint"
type
  HandleGccIntBPoint* = Handle[GccIntBPoint]

## ! Describes a point as a bisecting object between two 2D geometric objects.

type
  GccIntBPoint* {.importcpp: "GccInt_BPoint", header: "GccInt_BPoint.hxx", bycopy.} = object of GccIntBisec ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## a
                                                                                                  ## bisecting
                                                                                                  ## object
                                                                                                  ## whose
                                                                                                  ## geometry
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## 2D
                                                                                                  ## point
                                                                                                  ## Point.


proc constructGccIntBPoint*(point: Pnt2d): GccIntBPoint {.constructor,
    importcpp: "GccInt_BPoint(@)", header: "GccInt_BPoint.hxx".}
proc point*(this: GccIntBPoint): Pnt2d {.noSideEffect, importcpp: "Point",
                                     header: "GccInt_BPoint.hxx".}
proc arcType*(this: GccIntBPoint): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BPoint.hxx".}
type
  GccIntBPointbaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BPoint::get_type_name(@)",
                            header: "GccInt_BPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BPoint::get_type_descriptor(@)",
    header: "GccInt_BPoint.hxx".}
proc dynamicType*(this: GccIntBPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BPoint.hxx".}
