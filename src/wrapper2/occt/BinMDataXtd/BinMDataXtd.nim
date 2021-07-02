##  Created on: 2002-10-30
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinMDataXtd_GeometryDriver"
discard "forward decl of BinMDataXtd_ConstraintDriver"
discard "forward decl of BinMDataXtd_PatternStdDriver"
discard "forward decl of BinMDataXtd_TriangulationDriver"
type
  BinMDataXtd* {.importcpp: "BinMDataXtd", header: "BinMDataXtd.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <theDriverTable>.


proc addDrivers*(theDriverTable: Handle[BinMDF_ADriverTable];
                aMsgDrv: Handle[MessageMessenger]) {.
    importcpp: "BinMDataXtd::AddDrivers(@)", header: "BinMDataXtd.hxx".}
proc setDocumentVersion*(docVersion: StandardInteger) {.
    importcpp: "BinMDataXtd::SetDocumentVersion(@)", header: "BinMDataXtd.hxx".}
proc documentVersion*(): StandardInteger {.importcpp: "BinMDataXtd::DocumentVersion(@)",
                                        header: "BinMDataXtd.hxx".}

