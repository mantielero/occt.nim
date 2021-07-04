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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_DiameterDimension"
discard "forward decl of IGESDimen_DiameterDimension"
type
  Handle_IGESDimen_DiameterDimension* = handle[IGESDimen_DiameterDimension]

## ! defines DiameterDimension, Type <206> Form <0>
## ! in package IGESDimen
## ! Used for dimensioning diameters

type
  IGESDimen_DiameterDimension* {.importcpp: "IGESDimen_DiameterDimension",
                                header: "IGESDimen_DiameterDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_DiameterDimension*(): IGESDimen_DiameterDimension {.
    constructor, importcpp: "IGESDimen_DiameterDimension(@)",
    header: "IGESDimen_DiameterDimension.hxx".}
proc Init*(this: var IGESDimen_DiameterDimension;
          aNote: handle[IGESDimen_GeneralNote];
          aLeader: handle[IGESDimen_LeaderArrow];
          anotherLeader: handle[IGESDimen_LeaderArrow]; aCenter: gp_XY) {.
    importcpp: "Init", header: "IGESDimen_DiameterDimension.hxx".}
proc Note*(this: IGESDimen_DiameterDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_DiameterDimension.hxx".}
proc FirstLeader*(this: IGESDimen_DiameterDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "FirstLeader",
    header: "IGESDimen_DiameterDimension.hxx".}
proc HasSecondLeader*(this: IGESDimen_DiameterDimension): Standard_Boolean {.
    noSideEffect, importcpp: "HasSecondLeader",
    header: "IGESDimen_DiameterDimension.hxx".}
proc SecondLeader*(this: IGESDimen_DiameterDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "SecondLeader",
    header: "IGESDimen_DiameterDimension.hxx".}
proc Center*(this: IGESDimen_DiameterDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "Center", header: "IGESDimen_DiameterDimension.hxx".}
proc TransformedCenter*(this: IGESDimen_DiameterDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESDimen_DiameterDimension.hxx".}
type
  IGESDimen_DiameterDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_DiameterDimension::get_type_name(@)",
                              header: "IGESDimen_DiameterDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_DiameterDimension::get_type_descriptor(@)",
    header: "IGESDimen_DiameterDimension.hxx".}
proc DynamicType*(this: IGESDimen_DiameterDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DiameterDimension.hxx".}