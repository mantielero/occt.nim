##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean

discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Position"
discard "forward decl of TDataXtd_Position"
type
  Handle_TDataXtd_Position* = handle[TDataXtd_Position]

## ! Position of a Label

type
  TDataXtd_Position* {.importcpp: "TDataXtd_Position",
                      header: "TDataXtd_Position.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                   ## !
                                                                                   ## Create
                                                                                   ## if
                                                                                   ## not
                                                                                   ## found
                                                                                   ## the
                                                                                   ## TDataXtd_Position
                                                                                   ## attribute
                                                                                   ## set
                                                                                   ## its
                                                                                   ## position
                                                                                   ## to
                                                                                   ## <aPos>


proc Set*(aLabel: TDF_Label; aPos: gp_Pnt) {.importcpp: "TDataXtd_Position::Set(@)",
                                        header: "TDataXtd_Position.hxx".}
proc Set*(aLabel: TDF_Label): handle[TDataXtd_Position] {.
    importcpp: "TDataXtd_Position::Set(@)", header: "TDataXtd_Position.hxx".}
proc Get*(aLabel: TDF_Label; aPos: var gp_Pnt): Standard_Boolean {.
    importcpp: "TDataXtd_Position::Get(@)", header: "TDataXtd_Position.hxx".}
proc constructTDataXtd_Position*(): TDataXtd_Position {.constructor,
    importcpp: "TDataXtd_Position(@)", header: "TDataXtd_Position.hxx".}
proc ID*(this: TDataXtd_Position): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Position.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Position::GetID(@)",
                            header: "TDataXtd_Position.hxx".}
proc Restore*(this: var TDataXtd_Position; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Position.hxx".}
proc NewEmpty*(this: TDataXtd_Position): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Position.hxx".}
proc Paste*(this: TDataXtd_Position; intoAttribute: handle[TDF_Attribute];
           aRelocTationable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDataXtd_Position.hxx".}
proc GetPosition*(this: TDataXtd_Position): gp_Pnt {.noSideEffect,
    importcpp: "GetPosition", header: "TDataXtd_Position.hxx".}
proc SetPosition*(this: var TDataXtd_Position; aPos: gp_Pnt) {.
    importcpp: "SetPosition", header: "TDataXtd_Position.hxx".}
type
  TDataXtd_Positionbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Position::get_type_name(@)",
                              header: "TDataXtd_Position.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Position::get_type_descriptor(@)",
    header: "TDataXtd_Position.hxx".}
proc DynamicType*(this: TDataXtd_Position): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Position.hxx".}