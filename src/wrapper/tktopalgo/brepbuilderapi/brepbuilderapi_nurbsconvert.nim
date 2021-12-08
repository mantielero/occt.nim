##  Created on: 1994-12-09
##  Created by: Jacques GOUSSARD
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

discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_NurbsConvert* {.importcpp: "BRepBuilderAPI_NurbsConvert",
                                header: "BRepBuilderAPI_NurbsConvert.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                                    ## !
                                                                                                                    ## Constructs
                                                                                                                    ## a
                                                                                                                    ## framework
                                                                                                                    ## for
                                                                                                                    ## converting
                                                                                                                    ## the
                                                                                                                    ## geometry
                                                                                                                    ## of
                                                                                                                    ## a
                                                                                                                    ##
                                                                                                                    ## !
                                                                                                                    ## shape
                                                                                                                    ## into
                                                                                                                    ## NURBS
                                                                                                                    ## geometry.
                                                                                                                    ## Use
                                                                                                                    ## the
                                                                                                                    ## function
                                                                                                                    ## Perform
                                                                                                                    ##
                                                                                                                    ## !
                                                                                                                    ## to
                                                                                                                    ## define
                                                                                                                    ## the
                                                                                                                    ## shape
                                                                                                                    ## to
                                                                                                                    ## convert.


proc nurbsConvert*(): BRepBuilderAPI_NurbsConvert {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_NurbsConvert(@)", header: "BRepBuilderAPI_NurbsConvert.hxx".}
proc nurbsConvert*(s: TopoDS_Shape; copy: bool = false): BRepBuilderAPI_NurbsConvert {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_NurbsConvert(@)",
    header: "BRepBuilderAPI_NurbsConvert.hxx".}
proc perform*(this: var BRepBuilderAPI_NurbsConvert; s: TopoDS_Shape;
             copy: bool = false) {.cdecl, importcpp: "Perform", header: "BRepBuilderAPI_NurbsConvert.hxx".}
proc modified*(this: var BRepBuilderAPI_NurbsConvert; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepBuilderAPI_NurbsConvert.hxx".}
proc modifiedShape*(this: BRepBuilderAPI_NurbsConvert; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape", header: "BRepBuilderAPI_NurbsConvert.hxx".}