##  Created on: 1992-04-07
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  IGESData_DefSwitch, ../Standard/Standard_Real, ../Standard/Standard_Character,
  ../Interface/Interface_EntityList, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, IGESData_DefType, IGESData_DefList,
  ../Standard/Standard_CString, ../Standard/Standard_Type

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_ReadWriteModule"
discard "forward decl of IGESData_GeneralModule"
discard "forward decl of IGESData_IGESReaderTool"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESData_LevelListEntity"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESData_LabelDisplayEntity"
discard "forward decl of IGESData_ColorEntity"
discard "forward decl of gp_GTrsf"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_EntityList"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESEntity"
type
  Handle_IGESData_IGESEntity* = handle[IGESData_IGESEntity]

## ! defines root of IGES Entity definition, including Directory
## ! Part, lists of (optionnal) Properties and Associativities

type
  IGESData_IGESEntity* {.importcpp: "IGESData_IGESEntity",
                        header: "IGESData_IGESEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## gives
                                                                                            ## IGES
                                                                                            ## typing
                                                                                            ## info
                                                                                            ## (includes
                                                                                            ## "Type"
                                                                                            ## and
                                                                                            ## "Form"
                                                                                            ## data)
                                                                                            ##
                                                                                            ## !
                                                                                            ## prepares
                                                                                            ## lists
                                                                                            ## of
                                                                                            ## optionnal
                                                                                            ## data,
                                                                                            ## set
                                                                                            ## values
                                                                                            ## to
                                                                                            ## defaults
                                                                                            ##
                                                                                            ## !
                                                                                            ## Clears
                                                                                            ## specific
                                                                                            ## IGES
                                                                                            ## data


proc IGESType*(this: IGESData_IGESEntity): IGESData_IGESType {.noSideEffect,
    importcpp: "IGESType", header: "IGESData_IGESEntity.hxx".}
proc TypeNumber*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "TypeNumber", header: "IGESData_IGESEntity.hxx".}
proc FormNumber*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "FormNumber", header: "IGESData_IGESEntity.hxx".}
proc DirFieldEntity*(this: IGESData_IGESEntity; fieldnum: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DirFieldEntity",
                          header: "IGESData_IGESEntity.hxx".}
proc HasStructure*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasStructure", header: "IGESData_IGESEntity.hxx".}
proc Structure*(this: IGESData_IGESEntity): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Structure", header: "IGESData_IGESEntity.hxx".}
proc DefLineFont*(this: IGESData_IGESEntity): IGESData_DefType {.noSideEffect,
    importcpp: "DefLineFont", header: "IGESData_IGESEntity.hxx".}
proc RankLineFont*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "RankLineFont", header: "IGESData_IGESEntity.hxx".}
proc LineFont*(this: IGESData_IGESEntity): handle[IGESData_LineFontEntity] {.
    noSideEffect, importcpp: "LineFont", header: "IGESData_IGESEntity.hxx".}
proc DefLevel*(this: IGESData_IGESEntity): IGESData_DefList {.noSideEffect,
    importcpp: "DefLevel", header: "IGESData_IGESEntity.hxx".}
proc Level*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "Level", header: "IGESData_IGESEntity.hxx".}
proc LevelList*(this: IGESData_IGESEntity): handle[IGESData_LevelListEntity] {.
    noSideEffect, importcpp: "LevelList", header: "IGESData_IGESEntity.hxx".}
proc DefView*(this: IGESData_IGESEntity): IGESData_DefList {.noSideEffect,
    importcpp: "DefView", header: "IGESData_IGESEntity.hxx".}
proc View*(this: IGESData_IGESEntity): handle[IGESData_ViewKindEntity] {.
    noSideEffect, importcpp: "View", header: "IGESData_IGESEntity.hxx".}
proc SingleView*(this: IGESData_IGESEntity): handle[IGESData_ViewKindEntity] {.
    noSideEffect, importcpp: "SingleView", header: "IGESData_IGESEntity.hxx".}
proc ViewList*(this: IGESData_IGESEntity): handle[IGESData_ViewKindEntity] {.
    noSideEffect, importcpp: "ViewList", header: "IGESData_IGESEntity.hxx".}
proc HasTransf*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasTransf", header: "IGESData_IGESEntity.hxx".}
proc Transf*(this: IGESData_IGESEntity): handle[IGESData_TransfEntity] {.
    noSideEffect, importcpp: "Transf", header: "IGESData_IGESEntity.hxx".}
