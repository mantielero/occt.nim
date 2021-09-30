##  Created on: 1996-09-04
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
type
  LocOpePipe* {.importcpp: "LocOpe_Pipe", header: "LocOpe_Pipe.hxx", bycopy.} = object


proc constructLocOpePipe*(spine: TopoDS_Wire; profile: TopoDS_Shape): LocOpePipe {.
    constructor, importcpp: "LocOpe_Pipe(@)", header: "LocOpe_Pipe.hxx".}
proc spine*(this: LocOpePipe): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "LocOpe_Pipe.hxx".}
proc profile*(this: LocOpePipe): TopoDS_Shape {.noSideEffect, importcpp: "Profile",
    header: "LocOpe_Pipe.hxx".}
proc firstShape*(this: LocOpePipe): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Pipe.hxx".}
proc lastShape*(this: LocOpePipe): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Pipe.hxx".}
proc shape*(this: LocOpePipe): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Pipe.hxx".}
proc shapes*(this: var LocOpePipe; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Shapes", header: "LocOpe_Pipe.hxx".}
proc curves*(this: var LocOpePipe; spt: TColgpSequenceOfPnt): TColGeomSequenceOfCurve {.
    importcpp: "Curves", header: "LocOpe_Pipe.hxx".}
proc barycCurve*(this: var LocOpePipe): Handle[GeomCurve] {.importcpp: "BarycCurve",
    header: "LocOpe_Pipe.hxx".}

























