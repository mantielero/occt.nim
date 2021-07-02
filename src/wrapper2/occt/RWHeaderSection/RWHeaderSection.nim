##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of RWHeaderSection_ReadWriteModule"
discard "forward decl of RWHeaderSection_GeneralModule"
discard "forward decl of RWHeaderSection_RWFileName"
discard "forward decl of RWHeaderSection_RWFileDescription"
discard "forward decl of RWHeaderSection_RWFileSchema"
type
  RWHeaderSection* {.importcpp: "RWHeaderSection", header: "RWHeaderSection.hxx",
                    bycopy.} = object ## ! enforced the initialisation of the  libraries


proc init*() {.importcpp: "RWHeaderSection::Init(@)", header: "RWHeaderSection.hxx".}

