##  Created on: 1993-02-05
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReportEntity"
discard "forward decl of Interface_ReportEntity"
type
  Handle_Interface_ReportEntity* = handle[Interface_ReportEntity]

## ! A ReportEntity is produced to aknowledge and memorize the
## ! binding between a Check and an Entity. The Check can bring
## ! Fails (+ Warnings if any), or only Warnings. If it is empty,
## ! the Report Entity is for an Unknown Entity.
## !
## ! The ReportEntity brings : the Concerned Entity, the
## ! Check, and if the Entity is empty (Fails due to Read
## ! Errors, hence the Entity could not be loaded), a Content.
## ! The Content is itself an Transient Object, but remains in a
## ! literal form : it is an "Unknown Entity". If the Concerned
## ! Entity is itself Unknown, Concerned and Content are equal.
## !
## ! According to the Check, if it brings Fail messages,
## ! the ReportEntity is an "Error Entity", the Concerned Entity is
## ! an "Erroneous Entity". Else it is a "Correction Entity", the
## ! Concerned Entity is a "Corrected Entity". With no Check
## ! message and if Concerened and Content are equal, it reports
## ! for an "Unknown Entity".
## !
## ! Each norm must produce its own type of Unknown Entity, but can
## ! use the class UndefinedContent to brings parameters : it is
## ! enough for most of information and avoids to redefine them,
## ! only the specific part remains to be defined for each norm.

type
  Interface_ReportEntity* {.importcpp: "Interface_ReportEntity",
                           header: "Interface_ReportEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## ReportEntity
                                                                                                  ## for
                                                                                                  ## an
                                                                                                  ## Unknown
                                                                                                  ## Entity
                                                                                                  ## :
                                                                                                  ## Check
                                                                                                  ## is
                                                                                                  ## empty,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## Concerned
                                                                                                  ## equates
                                                                                                  ## Content
                                                                                                  ## (i.e.
                                                                                                  ## the
                                                                                                  ## Unknown
                                                                                                  ## Entity)


proc constructInterface_ReportEntity*(unknown: handle[Standard_Transient]): Interface_ReportEntity {.
    constructor, importcpp: "Interface_ReportEntity(@)",
    header: "Interface_ReportEntity.hxx".}
proc constructInterface_ReportEntity*(acheck: handle[Interface_Check];
                                     concerned: handle[Standard_Transient]): Interface_ReportEntity {.
    constructor, importcpp: "Interface_ReportEntity(@)",
    header: "Interface_ReportEntity.hxx".}
proc SetContent*(this: var Interface_ReportEntity;
                content: handle[Standard_Transient]) {.importcpp: "SetContent",
    header: "Interface_ReportEntity.hxx".}
proc Check*(this: Interface_ReportEntity): handle[Interface_Check] {.noSideEffect,
    importcpp: "Check", header: "Interface_ReportEntity.hxx".}
proc CCheck*(this: var Interface_ReportEntity): var handle[Interface_Check] {.
    importcpp: "CCheck", header: "Interface_ReportEntity.hxx".}
proc Concerned*(this: Interface_ReportEntity): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Concerned", header: "Interface_ReportEntity.hxx".}
proc HasContent*(this: Interface_ReportEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasContent", header: "Interface_ReportEntity.hxx".}
proc HasNewContent*(this: Interface_ReportEntity): Standard_Boolean {.noSideEffect,
    importcpp: "HasNewContent", header: "Interface_ReportEntity.hxx".}
proc Content*(this: Interface_ReportEntity): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Content", header: "Interface_ReportEntity.hxx".}
proc IsError*(this: Interface_ReportEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsError", header: "Interface_ReportEntity.hxx".}
proc IsUnknown*(this: Interface_ReportEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnknown", header: "Interface_ReportEntity.hxx".}
type
  Interface_ReportEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_ReportEntity::get_type_name(@)",
                              header: "Interface_ReportEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_ReportEntity::get_type_descriptor(@)",
    header: "Interface_ReportEntity.hxx".}
proc DynamicType*(this: Interface_ReportEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_ReportEntity.hxx".}