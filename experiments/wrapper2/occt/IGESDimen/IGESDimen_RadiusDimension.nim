##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_RadiusDimension"
discard "forward decl of IGESDimen_RadiusDimension"
type
  Handle_IGESDimen_RadiusDimension* = handle[IGESDimen_RadiusDimension]

## ! Defines IGES Radius Dimension, type <222> Form <0, 1>,
## ! in package IGESDimen.
## ! A Radius Dimension Entity consists of a General Note, a
## ! leader, and an arc center point. A second form of this
## ! entity accounts for the occasional need to have two
## ! leader entities referenced.

type
  IGESDimen_RadiusDimension* {.importcpp: "IGESDimen_RadiusDimension",
                              header: "IGESDimen_RadiusDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_RadiusDimension*(): IGESDimen_RadiusDimension {.
    constructor, importcpp: "IGESDimen_RadiusDimension(@)",
    header: "IGESDimen_RadiusDimension.hxx".}
proc Init*(this: var IGESDimen_RadiusDimension;
          aNote: handle[IGESDimen_GeneralNote];
          anArrow: handle[IGESDimen_LeaderArrow]; arcCenter: gp_XY;
          anotherArrow: handle[IGESDimen_LeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_RadiusDimension.hxx".}
proc InitForm*(this: var IGESDimen_RadiusDimension; form: Standard_Integer) {.
    importcpp: "InitForm", header: "IGESDimen_RadiusDimension.hxx".}
proc Note*(this: IGESDimen_RadiusDimension): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_RadiusDimension.hxx".}
proc Leader*(this: IGESDimen_RadiusDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_RadiusDimension.hxx".}
proc Center*(this: IGESDimen_RadiusDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "Center", header: "IGESDimen_RadiusDimension.hxx".}
proc TransformedCenter*(this: IGESDimen_RadiusDimension): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESDimen_RadiusDimension.hxx".}
proc HasLeader2*(this: IGESDimen_RadiusDimension): Standard_Boolean {.noSideEffect,
    importcpp: "HasLeader2", header: "IGESDimen_RadiusDimension.hxx".}
proc Leader2*(this: IGESDimen_RadiusDimension): handle[IGESDimen_LeaderArrow] {.
    noSideEffect, importcpp: "Leader2", header: "IGESDimen_RadiusDimension.hxx".}
type
  IGESDimen_RadiusDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_RadiusDimension::get_type_name(@)",
                              header: "IGESDimen_RadiusDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_RadiusDimension::get_type_descriptor(@)",
    header: "IGESDimen_RadiusDimension.hxx".}
proc DynamicType*(this: IGESDimen_RadiusDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_RadiusDimension.hxx".}