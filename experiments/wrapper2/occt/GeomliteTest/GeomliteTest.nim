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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

## ! this  package  provides  elementary commands for  curves  and
## ! surface.

type
  GeomliteTest* {.importcpp: "GeomliteTest", header: "GeomliteTest.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## defines
                                                                                   ## all
                                                                                   ## geometric
                                                                                   ## commands.


proc AllCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::AllCommands(@)", header: "GeomliteTest.hxx".}
proc CurveCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::CurveCommands(@)", header: "GeomliteTest.hxx".}
proc SurfaceCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::SurfaceCommands(@)", header: "GeomliteTest.hxx".}
proc API2dCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::API2dCommands(@)", header: "GeomliteTest.hxx".}
proc ApproxCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::ApproxCommands(@)", header: "GeomliteTest.hxx".}
proc ModificationCommands*(I: var Draw_Interpretor) {.
    importcpp: "GeomliteTest::ModificationCommands(@)", header: "GeomliteTest.hxx".}