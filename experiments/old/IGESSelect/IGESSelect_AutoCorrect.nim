##  Created on: 1994-06-01
##  Created by: Christian CAILLET
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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_AutoCorrect"
discard "forward decl of IGESSelect_AutoCorrect"
type
  HandleC1C1* = Handle[IGESSelectAutoCorrect]

## ! Does the absolutely effective corrections on IGES Entity.
## ! That is to say : regarding the norm in details, some values
## ! have mandatory values, or set of values with constraints.
## ! When such values/constraints are univoque, they can be forced.
## ! Also nullifies items of Directory Part, Associativities, and
## ! Properties, which are not (or not longer) in <target> Model.
## !
## ! Works by calling a BasicEditor from IGESData
## ! Works with the specific IGES Services : DirChecker which
## ! allows to correct data in "Directory Part" of Entities (such
## ! as required values for status, or references to be null), and
## ! the specific IGES service OwnCorrect, which is specialised for
## ! each type of entity.
## !
## ! Remark : this does not comprise the computation of use flag or
## ! subordinate status according references, which is made by
## ! the ModelModifier class ComputeStatus.
## !
## ! The Input Selection, when present, designates the entities to
## ! be corrected. If it is not present, all the entities of the
## ! model are corrected.

type
  IGESSelectAutoCorrect* {.importcpp: "IGESSelect_AutoCorrect",
                          header: "IGESSelect_AutoCorrect.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## AutoCorrect.


proc constructIGESSelectAutoCorrect*(): IGESSelectAutoCorrect {.constructor,
    importcpp: "IGESSelect_AutoCorrect(@)", header: "IGESSelect_AutoCorrect.hxx".}
proc performing*(this: IGESSelectAutoCorrect; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_AutoCorrect.hxx".}
proc label*(this: IGESSelectAutoCorrect): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_AutoCorrect.hxx".}
type
  IGESSelectAutoCorrectbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_AutoCorrect::get_type_name(@)",
                            header: "IGESSelect_AutoCorrect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_AutoCorrect::get_type_descriptor(@)",
    header: "IGESSelect_AutoCorrect.hxx".}
proc dynamicType*(this: IGESSelectAutoCorrect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_AutoCorrect.hxx".}

























