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

discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Position"
discard "forward decl of TDataXtd_Position"
type
  HandleC1C1* = Handle[TDataXtdPosition]

## ! Position of a Label

type
  TDataXtdPosition* {.importcpp: "TDataXtd_Position",
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


proc set*(aLabel: TDF_Label; aPos: Pnt) {.importcpp: "TDataXtd_Position::Set(@)",
                                     header: "TDataXtd_Position.hxx".}
proc set*(aLabel: TDF_Label): Handle[TDataXtdPosition] {.
    importcpp: "TDataXtd_Position::Set(@)", header: "TDataXtd_Position.hxx".}
proc get*(aLabel: TDF_Label; aPos: var Pnt): bool {.
    importcpp: "TDataXtd_Position::Get(@)", header: "TDataXtd_Position.hxx".}
proc constructTDataXtdPosition*(): TDataXtdPosition {.constructor,
    importcpp: "TDataXtd_Position(@)", header: "TDataXtd_Position.hxx".}
proc id*(this: TDataXtdPosition): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Position.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataXtd_Position::GetID(@)",
                           header: "TDataXtd_Position.hxx".}
proc restore*(this: var TDataXtdPosition; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Position.hxx".}
proc newEmpty*(this: TDataXtdPosition): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Position.hxx".}
proc paste*(this: TDataXtdPosition; intoAttribute: Handle[TDF_Attribute];
           aRelocTationable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TDataXtd_Position.hxx".}
proc getPosition*(this: TDataXtdPosition): Pnt {.noSideEffect,
    importcpp: "GetPosition", header: "TDataXtd_Position.hxx".}
proc setPosition*(this: var TDataXtdPosition; aPos: Pnt) {.importcpp: "SetPosition",
    header: "TDataXtd_Position.hxx".}
type
  TDataXtdPositionbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Position::get_type_name(@)",
                            header: "TDataXtd_Position.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Position::get_type_descriptor(@)",
    header: "TDataXtd_Position.hxx".}
proc dynamicType*(this: TDataXtdPosition): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Position.hxx".}

























