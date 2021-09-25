##  Created on: 2012-08-06
##  Created by: jgv@ROLEX
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MiddlePath* {.importcpp: "BRepOffsetAPI_MiddlePath",
                             header: "BRepOffsetAPI_MiddlePath.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                            ## !
                                                                                                            ## General
                                                                                                            ## constructor.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## StartShape
                                                                                                            ## and
                                                                                                            ## EndShape
                                                                                                            ## may
                                                                                                            ## be
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## a
                                                                                                            ## wire
                                                                                                            ## or
                                                                                                            ## a
                                                                                                            ## face


proc constructBRepOffsetAPI_MiddlePath*(aShape: TopoDS_Shape;
                                       startShape: TopoDS_Shape;
                                       endShape: TopoDS_Shape): BRepOffsetAPI_MiddlePath {.
    constructor, importcpp: "BRepOffsetAPI_MiddlePath(@)",
    header: "BRepOffsetAPI_MiddlePath.hxx".}
proc build*(this: var BRepOffsetAPI_MiddlePath) {.importcpp: "Build",
    header: "BRepOffsetAPI_MiddlePath.hxx".}
