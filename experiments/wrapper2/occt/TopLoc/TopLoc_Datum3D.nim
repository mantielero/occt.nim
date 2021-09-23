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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Trsf,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of TopLoc_Datum3D"
type
  Handle_TopLoc_Datum3D* = handle[TopLoc_Datum3D]

## ! Describes a coordinate transformation, i.e. a change
## ! to an elementary 3D coordinate system, or position in 3D space.
## ! A Datum3D is always described relative to the default datum.
## ! The default datum is described relative to itself: its
## ! origin is (0,0,0), and its axes are (1,0,0) (0,1,0) (0,0,1).

type
  TopLoc_Datum3D* {.importcpp: "TopLoc_Datum3D", header: "TopLoc_Datum3D.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Constructs
                                                                                                             ## a
                                                                                                             ## default
                                                                                                             ## Datum3D.


proc constructTopLoc_Datum3D*(): TopLoc_Datum3D {.constructor,
    importcpp: "TopLoc_Datum3D(@)", header: "TopLoc_Datum3D.hxx".}
proc constructTopLoc_Datum3D*(T: gp_Trsf): TopLoc_Datum3D {.constructor,
    importcpp: "TopLoc_Datum3D(@)", header: "TopLoc_Datum3D.hxx".}
proc Transformation*(this: TopLoc_Datum3D): gp_Trsf {.noSideEffect,
    importcpp: "Transformation", header: "TopLoc_Datum3D.hxx".}
proc Trsf*(this: TopLoc_Datum3D): gp_Trsf {.noSideEffect, importcpp: "Trsf",
                                        header: "TopLoc_Datum3D.hxx".}
proc Form*(this: TopLoc_Datum3D): gp_TrsfForm {.noSideEffect, importcpp: "Form",
    header: "TopLoc_Datum3D.hxx".}
proc DumpJson*(this: TopLoc_Datum3D; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopLoc_Datum3D.hxx".}
proc ShallowDump*(this: TopLoc_Datum3D; S: var Standard_OStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "TopLoc_Datum3D.hxx".}
type
  TopLoc_Datum3Dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopLoc_Datum3D::get_type_name(@)",
                              header: "TopLoc_Datum3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopLoc_Datum3D::get_type_descriptor(@)",
    header: "TopLoc_Datum3D.hxx".}
proc DynamicType*(this: TopLoc_Datum3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopLoc_Datum3D.hxx".}
proc ShallowDump*(me: handle[TopLoc_Datum3D]; S: var Standard_OStream) =
  discard
