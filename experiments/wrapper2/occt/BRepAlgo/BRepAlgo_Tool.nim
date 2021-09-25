##  Created on: 1995-10-23
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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
  BRepAlgoTool* {.importcpp: "BRepAlgo_Tool", header: "BRepAlgo_Tool.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Remove
                                                                                     ## the
                                                                                     ## non
                                                                                     ## valid
                                                                                     ## part
                                                                                     ## of
                                                                                     ## an
                                                                                     ## offsetshape
                                                                                     ##
                                                                                     ## !
                                                                                     ## 1
                                                                                     ## -
                                                                                     ## Remove
                                                                                     ## all
                                                                                     ## the
                                                                                     ## free
                                                                                     ## boundary
                                                                                     ## and
                                                                                     ## the
                                                                                     ## faces
                                                                                     ##
                                                                                     ## !
                                                                                     ## connex
                                                                                     ## to
                                                                                     ## such
                                                                                     ## edges.
                                                                                     ##
                                                                                     ## !
                                                                                     ## 2
                                                                                     ## -
                                                                                     ## Remove
                                                                                     ## all
                                                                                     ## the
                                                                                     ## shapes
                                                                                     ## not
                                                                                     ## valid
                                                                                     ## in
                                                                                     ## the
                                                                                     ## result
                                                                                     ##
                                                                                     ## !
                                                                                     ## (according
                                                                                     ## to
                                                                                     ## the
                                                                                     ## side
                                                                                     ## of
                                                                                     ## offseting)
                                                                                     ##
                                                                                     ## !
                                                                                     ## in
                                                                                     ## this
                                                                                     ## verion
                                                                                     ## only
                                                                                     ## the
                                                                                     ## first
                                                                                     ## point
                                                                                     ## is
                                                                                     ## implemented.


proc deboucle3D*(s: TopoDS_Shape; boundary: TopToolsMapOfShape): TopoDS_Shape {.
    importcpp: "BRepAlgo_Tool::Deboucle3D(@)", header: "BRepAlgo_Tool.hxx".}
