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


proc set*(name: StandardCString; s: TopoDS_Shape) {.importcpp: "DBRep::Set(@)",
    header: "DBRep.hxx".}
proc get*(theName: var StandardCString; theType: TopAbsShapeEnum = topAbsSHAPE;
         theToComplain: StandardBoolean = standardFalse): TopoDS_Shape {.
    importcpp: "DBRep::Get(@)", header: "DBRep.hxx".}
proc get*(theName: var TCollectionAsciiString;
         theType: TopAbsShapeEnum = topAbsSHAPE;
         theToComplain: StandardBoolean = standardFalse): TopoDS_Shape {.
    importcpp: "DBRep::Get(@)", header: "DBRep.hxx".}
proc getExisting*(theName: TCollectionAsciiString;
                 theType: TopAbsShapeEnum = topAbsSHAPE;
                 theToComplain: StandardBoolean = standardFalse): TopoDS_Shape {.
    importcpp: "DBRep::GetExisting(@)", header: "DBRep.hxx".}
proc basicCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DBRep::BasicCommands(@)", header: "DBRep.hxx".}
proc hLRMode*(): StandardBoolean {.importcpp: "DBRep::HLRMode(@)",
                                header: "DBRep.hxx".}
proc rg1Mode*(): StandardBoolean {.importcpp: "DBRep::Rg1Mode(@)",
                                header: "DBRep.hxx".}
proc rgNMode*(): StandardBoolean {.importcpp: "DBRep::RgNMode(@)",
                                header: "DBRep.hxx".}
proc hidMode*(): StandardBoolean {.importcpp: "DBRep::HidMode(@)",
                                header: "DBRep.hxx".}
proc hLRAngle*(): StandardReal {.importcpp: "DBRep::HLRAngle(@)", header: "DBRep.hxx".}
proc nbIsos*(): StandardInteger {.importcpp: "DBRep::NbIsos(@)", header: "DBRep.hxx".}
proc discretisation*(): StandardInteger {.importcpp: "DBRep::Discretisation(@)",
                                       header: "DBRep.hxx".}

