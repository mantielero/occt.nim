import interface_types

import ../../tkernel/standard/standard_types




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





proc newInterfaceReportEntity*(unknown: Handle[StandardTransient]): InterfaceReportEntity {.
    cdecl, constructor, importcpp: "Interface_ReportEntity(@)", header: "Interface_ReportEntity.hxx".}
proc newInterfaceReportEntity*(acheck: Handle[InterfaceCheck];
                              concerned: Handle[StandardTransient]): InterfaceReportEntity {.
    cdecl, constructor, importcpp: "Interface_ReportEntity(@)", header: "Interface_ReportEntity.hxx".}
proc setContent*(this: var InterfaceReportEntity; content: Handle[StandardTransient]) {.
    cdecl, importcpp: "SetContent", header: "Interface_ReportEntity.hxx".}
proc check*(this: InterfaceReportEntity): Handle[InterfaceCheck] {.noSideEffect,
    cdecl, importcpp: "Check", header: "Interface_ReportEntity.hxx".}
proc cCheck*(this: var InterfaceReportEntity): var Handle[InterfaceCheck] {.cdecl,
    importcpp: "CCheck", header: "Interface_ReportEntity.hxx".}
proc concerned*(this: InterfaceReportEntity): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Concerned", header: "Interface_ReportEntity.hxx".}
proc hasContent*(this: InterfaceReportEntity): bool {.noSideEffect, cdecl,
    importcpp: "HasContent", header: "Interface_ReportEntity.hxx".}
proc hasNewContent*(this: InterfaceReportEntity): bool {.noSideEffect, cdecl,
    importcpp: "HasNewContent", header: "Interface_ReportEntity.hxx".}
proc content*(this: InterfaceReportEntity): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Content", header: "Interface_ReportEntity.hxx".}
proc isError*(this: InterfaceReportEntity): bool {.noSideEffect, cdecl,
    importcpp: "IsError", header: "Interface_ReportEntity.hxx".}
proc isUnknown*(this: InterfaceReportEntity): bool {.noSideEffect, cdecl,
    importcpp: "IsUnknown", header: "Interface_ReportEntity.hxx".}


