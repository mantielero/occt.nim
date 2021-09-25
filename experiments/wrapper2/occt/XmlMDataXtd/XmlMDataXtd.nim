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

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDataXtd_GeometryDriver"
discard "forward decl of XmlMDataXtd_ConstraintDriver"
discard "forward decl of XmlMDataXtd_PatternStdDriver"
discard "forward decl of XmlMDataXtd_TriangulationDriver"
type
  XmlMDataXtd* {.importcpp: "XmlMDataXtd", header: "XmlMDataXtd.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <aDriverTable>.


proc addDrivers*(aDriverTable: Handle[XmlMDF_ADriverTable];
                anMsgDrv: Handle[MessageMessenger]) {.
    importcpp: "XmlMDataXtd::AddDrivers(@)", header: "XmlMDataXtd.hxx".}
proc setDocumentVersion*(docVersion: int) {.
    importcpp: "XmlMDataXtd::SetDocumentVersion(@)", header: "XmlMDataXtd.hxx".}
proc documentVersion*(): int {.importcpp: "XmlMDataXtd::DocumentVersion(@)",
                            header: "XmlMDataXtd.hxx".}
