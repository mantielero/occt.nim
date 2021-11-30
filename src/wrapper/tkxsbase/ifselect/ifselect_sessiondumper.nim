##  Created on: 1993-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IFSelect_SessionFile"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SessionDumper"
type
  HandleIFSelectSessionDumper* = Handle[IFSelectSessionDumper]

## ! A SessionDumper is called by SessionFile. It takes into
## ! account a set of classes (such as Selections, Dispatches ...).
## ! SessionFile writes the Type (as defined by cdl) of each Item
## ! and its general Parameters. It manages the names of the Items.
## !
## ! A SessionDumper must be able to Write the Parameters which are
## ! own of each Item it takes into account, given its Class, then
## ! to Recognize the Type and Read its Own Parameters to create
## ! an Item of this Type with these own Parameters.
## !
## ! Then, there must be defined one sub-type of SessionDumper per
## ! consistent set of classes (e.g. a package).
## !
## ! By Own Parameters, understand Parameters given at Creation Time
## ! if there are, or specific of a given class, apart from those
## ! defined at superclass levels (e.g. Final Selection for a
## ! Dispatch, Input Selection for a SelectExtract or SelectDeduct,
## ! Direct Status for a SelectExtract, etc...).
## !
## ! The Parameters are those stored in a WorkSession, they can be
## ! of Types : IntParam, HAsciiString (for TextParam), Selection,
## ! Dispatch.
## !
## ! SessionDumpers are organized in a Library which is used by
## ! SessionFile. They are put at Creation Time in this Library.

type
  IFSelectSessionDumper* {.importcpp: "IFSelect_SessionDumper",
                          header: "IFSelect_SessionDumper.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## the
                                                                                                ## First
                                                                                                ## item
                                                                                                ## of
                                                                                                ## the
                                                                                                ## Library
                                                                                                ## of
                                                                                                ## Dumper.
                                                                                                ## The
                                                                                                ## Next
                                                                                                ## ones
                                                                                                ##
                                                                                                ## !
                                                                                                ## are
                                                                                                ## then
                                                                                                ## obtained
                                                                                                ## by
                                                                                                ## Next
                                                                                                ## on
                                                                                                ## the
                                                                                                ## returned
                                                                                                ## items
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## Initialization
                                                                                                ## puts
                                                                                                ## a
                                                                                                ## just
                                                                                                ## created
                                                                                                ## SessionDumper
                                                                                                ## in
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## Library
                                                                                                ## of
                                                                                                ## SessionDumper.
                                                                                                ## Then,
                                                                                                ## it
                                                                                                ## suffices
                                                                                                ## to
                                                                                                ## create
                                                                                                ## once
                                                                                                ##
                                                                                                ## !
                                                                                                ## a
                                                                                                ## SessionDumper
                                                                                                ## to
                                                                                                ## fill
                                                                                                ## the
                                                                                                ## Library
                                                                                                ## with
                                                                                                ## it


proc first*(): Handle[IFSelectSessionDumper] {.cdecl,
    importcpp: "IFSelect_SessionDumper::First(@)", header: "IFSelect_SessionDumper.hxx".}
proc next*(this: IFSelectSessionDumper): Handle[IFSelectSessionDumper] {.
    noSideEffect, cdecl, importcpp: "Next", header: "IFSelect_SessionDumper.hxx".}
proc writeOwn*(this: IFSelectSessionDumper; file: var IFSelectSessionFile;
              item: Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "WriteOwn", header: "IFSelect_SessionDumper.hxx".}
proc readOwn*(this: IFSelectSessionDumper; file: var IFSelectSessionFile;
             `type`: TCollectionAsciiString; item: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "ReadOwn", header: "IFSelect_SessionDumper.hxx".}