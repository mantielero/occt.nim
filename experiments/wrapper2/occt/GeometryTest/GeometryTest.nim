##  Created on: 1991-06-24
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

## ! this  package  provides  commands for  curves  and
## ! surface.

type
  GeometryTest* {.importcpp: "GeometryTest", header: "GeometryTest.hxx", bycopy.} = object


proc `new`*(this: var GeometryTest; theSize: csize_t): pointer {.
    importcpp: "GeometryTest::operator new", header: "GeometryTest.hxx".}
proc `delete`*(this: var GeometryTest; theAddress: pointer) {.
    importcpp: "GeometryTest::operator delete", header: "GeometryTest.hxx".}
proc `new[]`*(this: var GeometryTest; theSize: csize_t): pointer {.
    importcpp: "GeometryTest::operator new[]", header: "GeometryTest.hxx".}
proc `delete[]`*(this: var GeometryTest; theAddress: pointer) {.
    importcpp: "GeometryTest::operator delete[]", header: "GeometryTest.hxx".}
proc `new`*(this: var GeometryTest; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeometryTest::operator new", header: "GeometryTest.hxx".}
proc `delete`*(this: var GeometryTest; a2: pointer; a3: pointer) {.
    importcpp: "GeometryTest::operator delete", header: "GeometryTest.hxx".}
proc allCommands*(i: var DrawInterpretor) {.importcpp: "GeometryTest::AllCommands(@)",
                                        header: "GeometryTest.hxx".}
proc curveCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::CurveCommands(@)", header: "GeometryTest.hxx".}
proc curveTanCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::CurveTanCommands(@)", header: "GeometryTest.hxx".}
proc fairCurveCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::FairCurveCommands(@)", header: "GeometryTest.hxx".}
proc surfaceCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::SurfaceCommands(@)", header: "GeometryTest.hxx".}
proc constraintCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::ConstraintCommands(@)", header: "GeometryTest.hxx".}
proc aPICommands*(i: var DrawInterpretor) {.importcpp: "GeometryTest::APICommands(@)",
                                        header: "GeometryTest.hxx".}
proc continuityCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::ContinuityCommands(@)", header: "GeometryTest.hxx".}
proc polyCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::PolyCommands(@)", header: "GeometryTest.hxx".}
proc testProjCommands*(i: var DrawInterpretor) {.
    importcpp: "GeometryTest::TestProjCommands(@)", header: "GeometryTest.hxx".}