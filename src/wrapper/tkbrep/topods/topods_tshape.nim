##  Created on: 1990-12-13
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_Iterator"
discard "forward decl of TopoDS_Builder"
when defined(Convex):
  discard
## ! A TShape  is a topological  structure describing a
## ! set of points in a 2D or 3D space.
## !
## ! A topological shape is a structure made from other
## ! shapes.  This is a deferred class  used to support
## ! topological objects.
## !
## ! TShapes are   defined   by  their  optional domain
## ! (geometry)  and  their  components  (other TShapes
## ! with  Locations and Orientations).  The components
## ! are stored in a List of Shapes.
## !
## ! A   TShape contains  the   following boolean flags :
## !
## ! - Free       : Free or Frozen.
## ! - Modified   : Has been modified.
## ! - Checked    : Has been checked.
## ! - Orientable : Can be oriented.
## ! - Closed     : Is closed (note that only Wires and Shells may be closed).
## ! - Infinite   : Is infinite.
## ! - Convex     : Is convex.
## !
## ! Users have no direct access to the classes derived
## ! from TShape.  They  handle them with   the classes
## ! derived from Shape.

type
  TopoDS_TShape* {.importcpp: "TopoDS_TShape", header: "TopoDS_TShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## the
                                                                                                         ## free
                                                                                                         ## flag.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## TShape.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Free
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Modified
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Checked
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Orientable
                                                                                                         ## :
                                                                                                         ## True
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Closed
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Infinite
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Convex
                                                                                                         ## :
                                                                                                         ## False
                                                                                                         ##
                                                                                                         ## Defined
                                                                                                         ## mask
                                                                                                         ## values


proc free*(this: TopoDS_TShape): bool {.noSideEffect, cdecl, importcpp: "Free",
                                    dynlib: tkbrep.}
proc free*(this: var TopoDS_TShape; theIsFree: bool) {.cdecl, importcpp: "Free",
    dynlib: tkbrep.}
proc locked*(this: TopoDS_TShape): bool {.noSideEffect, cdecl, importcpp: "Locked",
                                      dynlib: tkbrep.}
proc locked*(this: var TopoDS_TShape; theIsLocked: bool) {.cdecl, importcpp: "Locked",
    dynlib: tkbrep.}
proc modified*(this: TopoDS_TShape): bool {.noSideEffect, cdecl,
                                        importcpp: "Modified", dynlib: tkbrep.}
proc modified*(this: var TopoDS_TShape; theIsModified: bool) {.cdecl,
    importcpp: "Modified", dynlib: tkbrep.}
proc checked*(this: TopoDS_TShape): bool {.noSideEffect, cdecl, importcpp: "Checked",
                                       dynlib: tkbrep.}
proc checked*(this: var TopoDS_TShape; theIsChecked: bool) {.cdecl,
    importcpp: "Checked", dynlib: tkbrep.}
proc orientable*(this: TopoDS_TShape): bool {.noSideEffect, cdecl,
    importcpp: "Orientable", dynlib: tkbrep.}
proc orientable*(this: var TopoDS_TShape; theIsOrientable: bool) {.cdecl,
    importcpp: "Orientable", dynlib: tkbrep.}
proc closed*(this: TopoDS_TShape): bool {.noSideEffect, cdecl, importcpp: "Closed",
                                      dynlib: tkbrep.}
proc closed*(this: var TopoDS_TShape; theIsClosed: bool) {.cdecl, importcpp: "Closed",
    dynlib: tkbrep.}
proc infinite*(this: TopoDS_TShape): bool {.noSideEffect, cdecl,
                                        importcpp: "Infinite", dynlib: tkbrep.}
proc infinite*(this: var TopoDS_TShape; theIsInfinite: bool) {.cdecl,
    importcpp: "Infinite", dynlib: tkbrep.}
proc convex*(this: TopoDS_TShape): bool {.noSideEffect, cdecl, importcpp: "Convex",
                                      dynlib: tkbrep.}
proc convex*(this: var TopoDS_TShape; theIsConvex: bool) {.cdecl, importcpp: "Convex",
    dynlib: tkbrep.}
proc shapeType*(this: TopoDS_TShape): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ShapeType", dynlib: tkbrep.}
proc emptyCopy*(this: TopoDS_TShape): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "EmptyCopy", dynlib: tkbrep.}
proc nbChildren*(this: TopoDS_TShape): cint {.noSideEffect, cdecl,
    importcpp: "NbChildren", dynlib: tkbrep.}
proc dumpJson*(this: TopoDS_TShape; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkbrep.}
type
  HandleTopoDS_TShape* = Handle[TopoDS_TShape]
