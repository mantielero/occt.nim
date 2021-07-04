##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XY,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_WitnessLine"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_AngularDimension"
discard "forward decl of IGESDimen_AngularDimension"
type
  Handle_IGESDimen_AngularDimension* = handle[IGESDimen_AngularDimension]

## ! defines AngularDimension, Type <202> Form <0>
## ! in package IGESDimen
## ! Used to dimension angles

type
  IGESDimen_AngularDimension* {.importcpp: "IGESDimen_AngularDimension",
                               header: "IGESDimen_AngularDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_AngularDimension*(): IGESDimen_AngularDimension {.
    constructor, importcpp: "IGESDimen_AngularDimension(@)",
    header: "IGESDimen_AngularDimension.hxx".}
proc Init*(this: var IGESDimen_AngularDimension;
          aNote: handle[IGESDimen_GeneralNote];
          aLine: handle[IGESDimen_WitnessLine];
          anotherLine: handle[IGESDimen_WitnessLine]; aVertex: gp_XY;
          aRadius: Standard_Real; aLeader: handle[IGESDimen_LeaderArrow];
          anotherLeader: handle[IGESDimen_LeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_AngularDimension.hxx".}
proc Note*(this: IGESDimen_AngularDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_AngularDimension.hxx".}
proc HasFirstWitnessLine*(this: IGESDimen_AngularDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasFirstWitnessLine",
    header: "IGESDimen_AngularDimension.hxx".}
proc FirstWitnessLine*(this: IGESDimen_AngularDimension): handle[
    IGESDimen_WitnessLine] {.noSideEffect, importcpp: "FirstWitnessLine",
                            header: "IGESDimen_AngularDimension.hxx".}
proc HasSecondWitnessLine*(this: IGESDimen_AngularDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondWitnessLine",
    header: "IGESDimen_AngularDimension.hxx".}
proc SecondWitnessLine*(this: IGESDimen_AngularDimension): handle[
    IGESDimen_WitnessLine] {.noSideEffect, importcpp: "SecondWitnessLine",
                            header: "IGESDimen_AngularDimension.hxx".}
proc Vertex*(this: IGESDimen_AngularDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "Vertex", header: "IGESDimen_AngularDimension.hxx".}
proc TransformedVertex*(this: IGESDimen_AngularDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "TransformedVertex", header: "IGESDimen_AngularDimension.hxx".}
proc Radius*(this: IGESDimen_AngularDimension): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESDimen_AngularDimension.hxx".}
proc FirstLeader*(this: IGESDimen_AngularDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader",
    header: "IGESDimen_AngularDimension.hxx".}
proc SecondLeader*(this: IGESDimen_AngularDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_AngularDimension.hxx".}
type
  IGESDimen_AngularDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_AngularDimension::get_type_name(@)",
                              header: "IGESDimen_AngularDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_AngularDimension::get_type_descriptor(@)",
    header: "IGESDimen_AngularDimension.hxx".}
proc DynamicType*(this: IGESDimen_AngularDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_AngularDimension.hxx".}