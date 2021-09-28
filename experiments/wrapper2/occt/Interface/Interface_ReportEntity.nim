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

discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReportEntity"
discard "forward decl of Interface_ReportEntity"
type
  HandleC1C1* = Handle[InterfaceReportEntity]

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
  InterfaceReportEntity* {.importcpp: "Interface_ReportEntity",
                          header: "Interface_ReportEntity.hxx", bycopy.} = object of StandardTransient ##
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


proc constructInterfaceReportEntity*(unknown: Handle[StandardTransient]): InterfaceReportEntity {.
    constructor, importcpp: "Interface_ReportEntity(@)",
    header: "Interface_ReportEntity.hxx".}
proc constructInterfaceReportEntity*(acheck: Handle[InterfaceCheck];
                                    concerned: Handle[StandardTransient]): InterfaceReportEntity {.
    constructor, importcpp: "Interface_ReportEntity(@)",
    header: "Interface_ReportEntity.hxx".}
proc setContent*(this: var InterfaceReportEntity; content: Handle[StandardTransient]) {.
    importcpp: "SetContent", header: "Interface_ReportEntity.hxx".}
proc check*(this: InterfaceReportEntity): Handle[InterfaceCheck] {.noSideEffect,
    importcpp: "Check", header: "Interface_ReportEntity.hxx".}
proc cCheck*(this: var InterfaceReportEntity): var Handle[InterfaceCheck] {.
    importcpp: "CCheck", header: "Interface_ReportEntity.hxx".}
proc concerned*(this: InterfaceReportEntity): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Concerned", header: "Interface_ReportEntity.hxx".}
proc hasContent*(this: InterfaceReportEntity): bool {.noSideEffect,
    importcpp: "HasContent", header: "Interface_ReportEntity.hxx".}
proc hasNewContent*(this: InterfaceReportEntity): bool {.noSideEffect,
    importcpp: "HasNewContent", header: "Interface_ReportEntity.hxx".}
proc content*(this: InterfaceReportEntity): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Content", header: "Interface_ReportEntity.hxx".}
proc isError*(this: InterfaceReportEntity): bool {.noSideEffect,
    importcpp: "IsError", header: "Interface_ReportEntity.hxx".}
proc isUnknown*(this: InterfaceReportEntity): bool {.noSideEffect,
    importcpp: "IsUnknown", header: "Interface_ReportEntity.hxx".}
type
  InterfaceReportEntitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_ReportEntity::get_type_name(@)",
                            header: "Interface_ReportEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_ReportEntity::get_type_descriptor(@)",
    header: "Interface_ReportEntity.hxx".}
proc dynamicType*(this: InterfaceReportEntity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ReportEntity.hxx".}

























