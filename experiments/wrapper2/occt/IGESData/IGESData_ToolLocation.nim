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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Interface/Interface_GeneralLib, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Standard_DomainError"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_GTrsf"
discard "forward decl of gp_Trsf"
discard "forward decl of IGESData_ToolLocation"
discard "forward decl of IGESData_ToolLocation"
type
  Handle_IGESData_ToolLocation* = handle[IGESData_ToolLocation]

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
  IGESData_ToolLocation* {.importcpp: "IGESData_ToolLocation",
                          header: "IGESData_ToolLocation.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIGESData_ToolLocation*(amodel: handle[IGESData_IGESModel];
                                    protocol: handle[IGESData_Protocol]): IGESData_ToolLocation {.
    constructor, importcpp: "IGESData_ToolLocation(@)",
    header: "IGESData_ToolLocation.hxx".}
proc Load*(this: var IGESData_ToolLocation) {.importcpp: "Load",
    header: "IGESData_ToolLocation.hxx".}
proc SetPrecision*(this: var IGESData_ToolLocation; prec: Standard_Real) {.
    importcpp: "SetPrecision", header: "IGESData_ToolLocation.hxx".}
proc SetReference*(this: var IGESData_ToolLocation;
                  parent: handle[IGESData_IGESEntity];
                  child: handle[IGESData_IGESEntity]) {.importcpp: "SetReference",
    header: "IGESData_ToolLocation.hxx".}
proc SetParentAssoc*(this: var IGESData_ToolLocation;
                    parent: handle[IGESData_IGESEntity];
                    child: handle[IGESData_IGESEntity]) {.
    importcpp: "SetParentAssoc", header: "IGESData_ToolLocation.hxx".}
proc ResetDependences*(this: var IGESData_ToolLocation;
                      child: handle[IGESData_IGESEntity]) {.
    importcpp: "ResetDependences", header: "IGESData_ToolLocation.hxx".}
proc SetOwnAsDependent*(this: var IGESData_ToolLocation;
                       ent: handle[IGESData_IGESEntity]) {.
    importcpp: "SetOwnAsDependent", header: "IGESData_ToolLocation.hxx".}
proc IsTransf*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "IsTransf", header: "IGESData_ToolLocation.hxx".}
proc IsAssociativity*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAssociativity", header: "IGESData_ToolLocation.hxx".}
proc HasTransf*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "HasTransf", header: "IGESData_ToolLocation.hxx".}
proc ExplicitLocation*(this: IGESData_ToolLocation;
                      ent: handle[IGESData_IGESEntity]): gp_GTrsf {.noSideEffect,
    importcpp: "ExplicitLocation", header: "IGESData_ToolLocation.hxx".}
proc IsAmbiguous*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAmbiguous", header: "IGESData_ToolLocation.hxx".}
proc HasParent*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "HasParent", header: "IGESData_ToolLocation.hxx".}
proc Parent*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Parent",
                          header: "IGESData_ToolLocation.hxx".}
proc HasParentByAssociativity*(this: IGESData_ToolLocation;
                              ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "HasParentByAssociativity",
    header: "IGESData_ToolLocation.hxx".}
proc ParentLocation*(this: IGESData_ToolLocation; ent: handle[IGESData_IGESEntity]): gp_GTrsf {.
    noSideEffect, importcpp: "ParentLocation", header: "IGESData_ToolLocation.hxx".}
proc EffectiveLocation*(this: IGESData_ToolLocation;
                       ent: handle[IGESData_IGESEntity]): gp_GTrsf {.noSideEffect,
    importcpp: "EffectiveLocation", header: "IGESData_ToolLocation.hxx".}
proc AnalyseLocation*(this: IGESData_ToolLocation; loc: gp_GTrsf; result: var gp_Trsf): Standard_Boolean {.
    noSideEffect, importcpp: "AnalyseLocation", header: "IGESData_ToolLocation.hxx".}
proc ConvertLocation*(prec: Standard_Real; loc: gp_GTrsf; result: var gp_Trsf;
                     uni: Standard_Real = 1): Standard_Boolean {.
    importcpp: "IGESData_ToolLocation::ConvertLocation(@)",
    header: "IGESData_ToolLocation.hxx".}
type
  IGESData_ToolLocationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESData_ToolLocation::get_type_name(@)",
                              header: "IGESData_ToolLocation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_ToolLocation::get_type_descriptor(@)",
    header: "IGESData_ToolLocation.hxx".}
proc DynamicType*(this: IGESData_ToolLocation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_ToolLocation.hxx".}