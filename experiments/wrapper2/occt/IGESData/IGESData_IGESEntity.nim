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
  HandleC1C1* = Handle[IGESDataIGESEntity]

## ! defines root of IGES Entity definition, including Directory
## ! Part, lists of (optionnal) Properties and Associativities

type
  IGESDataIGESEntity* {.importcpp: "IGESData_IGESEntity",
                       header: "IGESData_IGESEntity.hxx", bycopy.} = object of StandardTransient ##
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


proc iGESType*(this: IGESDataIGESEntity): IGESDataIGESType {.noSideEffect,
    importcpp: "IGESType", header: "IGESData_IGESEntity.hxx".}
proc typeNumber*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "TypeNumber", header: "IGESData_IGESEntity.hxx".}
proc formNumber*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "FormNumber", header: "IGESData_IGESEntity.hxx".}
proc dirFieldEntity*(this: IGESDataIGESEntity; fieldnum: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DirFieldEntity",
                         header: "IGESData_IGESEntity.hxx".}
proc hasStructure*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasStructure", header: "IGESData_IGESEntity.hxx".}
proc structure*(this: IGESDataIGESEntity): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Structure", header: "IGESData_IGESEntity.hxx".}
proc defLineFont*(this: IGESDataIGESEntity): IGESDataDefType {.noSideEffect,
    importcpp: "DefLineFont", header: "IGESData_IGESEntity.hxx".}
proc rankLineFont*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "RankLineFont", header: "IGESData_IGESEntity.hxx".}
proc lineFont*(this: IGESDataIGESEntity): Handle[IGESDataLineFontEntity] {.
    noSideEffect, importcpp: "LineFont", header: "IGESData_IGESEntity.hxx".}
proc defLevel*(this: IGESDataIGESEntity): IGESDataDefList {.noSideEffect,
    importcpp: "DefLevel", header: "IGESData_IGESEntity.hxx".}
proc level*(this: IGESDataIGESEntity): cint {.noSideEffect, importcpp: "Level",
    header: "IGESData_IGESEntity.hxx".}
proc levelList*(this: IGESDataIGESEntity): Handle[IGESDataLevelListEntity] {.
    noSideEffect, importcpp: "LevelList", header: "IGESData_IGESEntity.hxx".}
proc defView*(this: IGESDataIGESEntity): IGESDataDefList {.noSideEffect,
    importcpp: "DefView", header: "IGESData_IGESEntity.hxx".}
proc view*(this: IGESDataIGESEntity): Handle[IGESDataViewKindEntity] {.noSideEffect,
    importcpp: "View", header: "IGESData_IGESEntity.hxx".}
proc singleView*(this: IGESDataIGESEntity): Handle[IGESDataViewKindEntity] {.
    noSideEffect, importcpp: "SingleView", header: "IGESData_IGESEntity.hxx".}
proc viewList*(this: IGESDataIGESEntity): Handle[IGESDataViewKindEntity] {.
    noSideEffect, importcpp: "ViewList", header: "IGESData_IGESEntity.hxx".}
proc hasTransf*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasTransf", header: "IGESData_IGESEntity.hxx".}
proc transf*(this: IGESDataIGESEntity): Handle[IGESDataTransfEntity] {.noSideEffect,
    importcpp: "Transf", header: "IGESData_IGESEntity.hxx".}
proc hasLabelDisplay*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasLabelDisplay", header: "IGESData_IGESEntity.hxx".}
proc labelDisplay*(this: IGESDataIGESEntity): Handle[IGESDataLabelDisplayEntity] {.
    noSideEffect, importcpp: "LabelDisplay", header: "IGESData_IGESEntity.hxx".}
proc blankStatus*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "BlankStatus", header: "IGESData_IGESEntity.hxx".}
proc subordinateStatus*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "SubordinateStatus", header: "IGESData_IGESEntity.hxx".}
proc useFlag*(this: IGESDataIGESEntity): cint {.noSideEffect, importcpp: "UseFlag",
    header: "IGESData_IGESEntity.hxx".}
