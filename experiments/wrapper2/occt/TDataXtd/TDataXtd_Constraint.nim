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
  HandleTDataXtdConstraint* = Handle[TDataXtdConstraint]

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
  TDataXtdConstraint* {.importcpp: "TDataXtd_Constraint",
                       header: "TDataXtd_Constraint.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## GUID
                                                                                      ## for
                                                                                      ## constraints.


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Constraint::GetID(@)",
                           header: "TDataXtd_Constraint.hxx".}
proc set*(label: TDF_Label): Handle[TDataXtdConstraint] {.
    importcpp: "TDataXtd_Constraint::Set(@)", header: "TDataXtd_Constraint.hxx".}
proc constructTDataXtdConstraint*(): TDataXtdConstraint {.constructor,
    importcpp: "TDataXtd_Constraint(@)", header: "TDataXtd_Constraint.hxx".}
proc set*(this: var TDataXtdConstraint; `type`: TDataXtdConstraintEnum;
         g1: Handle[TNamingNamedShape]) {.importcpp: "Set",
                                        header: "TDataXtd_Constraint.hxx".}
proc set*(this: var TDataXtdConstraint; `type`: TDataXtdConstraintEnum;
         g1: Handle[TNamingNamedShape]; g2: Handle[TNamingNamedShape]) {.
    importcpp: "Set", header: "TDataXtd_Constraint.hxx".}
proc set*(this: var TDataXtdConstraint; `type`: TDataXtdConstraintEnum;
         g1: Handle[TNamingNamedShape]; g2: Handle[TNamingNamedShape];
         g3: Handle[TNamingNamedShape]) {.importcpp: "Set",
                                        header: "TDataXtd_Constraint.hxx".}
proc set*(this: var TDataXtdConstraint; `type`: TDataXtdConstraintEnum;
         g1: Handle[TNamingNamedShape]; g2: Handle[TNamingNamedShape];
         g3: Handle[TNamingNamedShape]; g4: Handle[TNamingNamedShape]) {.
    importcpp: "Set", header: "TDataXtd_Constraint.hxx".}
proc verified*(this: TDataXtdConstraint): bool {.noSideEffect, importcpp: "Verified",
    header: "TDataXtd_Constraint.hxx".}
proc getType*(this: TDataXtdConstraint): TDataXtdConstraintEnum {.noSideEffect,
    importcpp: "GetType", header: "TDataXtd_Constraint.hxx".}
proc isPlanar*(this: TDataXtdConstraint): bool {.noSideEffect, importcpp: "IsPlanar",
    header: "TDataXtd_Constraint.hxx".}
proc getPlane*(this: TDataXtdConstraint): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "GetPlane", header: "TDataXtd_Constraint.hxx".}
proc isDimension*(this: TDataXtdConstraint): bool {.noSideEffect,
    importcpp: "IsDimension", header: "TDataXtd_Constraint.hxx".}
proc getValue*(this: TDataXtdConstraint): Handle[TDataStdReal] {.noSideEffect,
    importcpp: "GetValue", header: "TDataXtd_Constraint.hxx".}
proc nbGeometries*(this: TDataXtdConstraint): int {.noSideEffect,
    importcpp: "NbGeometries", header: "TDataXtd_Constraint.hxx".}
proc getGeometry*(this: TDataXtdConstraint; index: int): Handle[TNamingNamedShape] {.
    noSideEffect, importcpp: "GetGeometry", header: "TDataXtd_Constraint.hxx".}
proc clearGeometries*(this: var TDataXtdConstraint) {.importcpp: "ClearGeometries",
    header: "TDataXtd_Constraint.hxx".}
proc setType*(this: var TDataXtdConstraint; ctr: TDataXtdConstraintEnum) {.
    importcpp: "SetType", header: "TDataXtd_Constraint.hxx".}
proc setPlane*(this: var TDataXtdConstraint; plane: Handle[TNamingNamedShape]) {.
    importcpp: "SetPlane", header: "TDataXtd_Constraint.hxx".}
proc setValue*(this: var TDataXtdConstraint; v: Handle[TDataStdReal]) {.
    importcpp: "SetValue", header: "TDataXtd_Constraint.hxx".}
proc setGeometry*(this: var TDataXtdConstraint; index: int;
                 g: Handle[TNamingNamedShape]) {.importcpp: "SetGeometry",
    header: "TDataXtd_Constraint.hxx".}
proc verified*(this: var TDataXtdConstraint; status: bool) {.importcpp: "Verified",
    header: "TDataXtd_Constraint.hxx".}
proc inverted*(this: var TDataXtdConstraint; status: bool) {.importcpp: "Inverted",
    header: "TDataXtd_Constraint.hxx".}
proc inverted*(this: TDataXtdConstraint): bool {.noSideEffect, importcpp: "Inverted",
    header: "TDataXtd_Constraint.hxx".}
proc reversed*(this: var TDataXtdConstraint; status: bool) {.importcpp: "Reversed",
    header: "TDataXtd_Constraint.hxx".}
proc reversed*(this: TDataXtdConstraint): bool {.noSideEffect, importcpp: "Reversed",
    header: "TDataXtd_Constraint.hxx".}
proc collectChildConstraints*(aLabel: TDF_Label; theList: var TDF_LabelList) {.
    importcpp: "TDataXtd_Constraint::CollectChildConstraints(@)",
    header: "TDataXtd_Constraint.hxx".}
proc id*(this: TDataXtdConstraint): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Constraint.hxx".}
proc restore*(this: var TDataXtdConstraint; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Constraint.hxx".}
proc newEmpty*(this: TDataXtdConstraint): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Constraint.hxx".}
proc paste*(this: TDataXtdConstraint; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Constraint.hxx".}
proc dump*(this: TDataXtdConstraint; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Constraint.hxx".}
proc references*(this: TDataXtdConstraint; ds: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TDataXtd_Constraint.hxx".}
type
  TDataXtdConstraintbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Constraint::get_type_name(@)",
                            header: "TDataXtd_Constraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Constraint::get_type_descriptor(@)",
    header: "TDataXtd_Constraint.hxx".}
proc dynamicType*(this: TDataXtdConstraint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Constraint.hxx".}
