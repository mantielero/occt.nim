##  Created on: 1996-02-15
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../TColStd/TColStd_HSequenceOfAsciiString, ../TColStd/TColStd_HSequenceOfReal,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_CString,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
type
  Interface_STAT* {.importcpp: "Interface_STAT", header: "Interface_STAT.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## STAT
                                                                                         ## form.
                                                                                         ## At
                                                                                         ## start,
                                                                                         ## one
                                                                                         ## default
                                                                                         ## phase
                                                                                         ## is
                                                                                         ## defined,
                                                                                         ##
                                                                                         ## !
                                                                                         ## with
                                                                                         ## one
                                                                                         ## default
                                                                                         ## step.
                                                                                         ## Then,
                                                                                         ## it
                                                                                         ## suffises
                                                                                         ## to
                                                                                         ## start
                                                                                         ## with
                                                                                         ## a
                                                                                         ##
                                                                                         ## !
                                                                                         ## count
                                                                                         ## of
                                                                                         ## items
                                                                                         ## (and
                                                                                         ## cycles
                                                                                         ## if
                                                                                         ## several)
                                                                                         ## then
                                                                                         ## record
                                                                                         ## items,
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## have
                                                                                         ## a
                                                                                         ## queryable
                                                                                         ## report.


proc constructInterface_STAT*(title: Standard_CString = ""): Interface_STAT {.
    constructor, importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc constructInterface_STAT*(other: Interface_STAT): Interface_STAT {.constructor,
    importcpp: "Interface_STAT(@)", header: "Interface_STAT.hxx".}
proc Internals*(this: Interface_STAT; tit: var handle[TCollection_HAsciiString];
               total: var Standard_Real;
               phn: var handle[TColStd_HSequenceOfAsciiString];
               phw: var handle[TColStd_HSequenceOfReal];
               phdeb: var handle[TColStd_HSequenceOfInteger];
               phfin: var handle[TColStd_HSequenceOfInteger];
               stw: var handle[TColStd_HSequenceOfReal]) {.noSideEffect,
    importcpp: "Internals", header: "Interface_STAT.hxx".}
proc AddPhase*(this: var Interface_STAT; weight: Standard_Real;
              name: Standard_CString = "") {.importcpp: "AddPhase",
    header: "Interface_STAT.hxx".}
proc AddStep*(this: var Interface_STAT; weight: Standard_Real = 1) {.
    importcpp: "AddStep", header: "Interface_STAT.hxx".}
proc Description*(this: Interface_STAT; nbphases: var Standard_Integer;
                 total: var Standard_Real; title: var Standard_CString) {.
    noSideEffect, importcpp: "Description", header: "Interface_STAT.hxx".}
proc Phase*(this: Interface_STAT; num: Standard_Integer;
           n0step: var Standard_Integer; nbstep: var Standard_Integer;
           weight: var Standard_Real; name: var Standard_CString) {.noSideEffect,
    importcpp: "Phase", header: "Interface_STAT.hxx".}
proc Step*(this: Interface_STAT; num: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Step", header: "Interface_STAT.hxx".}
proc Start*(this: Interface_STAT; items: Standard_Integer;
           cycles: Standard_Integer = 1) {.noSideEffect, importcpp: "Start",
                                       header: "Interface_STAT.hxx".}
proc StartCount*(items: Standard_Integer; title: Standard_CString = "") {.
    importcpp: "Interface_STAT::StartCount(@)", header: "Interface_STAT.hxx".}
proc NextPhase*(items: Standard_Integer; cycles: Standard_Integer = 1) {.
    importcpp: "Interface_STAT::NextPhase(@)", header: "Interface_STAT.hxx".}
proc SetPhase*(items: Standard_Integer; cycles: Standard_Integer = 1) {.
    importcpp: "Interface_STAT::SetPhase(@)", header: "Interface_STAT.hxx".}
proc NextCycle*(items: Standard_Integer) {.importcpp: "Interface_STAT::NextCycle(@)",
                                        header: "Interface_STAT.hxx".}
proc NextStep*() {.importcpp: "Interface_STAT::NextStep(@)",
                 header: "Interface_STAT.hxx".}
proc NextItem*(nbitems: Standard_Integer = 1) {.
    importcpp: "Interface_STAT::NextItem(@)", header: "Interface_STAT.hxx".}
proc End*() {.importcpp: "Interface_STAT::End(@)", header: "Interface_STAT.hxx".}
proc Where*(phase: Standard_Boolean = Standard_True): Standard_CString {.
    importcpp: "Interface_STAT::Where(@)", header: "Interface_STAT.hxx".}
proc Percent*(phase: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "Interface_STAT::Percent(@)", header: "Interface_STAT.hxx".}