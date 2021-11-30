##  Created on: 1992-11-17
##  Created by: Christian CAILLET
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_Selection"
type
  HandleIFSelectSelection* = Handle[IFSelectSelection]

## ! A Selection allows to define a set of Interface Entities.
## ! Entities to be put on an output file should be identified in
## ! a way as independant from such or such execution as possible.
## ! This permits to handle comprehensive criteria, and to replay
## ! them when a new variant of an input file has to be processed.
## !
## ! Its input can be, either an Interface Model (the very source),
## ! or another-other Selection(s) or any other ouput. All list
## ! computations start from an input Graph (from IFGraph)

type
  IFSelectSelection* {.importcpp: "IFSelect_Selection",
                      header: "IFSelect_Selection.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## list
                                                                                        ## of
                                                                                        ## selected
                                                                                        ## entities,
                                                                                        ## computed
                                                                                        ## from
                                                                                        ## Input
                                                                                        ##
                                                                                        ## !
                                                                                        ## given
                                                                                        ## as
                                                                                        ## a
                                                                                        ## Graph.
                                                                                        ## Specific
                                                                                        ## to
                                                                                        ## each
                                                                                        ## class
                                                                                        ## of
                                                                                        ## Selection
                                                                                        ##
                                                                                        ## !
                                                                                        ## Note
                                                                                        ## that
                                                                                        ## uniqueness
                                                                                        ## of
                                                                                        ## each
                                                                                        ## entity
                                                                                        ## is
                                                                                        ## not
                                                                                        ## required
                                                                                        ## here
                                                                                        ##
                                                                                        ## !
                                                                                        ## This
                                                                                        ## method
                                                                                        ## can
                                                                                        ## raise
                                                                                        ## an
                                                                                        ## exception
                                                                                        ## as
                                                                                        ## necessary
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## True
                                                                                        ## if
                                                                                        ## RootResult
                                                                                        ## guarantees
                                                                                        ## uniqueness
                                                                                        ## for
                                                                                        ## each
                                                                                        ##
                                                                                        ## !
                                                                                        ## Entity.
                                                                                        ## Called
                                                                                        ## by
                                                                                        ## UniqueResult.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## answer
                                                                                        ## is
                                                                                        ## False.
                                                                                        ## Can
                                                                                        ## be
                                                                                        ## redefined.


proc rootResult*(this: IFSelectSelection; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_Selection.hxx".}
proc uniqueResult*(this: IFSelectSelection; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "UniqueResult", header: "IFSelect_Selection.hxx".}
proc completeResult*(this: IFSelectSelection; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "CompleteResult", header: "IFSelect_Selection.hxx".}
proc fillIterator*(this: IFSelectSelection; iter: var IFSelectSelectionIterator) {.
    noSideEffect, cdecl, importcpp: "FillIterator", header: "IFSelect_Selection.hxx".}
proc label*(this: IFSelectSelection): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Selection.hxx".}