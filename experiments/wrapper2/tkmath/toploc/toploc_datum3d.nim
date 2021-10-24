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


proc newTopLocDatum3D*(): TopLocDatum3D {.cdecl, constructor,
                                       importcpp: "TopLoc_Datum3D(@)",
                                       dynlib: tkmath.}
proc newTopLocDatum3D*(t: Trsf): TopLocDatum3D {.cdecl, constructor,
    importcpp: "TopLoc_Datum3D(@)", dynlib: tkmath.}
proc transformation*(this: TopLocDatum3D): Trsf {.noSideEffect, cdecl,
    importcpp: "Transformation", dynlib: tkmath.}
proc trsf*(this: TopLocDatum3D): Trsf {.noSideEffect, cdecl, importcpp: "Trsf",
                                    dynlib: tkmath.}
proc form*(this: TopLocDatum3D): TrsfForm {.noSideEffect, cdecl, importcpp: "Form",
                                        dynlib: tkmath.}
proc dumpJson*(this: TopLocDatum3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}
proc shallowDump*(this: TopLocDatum3D; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "ShallowDump", dynlib: tkmath.}
proc shallowDump*(me: Handle[TopLocDatum3D]; s: var StandardOStream) {.cdecl.} =
  discard
