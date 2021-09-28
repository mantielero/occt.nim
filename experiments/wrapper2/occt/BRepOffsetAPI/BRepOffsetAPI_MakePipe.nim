##  Created on: 1994-07-12
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_Pipe"
type
  BRepOffsetAPI_MakePipe* {.importcpp: "BRepOffsetAPI_MakePipe",
                           header: "BRepOffsetAPI_MakePipe.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## pipe
                                                                                                     ## by
                                                                                                     ## sweeping
                                                                                                     ## the
                                                                                                     ## shape
                                                                                                     ## Profile
                                                                                                     ## along
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## wire
                                                                                                     ## Spine.The
                                                                                                     ## angle
                                                                                                     ## made
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ## spine
                                                                                                     ## with
                                                                                                     ## the
                                                                                                     ## profile
                                                                                                     ## is
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## maintained
                                                                                                     ## along
                                                                                                     ## the
                                                                                                     ## length
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## pipe.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Warning
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Spine
                                                                                                     ## must
                                                                                                     ## be
                                                                                                     ## G1
                                                                                                     ## continuous;
                                                                                                     ## that
                                                                                                     ## is,
                                                                                                     ## on
                                                                                                     ## the
                                                                                                     ## connection
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## vertex
                                                                                                     ## of
                                                                                                     ## two
                                                                                                     ## edges
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## wire,
                                                                                                     ## the
                                                                                                     ## tangent
                                                                                                     ## vectors
                                                                                                     ## on
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## the
                                                                                                     ## left
                                                                                                     ## and
                                                                                                     ## on
                                                                                                     ## the
                                                                                                     ## right
                                                                                                     ## must
                                                                                                     ## have
                                                                                                     ## the
                                                                                                     ## same
                                                                                                     ## direction,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## though
                                                                                                     ## not
                                                                                                     ## necessarily
                                                                                                     ## the
                                                                                                     ## same
                                                                                                     ## magnitude.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Exceptions
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Standard_DomainError
                                                                                                     ## if
                                                                                                     ## the
                                                                                                     ## profile
                                                                                                     ## is
                                                                                                     ## a
                                                                                                     ## solid
                                                                                                     ## or
                                                                                                     ## a
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## composite
                                                                                                     ## solid.


proc constructBRepOffsetAPI_MakePipe*(spine: TopoDS_Wire; profile: TopoDS_Shape): BRepOffsetAPI_MakePipe {.
    constructor, importcpp: "BRepOffsetAPI_MakePipe(@)",
    header: "BRepOffsetAPI_MakePipe.hxx".}
proc constructBRepOffsetAPI_MakePipe*(spine: TopoDS_Wire; profile: TopoDS_Shape;
                                     aMode: GeomFillTrihedron;
                                     forceApproxC1: bool = false): BRepOffsetAPI_MakePipe {.
    constructor, importcpp: "BRepOffsetAPI_MakePipe(@)",
    header: "BRepOffsetAPI_MakePipe.hxx".}
proc pipe*(this: BRepOffsetAPI_MakePipe): BRepFillPipe {.noSideEffect,
    importcpp: "Pipe", header: "BRepOffsetAPI_MakePipe.hxx".}
proc build*(this: var BRepOffsetAPI_MakePipe) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakePipe.hxx".}
proc firstShape*(this: var BRepOffsetAPI_MakePipe): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepOffsetAPI_MakePipe.hxx".}
proc lastShape*(this: var BRepOffsetAPI_MakePipe): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepOffsetAPI_MakePipe.hxx".}
proc generated*(this: var BRepOffsetAPI_MakePipe; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakePipe.hxx".}
proc generated*(this: var BRepOffsetAPI_MakePipe; sSpine: TopoDS_Shape;
               sProfile: TopoDS_Shape): TopoDS_Shape {.importcpp: "Generated",
    header: "BRepOffsetAPI_MakePipe.hxx".}
proc errorOnSurface*(this: BRepOffsetAPI_MakePipe): cfloat {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepOffsetAPI_MakePipe.hxx".}

























