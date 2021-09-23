##  Created on: 1991-06-25
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
  ../Draw/Draw_Interpretor, ../TCollection/TCollection_AsciiString,
  ../TopAbs/TopAbs_ShapeEnum, ../TopoDS/TopoDS_Shape

## ! Used to display BRep objects  using the DrawTrSurf
## ! package.
## ! The DrawableShape is a Display object build from a
## ! Shape.
## ! Provides methods to manage a directory of named shapes.
## ! Provides a set of Draw commands for Shapes.

type
  DBRep* {.importcpp: "DBRep", header: "DBRep.hxx", bycopy.} = object ## ! Creation of isoparametric curves.
                                                              ## ! Implements ProgressIndicator for DRAW
                                                              ## ! Sets  <S> in the  variable  <Name>.  Overwrite the
                                                              ## ! variable if already set.
                                                              ## ! Returns the shape in the variable.
                                                              ## ! @param theName [in] [out] variable name, or "." to pick up shape interactively (the picked name will be returned then)
                                                              ## ! @param theType [in]       shape type filter; function will return NULL if shape has different type
                                                              ## ! @param theToComplain [in] when TRUE, prints a message on cout if the variable is not set


proc Set*(Name: Standard_CString; S: TopoDS_Shape) {.importcpp: "DBRep::Set(@)",
    header: "DBRep.hxx".}
proc Get*(theName: var Standard_CString; theType: TopAbs_ShapeEnum = TopAbs_SHAPE;
         theToComplain: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "DBRep::Get(@)", header: "DBRep.hxx".}
proc Get*(theName: var TCollection_AsciiString;
         theType: TopAbs_ShapeEnum = TopAbs_SHAPE;
         theToComplain: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "DBRep::Get(@)", header: "DBRep.hxx".}
proc GetExisting*(theName: TCollection_AsciiString;
                 theType: TopAbs_ShapeEnum = TopAbs_SHAPE;
                 theToComplain: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "DBRep::GetExisting(@)", header: "DBRep.hxx".}
proc BasicCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DBRep::BasicCommands(@)", header: "DBRep.hxx".}
proc HLRMode*(): Standard_Boolean {.importcpp: "DBRep::HLRMode(@)",
                                 header: "DBRep.hxx".}
proc Rg1Mode*(): Standard_Boolean {.importcpp: "DBRep::Rg1Mode(@)",
                                 header: "DBRep.hxx".}
proc RgNMode*(): Standard_Boolean {.importcpp: "DBRep::RgNMode(@)",
                                 header: "DBRep.hxx".}
proc HidMode*(): Standard_Boolean {.importcpp: "DBRep::HidMode(@)",
                                 header: "DBRep.hxx".}
proc HLRAngle*(): Standard_Real {.importcpp: "DBRep::HLRAngle(@)",
                               header: "DBRep.hxx".}
proc NbIsos*(): Standard_Integer {.importcpp: "DBRep::NbIsos(@)", header: "DBRep.hxx".}
proc Discretisation*(): Standard_Integer {.importcpp: "DBRep::Discretisation(@)",
                                        header: "DBRep.hxx".}