proc hierarchyStatus*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "HierarchyStatus", header: "IGESData_IGESEntity.hxx".}
proc lineWeightNumber*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "LineWeightNumber", header: "IGESData_IGESEntity.hxx".}
proc lineWeight*(this: IGESDataIGESEntity): cfloat {.noSideEffect,
    importcpp: "LineWeight", header: "IGESData_IGESEntity.hxx".}
proc defColor*(this: IGESDataIGESEntity): IGESDataDefType {.noSideEffect,
    importcpp: "DefColor", header: "IGESData_IGESEntity.hxx".}
proc rankColor*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "RankColor", header: "IGESData_IGESEntity.hxx".}
proc color*(this: IGESDataIGESEntity): Handle[IGESDataColorEntity] {.noSideEffect,
    importcpp: "Color", header: "IGESData_IGESEntity.hxx".}
proc cResValues*(this: IGESDataIGESEntity; res1: StandardCString;
                res2: StandardCString): bool {.noSideEffect,
    importcpp: "CResValues", header: "IGESData_IGESEntity.hxx".}
proc hasShortLabel*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasShortLabel", header: "IGESData_IGESEntity.hxx".}
proc shortLabel*(this: IGESDataIGESEntity): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ShortLabel", header: "IGESData_IGESEntity.hxx".}
proc hasSubScriptNumber*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasSubScriptNumber", header: "IGESData_IGESEntity.hxx".}
proc subScriptNumber*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "SubScriptNumber", header: "IGESData_IGESEntity.hxx".}
proc initDirFieldEntity*(this: var IGESDataIGESEntity; fieldnum: cint;
                        ent: Handle[IGESDataIGESEntity]) {.
    importcpp: "InitDirFieldEntity", header: "IGESData_IGESEntity.hxx".}
proc initTransf*(this: var IGESDataIGESEntity; ent: Handle[IGESDataTransfEntity]) {.
    importcpp: "InitTransf", header: "IGESData_IGESEntity.hxx".}
proc initView*(this: var IGESDataIGESEntity; ent: Handle[IGESDataViewKindEntity]) {.
    importcpp: "InitView", header: "IGESData_IGESEntity.hxx".}
proc initLineFont*(this: var IGESDataIGESEntity;
                  ent: Handle[IGESDataLineFontEntity]; rank: cint = 0) {.
    importcpp: "InitLineFont", header: "IGESData_IGESEntity.hxx".}
proc initLevel*(this: var IGESDataIGESEntity; ent: Handle[IGESDataLevelListEntity];
               val: cint = 0) {.importcpp: "InitLevel",
                            header: "IGESData_IGESEntity.hxx".}
proc initColor*(this: var IGESDataIGESEntity; ent: Handle[IGESDataColorEntity];
               rank: cint = 0) {.importcpp: "InitColor",
                             header: "IGESData_IGESEntity.hxx".}
proc initStatus*(this: var IGESDataIGESEntity; blank: cint; subordinate: cint;
                useflag: cint; hierarchy: cint) {.importcpp: "InitStatus",
    header: "IGESData_IGESEntity.hxx".}
proc setLabel*(this: var IGESDataIGESEntity; label: Handle[TCollectionHAsciiString];
              sub: cint = -1) {.importcpp: "SetLabel",
                            header: "IGESData_IGESEntity.hxx".}
proc initMisc*(this: var IGESDataIGESEntity; str: Handle[IGESDataIGESEntity];
              lab: Handle[IGESDataLabelDisplayEntity]; weightnum: cint) {.
    importcpp: "InitMisc", header: "IGESData_IGESEntity.hxx".}
