##  Created on: 2015-05-14
##  Created by: Ilya Novikov
##  Copyright (c) 2000-2015 OPEN CASCADE SAS
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

## ! Tool for edit structure of document.

type
  XCAFDocEditor* {.importcpp: "XCAFDoc_Editor", header: "XCAFDoc_Editor.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Convert
                                                                                        ## Shape
                                                                                        ## (compound/compsolid/shell/wire)
                                                                                        ## to
                                                                                        ## assembly.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Only
                                                                                        ## compounds
                                                                                        ## expanded
                                                                                        ## recursively
                                                                                        ##
                                                                                        ## !
                                                                                        ## Get
                                                                                        ## colors,
                                                                                        ## layers
                                                                                        ## and
                                                                                        ## name
                                                                                        ## from
                                                                                        ## Label


proc expand*(doc: TDF_Label; shape: TDF_Label; recursively: bool = true): bool {.
    importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
proc expand*(doc: TDF_Label; recursively: bool = true): bool {.
    importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
