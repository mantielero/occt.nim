##  Created on: 1991-01-23
##  Created by: Christophe MARION
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

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of TopLoc_Datum3D"
type
  HandleTopLocDatum3D* = Handle[TopLocDatum3D]

## ! Describes a coordinate transformation, i.e. a change
## ! to an elementary 3D coordinate system, or position in 3D space.
## ! A Datum3D is always described relative to the default datum.
## ! The default datum is described relative to itself: its
## ! origin is (0,0,0), and its axes are (1,0,0) (0,1,0) (0,0,1).

type
  TopLocDatum3D* {.importcpp: "TopLoc_Datum3D", header: "TopLoc_Datum3D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## default
                                                                                                           ## Datum3D.


proc constructTopLocDatum3D*(): TopLocDatum3D {.constructor,
    importcpp: "TopLoc_Datum3D(@)", header: "TopLoc_Datum3D.hxx".}
proc constructTopLocDatum3D*(t: Trsf): TopLocDatum3D {.constructor,
    importcpp: "TopLoc_Datum3D(@)", header: "TopLoc_Datum3D.hxx".}
proc transformation*(this: TopLocDatum3D): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "TopLoc_Datum3D.hxx".}
proc trsf*(this: TopLocDatum3D): Trsf {.noSideEffect, importcpp: "Trsf",
                                    header: "TopLoc_Datum3D.hxx".}
proc form*(this: TopLocDatum3D): TrsfForm {.noSideEffect, importcpp: "Form",
                                        header: "TopLoc_Datum3D.hxx".}
proc dumpJson*(this: TopLocDatum3D; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopLoc_Datum3D.hxx".}
proc shallowDump*(this: TopLocDatum3D; s: var StandardOStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "TopLoc_Datum3D.hxx".}
type
  TopLocDatum3DbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopLoc_Datum3D::get_type_name(@)",
                            header: "TopLoc_Datum3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopLoc_Datum3D::get_type_descriptor(@)",
    header: "TopLoc_Datum3D.hxx".}
proc dynamicType*(this: TopLocDatum3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopLoc_Datum3D.hxx".}
proc shallowDump*(me: Handle[TopLocDatum3D]; s: var StandardOStream) =
  discard

