##  Created on: 2001-07-09
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
discard "forward decl of XmlMFunction_FunctionDriver"
discard "forward decl of XmlMFunction_ScopeDriver"
discard "forward decl of XmlMFunction_GraphNodeDriver"
type
  XmlMFunction* {.importcpp: "XmlMFunction", header: "XmlMFunction.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Adds
                                                                                   ## the
                                                                                   ## attribute
                                                                                   ## storage
                                                                                   ## drivers
                                                                                   ## to
                                                                                   ## <aDriverTable>.


proc addDrivers*(aDriverTable: Handle[XmlMDF_ADriverTable];
                theMessageDriver: Handle[MessageMessenger]) {.
    importcpp: "XmlMFunction::AddDrivers(@)", header: "XmlMFunction.hxx".}

























