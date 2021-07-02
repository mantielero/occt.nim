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

discard "forward decl of HeaderSection_Protocol"
discard "forward decl of HeaderSection_Protocol"
discard "forward decl of HeaderSection_FileName"
discard "forward decl of HeaderSection_FileDescription"
discard "forward decl of HeaderSection_FileSchema"
discard "forward decl of HeaderSection_HeaderRecognizer"
type
  HeaderSection* {.importcpp: "HeaderSection", header: "HeaderSection.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## creates
                                                                                      ## a
                                                                                      ## Protocol


proc protocol*(): Handle[HeaderSectionProtocol] {.
    importcpp: "HeaderSection::Protocol(@)", header: "HeaderSection.hxx".}

