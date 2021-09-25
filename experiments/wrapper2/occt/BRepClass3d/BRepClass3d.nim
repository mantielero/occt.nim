##  Created on: 1994-04-18
##  Created by: Laurent BUCHARD
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

discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of BRepClass3d_Intersector3d"
discard "forward decl of BRepClass3d_SolidExplorer"
discard "forward decl of BRepClass3d_SolidPassiveClassifier"
discard "forward decl of BRepClass3d_SClassifier"
discard "forward decl of BRepClass3d_SolidClassifier"
type
  BRepClass3d* {.importcpp: "BRepClass3d", header: "BRepClass3d.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## the
                                                                                ## outer
                                                                                ## most
                                                                                ## shell
                                                                                ## of
                                                                                ## <S>.
                                                                                ## Returns
                                                                                ## a
                                                                                ## Null
                                                                                ##
                                                                                ## !
                                                                                ## shell
                                                                                ## if
                                                                                ## <S>
                                                                                ## has
                                                                                ## no
                                                                                ## outer
                                                                                ## shell.
                                                                                ##
                                                                                ## !
                                                                                ## If
                                                                                ## <S>
                                                                                ## has
                                                                                ## only
                                                                                ## one
                                                                                ## shell,
                                                                                ## then
                                                                                ## it
                                                                                ## will
                                                                                ## return,
                                                                                ## without
                                                                                ## checking
                                                                                ## orientation.


proc outerShell*(s: TopoDS_Solid): TopoDS_Shell {.
    importcpp: "BRepClass3d::OuterShell(@)", header: "BRepClass3d.hxx".}
