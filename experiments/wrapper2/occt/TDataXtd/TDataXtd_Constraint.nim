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
  ../Standard/Standard, ../Standard/Standard_Type, TDataXtd_ConstraintEnum,
  ../Standard/Standard_Boolean, ../TDF/TDF_Attribute,
  ../Standard/Standard_Integer, ../TDF/TDF_LabelList, ../Standard/Standard_OStream

discard "forward decl of TDataStd_Real"
discard "forward decl of TDF_Attribute"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataXtd_Constraint"
discard "forward decl of TDataXtd_Constraint"
type
  Handle_TDataXtd_Constraint* = handle[TDataXtd_Constraint]

## ! The groundwork to define constraint attributes.
## ! The constraint attribute contains the following sorts of data:
## ! -   Type whether the constraint attribute is a
## ! geometric constraint or a dimension
## ! -   Value the real number value of a numeric
## ! constraint such as an angle or a radius
## ! -   Geometries to identify the geometries
## ! underlying the topological attributes which
## ! define the constraint (up to 4)
## ! -   Plane for 2D constraints.

type
  TDataXtd_Constraint* {.importcpp: "TDataXtd_Constraint",
                        header: "TDataXtd_Constraint.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## the
                                                                                       ## GUID
                                                                                       ## for
                                                                                       ## constraints.


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Constraint::GetID(@)",
                            header: "TDataXtd_Constraint.hxx".}
proc Set*(label: TDF_Label): handle[TDataXtd_Constraint] {.
    importcpp: "TDataXtd_Constraint::Set(@)", header: "TDataXtd_Constraint.hxx".}
proc constructTDataXtd_Constraint*(): TDataXtd_Constraint {.constructor,
    importcpp: "TDataXtd_Constraint(@)", header: "TDataXtd_Constraint.hxx".}
proc Set*(this: var TDataXtd_Constraint; `type`: TDataXtd_ConstraintEnum;
         G1: handle[TNaming_NamedShape]) {.importcpp: "Set",
    header: "TDataXtd_Constraint.hxx".}
proc Set*(this: var TDataXtd_Constraint; `type`: TDataXtd_ConstraintEnum;
         G1: handle[TNaming_NamedShape]; G2: handle[TNaming_NamedShape]) {.
    importcpp: "Set", header: "TDataXtd_Constraint.hxx".}
proc Set*(this: var TDataXtd_Constraint; `type`: TDataXtd_ConstraintEnum;
         G1: handle[TNaming_NamedShape]; G2: handle[TNaming_NamedShape];
         G3: handle[TNaming_NamedShape]) {.importcpp: "Set",
    header: "TDataXtd_Constraint.hxx".}
proc Set*(this: var TDataXtd_Constraint; `type`: TDataXtd_ConstraintEnum;
         G1: handle[TNaming_NamedShape]; G2: handle[TNaming_NamedShape];
         G3: handle[TNaming_NamedShape]; G4: handle[TNaming_NamedShape]) {.
    importcpp: "Set", header: "TDataXtd_Constraint.hxx".}
proc Verified*(this: TDataXtd_Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "Verified", header: "TDataXtd_Constraint.hxx".}
proc GetType*(this: TDataXtd_Constraint): TDataXtd_ConstraintEnum {.noSideEffect,
    importcpp: "GetType", header: "TDataXtd_Constraint.hxx".}
proc IsPlanar*(this: TDataXtd_Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanar", header: "TDataXtd_Constraint.hxx".}
proc GetPlane*(this: TDataXtd_Constraint): handle[TNaming_NamedShape] {.
    noSideEffect, importcpp: "GetPlane", header: "TDataXtd_Constraint.hxx".}
proc IsDimension*(this: TDataXtd_Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "IsDimension", header: "TDataXtd_Constraint.hxx".}
proc GetValue*(this: TDataXtd_Constraint): handle[TDataStd_Real] {.noSideEffect,
    importcpp: "GetValue", header: "TDataXtd_Constraint.hxx".}
proc NbGeometries*(this: TDataXtd_Constraint): Standard_Integer {.noSideEffect,
    importcpp: "NbGeometries", header: "TDataXtd_Constraint.hxx".}
proc GetGeometry*(this: TDataXtd_Constraint; Index: Standard_Integer): handle[
    TNaming_NamedShape] {.noSideEffect, importcpp: "GetGeometry",
                         header: "TDataXtd_Constraint.hxx".}
proc ClearGeometries*(this: var TDataXtd_Constraint) {.importcpp: "ClearGeometries",
    header: "TDataXtd_Constraint.hxx".}
proc SetType*(this: var TDataXtd_Constraint; CTR: TDataXtd_ConstraintEnum) {.
    importcpp: "SetType", header: "TDataXtd_Constraint.hxx".}
proc SetPlane*(this: var TDataXtd_Constraint; plane: handle[TNaming_NamedShape]) {.
    importcpp: "SetPlane", header: "TDataXtd_Constraint.hxx".}
proc SetValue*(this: var TDataXtd_Constraint; V: handle[TDataStd_Real]) {.
    importcpp: "SetValue", header: "TDataXtd_Constraint.hxx".}
proc SetGeometry*(this: var TDataXtd_Constraint; Index: Standard_Integer;
                 G: handle[TNaming_NamedShape]) {.importcpp: "SetGeometry",
    header: "TDataXtd_Constraint.hxx".}
proc Verified*(this: var TDataXtd_Constraint; status: Standard_Boolean) {.
    importcpp: "Verified", header: "TDataXtd_Constraint.hxx".}
proc Inverted*(this: var TDataXtd_Constraint; status: Standard_Boolean) {.
    importcpp: "Inverted", header: "TDataXtd_Constraint.hxx".}
proc Inverted*(this: TDataXtd_Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "Inverted", header: "TDataXtd_Constraint.hxx".}
proc Reversed*(this: var TDataXtd_Constraint; status: Standard_Boolean) {.
    importcpp: "Reversed", header: "TDataXtd_Constraint.hxx".}
proc Reversed*(this: TDataXtd_Constraint): Standard_Boolean {.noSideEffect,
    importcpp: "Reversed", header: "TDataXtd_Constraint.hxx".}
proc CollectChildConstraints*(aLabel: TDF_Label; TheList: var TDF_LabelList) {.
    importcpp: "TDataXtd_Constraint::CollectChildConstraints(@)",
    header: "TDataXtd_Constraint.hxx".}
proc ID*(this: TDataXtd_Constraint): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Constraint.hxx".}
proc Restore*(this: var TDataXtd_Constraint; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Constraint.hxx".}
proc NewEmpty*(this: TDataXtd_Constraint): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Constraint.hxx".}
proc Paste*(this: TDataXtd_Constraint; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Constraint.hxx".}
proc Dump*(this: TDataXtd_Constraint; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Constraint.hxx".}
proc References*(this: TDataXtd_Constraint; DS: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataXtd_Constraint.hxx".}
type
  TDataXtd_Constraintbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Constraint::get_type_name(@)",
                              header: "TDataXtd_Constraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Constraint::get_type_descriptor(@)",
    header: "TDataXtd_Constraint.hxx".}
proc DynamicType*(this: TDataXtd_Constraint): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Constraint.hxx".}