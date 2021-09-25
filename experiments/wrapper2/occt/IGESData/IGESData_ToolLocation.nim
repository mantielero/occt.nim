##  Created on: 1993-09-21
##  Created by: Christian CAILLET
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

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Standard_DomainError"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_GTrsf"
discard "forward decl of gp_Trsf"
discard "forward decl of IGESData_ToolLocation"
discard "forward decl of IGESData_ToolLocation"
type
  HandleIGESDataToolLocation* = Handle[IGESDataToolLocation]

## ! This Tool determines and gives access to effective Locations
## ! of IGES Entities as defined by the IGES Norm. These Locations
## ! can be for each Entity :
## ! - on one part, explicitly defined by a Transf in Directory
## ! Part (this Transf can be itself compound); if not defined,
## ! no proper Transformation is defined
## ! - on the other part, implicitly defined by a reference from
## ! another Entity : its Parent
## ! Both implicit and explicit locations are combinable.
## !
## ! Implicit definition can be itself defined, either through the
## ! definition of an Entity (i.e. a Composite Curve references
## ! a list of Curves), or by a specific Associativity, of type
## ! SingleParentEntity, by which the Location of the Parent is
## ! applied to the Childs defined by this Associativity.
## ! Remark that a Transf itself has no Location, but it can be
## ! compound
## !
## ! This is a TShared object, then it is easier to use in an
## ! interactive session

type
  IGESDataToolLocation* {.importcpp: "IGESData_ToolLocation",
                         header: "IGESData_ToolLocation.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## ToolLocation
                                                                                              ## on
                                                                                              ## a
                                                                                              ## given
                                                                                              ## Model,
                                                                                              ## filled
                                                                                              ## with
                                                                                              ## the
                                                                                              ## help
                                                                                              ##
                                                                                              ## !
                                                                                              ## of
                                                                                              ## a
                                                                                              ## Protocol
                                                                                              ## (which
                                                                                              ## allows
                                                                                              ## to
                                                                                              ## known
                                                                                              ## Entities
                                                                                              ## referenced
                                                                                              ## by
                                                                                              ##
                                                                                              ## !
                                                                                              ## other
                                                                                              ## ones)


proc constructIGESDataToolLocation*(amodel: Handle[IGESDataIGESModel];
                                   protocol: Handle[IGESDataProtocol]): IGESDataToolLocation {.
    constructor, importcpp: "IGESData_ToolLocation(@)",
    header: "IGESData_ToolLocation.hxx".}
proc load*(this: var IGESDataToolLocation) {.importcpp: "Load",
    header: "IGESData_ToolLocation.hxx".}
proc setPrecision*(this: var IGESDataToolLocation; prec: float) {.
    importcpp: "SetPrecision", header: "IGESData_ToolLocation.hxx".}
proc setReference*(this: var IGESDataToolLocation;
                  parent: Handle[IGESDataIGESEntity];
                  child: Handle[IGESDataIGESEntity]) {.importcpp: "SetReference",
    header: "IGESData_ToolLocation.hxx".}
proc setParentAssoc*(this: var IGESDataToolLocation;
                    parent: Handle[IGESDataIGESEntity];
                    child: Handle[IGESDataIGESEntity]) {.
    importcpp: "SetParentAssoc", header: "IGESData_ToolLocation.hxx".}
proc resetDependences*(this: var IGESDataToolLocation;
                      child: Handle[IGESDataIGESEntity]) {.
    importcpp: "ResetDependences", header: "IGESData_ToolLocation.hxx".}
proc setOwnAsDependent*(this: var IGESDataToolLocation;
                       ent: Handle[IGESDataIGESEntity]) {.
    importcpp: "SetOwnAsDependent", header: "IGESData_ToolLocation.hxx".}
proc isTransf*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "IsTransf", header: "IGESData_ToolLocation.hxx".}
proc isAssociativity*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "IsAssociativity", header: "IGESData_ToolLocation.hxx".}
proc hasTransf*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "HasTransf", header: "IGESData_ToolLocation.hxx".}
proc explicitLocation*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): GTrsf {.
    noSideEffect, importcpp: "ExplicitLocation",
    header: "IGESData_ToolLocation.hxx".}
proc isAmbiguous*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "IsAmbiguous", header: "IGESData_ToolLocation.hxx".}
proc hasParent*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "HasParent", header: "IGESData_ToolLocation.hxx".}
proc parent*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Parent",
                         header: "IGESData_ToolLocation.hxx".}
proc hasParentByAssociativity*(this: IGESDataToolLocation;
                              ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "HasParentByAssociativity",
    header: "IGESData_ToolLocation.hxx".}
proc parentLocation*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): GTrsf {.
    noSideEffect, importcpp: "ParentLocation", header: "IGESData_ToolLocation.hxx".}
proc effectiveLocation*(this: IGESDataToolLocation; ent: Handle[IGESDataIGESEntity]): GTrsf {.
    noSideEffect, importcpp: "EffectiveLocation",
    header: "IGESData_ToolLocation.hxx".}
proc analyseLocation*(this: IGESDataToolLocation; loc: GTrsf; result: var Trsf): bool {.
    noSideEffect, importcpp: "AnalyseLocation", header: "IGESData_ToolLocation.hxx".}
proc convertLocation*(prec: float; loc: GTrsf; result: var Trsf; uni: float = 1): bool {.
    importcpp: "IGESData_ToolLocation::ConvertLocation(@)",
    header: "IGESData_ToolLocation.hxx".}
type
  IGESDataToolLocationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESData_ToolLocation::get_type_name(@)",
                            header: "IGESData_ToolLocation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_ToolLocation::get_type_descriptor(@)",
    header: "IGESData_ToolLocation.hxx".}
proc dynamicType*(this: IGESDataToolLocation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_ToolLocation.hxx".}
