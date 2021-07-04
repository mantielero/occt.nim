##  Created on: 2001-09-14
##  Created by: Alexander GRIGORIEV
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMNaming_NamedShapeDriver"
discard "forward decl of XmlMNaming_NamingDriver"
discard "forward decl of XmlMNaming_Shape1"
type
  XmlMNaming* {.importcpp: "XmlMNaming", header: "XmlMNaming.hxx", bycopy.} = object ## !
                                                                             ## Adds the
                                                                             ## attribute
                                                                             ## drivers to
                                                                             ## <aDriverTable>.


proc AddDrivers*(aDriverTable: handle[XmlMDF_ADriverTable];
                aMessageDriver: handle[Message_Messenger]) {.
    importcpp: "XmlMNaming::AddDrivers(@)", header: "XmlMNaming.hxx".}