proc hasOneParent*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "HasOneParent", header: "IGESData_IGESEntity.hxx".}
proc uniqueParent*(this: IGESDataIGESEntity): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "UniqueParent", header: "IGESData_IGESEntity.hxx".}
proc location*(this: IGESDataIGESEntity): GTrsf {.noSideEffect,
    importcpp: "Location", header: "IGESData_IGESEntity.hxx".}
proc vectorLocation*(this: IGESDataIGESEntity): GTrsf {.noSideEffect,
    importcpp: "VectorLocation", header: "IGESData_IGESEntity.hxx".}
proc compoundLocation*(this: IGESDataIGESEntity): GTrsf {.noSideEffect,
    importcpp: "CompoundLocation", header: "IGESData_IGESEntity.hxx".}
proc hasName*(this: IGESDataIGESEntity): bool {.noSideEffect, importcpp: "HasName",
    header: "IGESData_IGESEntity.hxx".}
proc nameValue*(this: IGESDataIGESEntity): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "NameValue", header: "IGESData_IGESEntity.hxx".}
proc arePresentAssociativities*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "ArePresentAssociativities", header: "IGESData_IGESEntity.hxx".}
proc nbAssociativities*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "NbAssociativities", header: "IGESData_IGESEntity.hxx".}
proc associativities*(this: IGESDataIGESEntity): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Associativities", header: "IGESData_IGESEntity.hxx".}
proc nbTypedAssociativities*(this: IGESDataIGESEntity; atype: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "NbTypedAssociativities",
    header: "IGESData_IGESEntity.hxx".}
proc typedAssociativity*(this: IGESDataIGESEntity; atype: Handle[StandardType]): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "TypedAssociativity",
                         header: "IGESData_IGESEntity.hxx".}
proc associate*(this: IGESDataIGESEntity; ent: Handle[IGESDataIGESEntity]) {.
    noSideEffect, importcpp: "Associate", header: "IGESData_IGESEntity.hxx".}
proc dissociate*(this: IGESDataIGESEntity; ent: Handle[IGESDataIGESEntity]) {.
    noSideEffect, importcpp: "Dissociate", header: "IGESData_IGESEntity.hxx".}
proc arePresentProperties*(this: IGESDataIGESEntity): bool {.noSideEffect,
    importcpp: "ArePresentProperties", header: "IGESData_IGESEntity.hxx".}
proc nbProperties*(this: IGESDataIGESEntity): cint {.noSideEffect,
    importcpp: "NbProperties", header: "IGESData_IGESEntity.hxx".}
proc properties*(this: IGESDataIGESEntity): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Properties", header: "IGESData_IGESEntity.hxx".}
proc nbTypedProperties*(this: IGESDataIGESEntity; atype: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "NbTypedProperties", header: "IGESData_IGESEntity.hxx".}
proc typedProperty*(this: IGESDataIGESEntity; atype: Handle[StandardType];
                   anum: cint = 0): Handle[IGESDataIGESEntity] {.noSideEffect,
    importcpp: "TypedProperty", header: "IGESData_IGESEntity.hxx".}
proc addProperty*(this: var IGESDataIGESEntity; ent: Handle[IGESDataIGESEntity]) {.
    importcpp: "AddProperty", header: "IGESData_IGESEntity.hxx".}
proc removeProperty*(this: var IGESDataIGESEntity; ent: Handle[IGESDataIGESEntity]) {.
    importcpp: "RemoveProperty", header: "IGESData_IGESEntity.hxx".}
proc setLineWeight*(this: var IGESDataIGESEntity; defw: cfloat; maxw: cfloat;
                   gradw: cint) {.importcpp: "SetLineWeight",
                                header: "IGESData_IGESEntity.hxx".}
type
  IGESDataIGESEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_IGESEntity::get_type_name(@)",
                            header: "IGESData_IGESEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_IGESEntity::get_type_descriptor(@)",
    header: "IGESData_IGESEntity.hxx".}
proc dynamicType*(this: IGESDataIGESEntity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_IGESEntity.hxx".}

























