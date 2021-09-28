##  Created on: 1992-05-18
##  Created by: Stephan GARNAUD (ARM)
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Management of directories (a set of directory oriented tools)

type
  OSD_Directory* {.importcpp: "OSD_Directory", header: "OSD_Directory.hxx", bycopy.} = object of OSD_FileNode ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## temporary
                                                                                                    ## Directory
                                                                                                    ## in
                                                                                                    ## current
                                                                                                    ## directory.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## This
                                                                                                    ## directory
                                                                                                    ## is
                                                                                                    ## automatically
                                                                                                    ## removed
                                                                                                    ## when
                                                                                                    ## object
                                                                                                    ## dies.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## Directory
                                                                                                    ## object.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## It
                                                                                                    ## is
                                                                                                    ## initiliazed
                                                                                                    ## to
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## name.


proc buildTemporary*(): OSD_Directory {.importcpp: "OSD_Directory::BuildTemporary(@)",
                                     header: "OSD_Directory.hxx".}
proc constructOSD_Directory*(): OSD_Directory {.constructor,
    importcpp: "OSD_Directory(@)", header: "OSD_Directory.hxx".}
proc constructOSD_Directory*(theName: OSD_Path): OSD_Directory {.constructor,
    importcpp: "OSD_Directory(@)", header: "OSD_Directory.hxx".}
proc build*(this: var OSD_Directory; protect: OSD_Protection) {.importcpp: "Build",
    header: "OSD_Directory.hxx".}

