proc HasLabelDisplay*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasLabelDisplay", header: "IGESData_IGESEntity.hxx".}
proc LabelDisplay*(this: IGESData_IGESEntity): handle[IGESData_LabelDisplayEntity] {.
    noSideEffect, importcpp: "LabelDisplay", header: "IGESData_IGESEntity.hxx".}
proc BlankStatus*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "BlankStatus", header: "IGESData_IGESEntity.hxx".}
proc SubordinateStatus*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "SubordinateStatus", header: "IGESData_IGESEntity.hxx".}
proc UseFlag*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "UseFlag", header: "IGESData_IGESEntity.hxx".}
proc HierarchyStatus*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "HierarchyStatus", header: "IGESData_IGESEntity.hxx".}
proc LineWeightNumber*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "LineWeightNumber", header: "IGESData_IGESEntity.hxx".}
proc LineWeight*(this: IGESData_IGESEntity): Standard_Real {.noSideEffect,
    importcpp: "LineWeight", header: "IGESData_IGESEntity.hxx".}
proc DefColor*(this: IGESData_IGESEntity): IGESData_DefType {.noSideEffect,
    importcpp: "DefColor", header: "IGESData_IGESEntity.hxx".}
proc RankColor*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "RankColor", header: "IGESData_IGESEntity.hxx".}
proc Color*(this: IGESData_IGESEntity): handle[IGESData_ColorEntity] {.noSideEffect,
    importcpp: "Color", header: "IGESData_IGESEntity.hxx".}
proc CResValues*(this: IGESData_IGESEntity; res1: Standard_CString;
                res2: Standard_CString): Standard_Boolean {.noSideEffect,
    importcpp: "CResValues", header: "IGESData_IGESEntity.hxx".}
proc HasShortLabel*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasShortLabel", header: "IGESData_IGESEntity.hxx".}
proc ShortLabel*(this: IGESData_IGESEntity): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ShortLabel", header: "IGESData_IGESEntity.hxx".}
proc HasSubScriptNumber*(this: IGESData_IGESEntity): Standard_Boolean {.
    noSideEffect, importcpp: "HasSubScriptNumber",
    header: "IGESData_IGESEntity.hxx".}
proc SubScriptNumber*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "SubScriptNumber", header: "IGESData_IGESEntity.hxx".}
proc InitDirFieldEntity*(this: var IGESData_IGESEntity; fieldnum: Standard_Integer;
                        ent: handle[IGESData_IGESEntity]) {.
    importcpp: "InitDirFieldEntity", header: "IGESData_IGESEntity.hxx".}
proc InitTransf*(this: var IGESData_IGESEntity; ent: handle[IGESData_TransfEntity]) {.
    importcpp: "InitTransf", header: "IGESData_IGESEntity.hxx".}
proc InitView*(this: var IGESData_IGESEntity; ent: handle[IGESData_ViewKindEntity]) {.
    importcpp: "InitView", header: "IGESData_IGESEntity.hxx".}
proc InitLineFont*(this: var IGESData_IGESEntity;
                  ent: handle[IGESData_LineFontEntity]; rank: Standard_Integer = 0) {.
    importcpp: "InitLineFont", header: "IGESData_IGESEntity.hxx".}
proc InitLevel*(this: var IGESData_IGESEntity;
               ent: handle[IGESData_LevelListEntity]; val: Standard_Integer = 0) {.
    importcpp: "InitLevel", header: "IGESData_IGESEntity.hxx".}
proc InitColor*(this: var IGESData_IGESEntity; ent: handle[IGESData_ColorEntity];
               rank: Standard_Integer = 0) {.importcpp: "InitColor",
    header: "IGESData_IGESEntity.hxx".}
proc InitStatus*(this: var IGESData_IGESEntity; blank: Standard_Integer;
                subordinate: Standard_Integer; useflag: Standard_Integer;
                hierarchy: Standard_Integer) {.importcpp: "InitStatus",
    header: "IGESData_IGESEntity.hxx".}
proc SetLabel*(this: var IGESData_IGESEntity;
              label: handle[TCollection_HAsciiString]; sub: Standard_Integer = -1) {.
    importcpp: "SetLabel", header: "IGESData_IGESEntity.hxx".}
