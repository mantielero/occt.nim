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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepFill/BRepFill_Pipe,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape, ../TColGeom/TColGeom_SequenceOfCurve,
  ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
type
  LocOpe_Pipe* {.importcpp: "LocOpe_Pipe", header: "LocOpe_Pipe.hxx", bycopy.} = object


proc constructLocOpe_Pipe*(Spine: TopoDS_Wire; Profile: TopoDS_Shape): LocOpe_Pipe {.
    constructor, importcpp: "LocOpe_Pipe(@)", header: "LocOpe_Pipe.hxx".}
proc Spine*(this: LocOpe_Pipe): TopoDS_Shape {.noSideEffect, importcpp: "Spine",
    header: "LocOpe_Pipe.hxx".}
proc Profile*(this: LocOpe_Pipe): TopoDS_Shape {.noSideEffect, importcpp: "Profile",
    header: "LocOpe_Pipe.hxx".}
proc FirstShape*(this: LocOpe_Pipe): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_Pipe.hxx".}
proc LastShape*(this: LocOpe_Pipe): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_Pipe.hxx".}
proc Shape*(this: LocOpe_Pipe): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_Pipe.hxx".}
proc Shapes*(this: var LocOpe_Pipe; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Shapes", header: "LocOpe_Pipe.hxx".}
proc Curves*(this: var LocOpe_Pipe; Spt: TColgp_SequenceOfPnt): TColGeom_SequenceOfCurve {.
    importcpp: "Curves", header: "LocOpe_Pipe.hxx".}
proc BarycCurve*(this: var LocOpe_Pipe): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "LocOpe_Pipe.hxx".}