##  Created on: 2001-09-11
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of XmlMXCAFDoc_CentroidDriver"
discard "forward decl of XmlMXCAFDoc_ColorDriver"
discard "forward decl of XmlMXCAFDoc_GraphNodeDriver"
discard "forward decl of XmlMXCAFDoc_LocationDriver"
discard "forward decl of XmlMXCAFDoc_DatumDriver"
discard "forward decl of XmlMXCAFDoc_DimTolDriver"
discard "forward decl of XmlMXCAFDoc_MaterialDriver"
discard "forward decl of XmlMXCAFDoc_NoteDriver"
discard "forward decl of XmlMXCAFDoc_NoteCommentDriver"
discard "forward decl of XmlMXCAFDoc_NoteBinDataDriver"
type
  XmlMXCAFDoc* {.importcpp: "XmlMXCAFDoc", header: "XmlMXCAFDoc.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <aDriverTable>.


proc addDrivers*(aDriverTable: Handle[XmlMDF_ADriverTable];
                anMsgDrv: Handle[MessageMessenger]) {.
    importcpp: "XmlMXCAFDoc::AddDrivers(@)", header: "XmlMXCAFDoc.hxx".}