proc InitMisc*(this: var IGESData_IGESEntity; str: handle[IGESData_IGESEntity];
              lab: handle[IGESData_LabelDisplayEntity];
              weightnum: Standard_Integer) {.importcpp: "InitMisc",
    header: "IGESData_IGESEntity.hxx".}
proc HasOneParent*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasOneParent", header: "IGESData_IGESEntity.hxx".}
proc UniqueParent*(this: IGESData_IGESEntity): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "UniqueParent", header: "IGESData_IGESEntity.hxx".}
proc Location*(this: IGESData_IGESEntity): gp_GTrsf {.noSideEffect,
    importcpp: "Location", header: "IGESData_IGESEntity.hxx".}
proc VectorLocation*(this: IGESData_IGESEntity): gp_GTrsf {.noSideEffect,
    importcpp: "VectorLocation", header: "IGESData_IGESEntity.hxx".}
proc CompoundLocation*(this: IGESData_IGESEntity): gp_GTrsf {.noSideEffect,
    importcpp: "CompoundLocation", header: "IGESData_IGESEntity.hxx".}
proc HasName*(this: IGESData_IGESEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasName", header: "IGESData_IGESEntity.hxx".}
proc NameValue*(this: IGESData_IGESEntity): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "NameValue", header: "IGESData_IGESEntity.hxx".}
proc ArePresentAssociativities*(this: IGESData_IGESEntity): Standard_Boolean {.
    noSideEffect, importcpp: "ArePresentAssociativities",
    header: "IGESData_IGESEntity.hxx".}
proc NbAssociativities*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "NbAssociativities", header: "IGESData_IGESEntity.hxx".}
proc Associativities*(this: IGESData_IGESEntity): Interface_EntityIterator {.
    noSideEffect, importcpp: "Associativities", header: "IGESData_IGESEntity.hxx".}
proc NbTypedAssociativities*(this: IGESData_IGESEntity;
                            atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypedAssociativities",
    header: "IGESData_IGESEntity.hxx".}
proc TypedAssociativity*(this: IGESData_IGESEntity; atype: handle[Standard_Type]): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "TypedAssociativity",
                          header: "IGESData_IGESEntity.hxx".}
proc Associate*(this: IGESData_IGESEntity; ent: handle[IGESData_IGESEntity]) {.
    noSideEffect, importcpp: "Associate", header: "IGESData_IGESEntity.hxx".}
proc Dissociate*(this: IGESData_IGESEntity; ent: handle[IGESData_IGESEntity]) {.
    noSideEffect, importcpp: "Dissociate", header: "IGESData_IGESEntity.hxx".}
proc ArePresentProperties*(this: IGESData_IGESEntity): Standard_Boolean {.
    noSideEffect, importcpp: "ArePresentProperties",
    header: "IGESData_IGESEntity.hxx".}
proc NbProperties*(this: IGESData_IGESEntity): Standard_Integer {.noSideEffect,
    importcpp: "NbProperties", header: "IGESData_IGESEntity.hxx".}
proc Properties*(this: IGESData_IGESEntity): Interface_EntityIterator {.
    noSideEffect, importcpp: "Properties", header: "IGESData_IGESEntity.hxx".}
proc NbTypedProperties*(this: IGESData_IGESEntity; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "NbTypedProperties", header: "IGESData_IGESEntity.hxx".}
proc TypedProperty*(this: IGESData_IGESEntity; atype: handle[Standard_Type];
                   anum: Standard_Integer = 0): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "TypedProperty", header: "IGESData_IGESEntity.hxx".}
proc AddProperty*(this: var IGESData_IGESEntity; ent: handle[IGESData_IGESEntity]) {.
    importcpp: "AddProperty", header: "IGESData_IGESEntity.hxx".}
proc RemoveProperty*(this: var IGESData_IGESEntity; ent: handle[IGESData_IGESEntity]) {.
    importcpp: "RemoveProperty", header: "IGESData_IGESEntity.hxx".}
proc SetLineWeight*(this: var IGESData_IGESEntity; defw: Standard_Real;
                   maxw: Standard_Real; gradw: Standard_Integer) {.
    importcpp: "SetLineWeight", header: "IGESData_IGESEntity.hxx".}
type
  IGESData_IGESEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESData_IGESEntity::get_type_name(@)",
                              header: "IGESData_IGESEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_IGESEntity::get_type_descriptor(@)",
    header: "IGESData_IGESEntity.hxx".}
proc DynamicType*(this: IGESData_IGESEntity): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_IGESEntity.hxx".}