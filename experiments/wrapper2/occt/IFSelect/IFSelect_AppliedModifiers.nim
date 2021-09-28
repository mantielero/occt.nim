##  Created on: 1994-05-02
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

discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of IFSelect_AppliedModifiers"
type
  HandleC1C1* = Handle[IFSelectAppliedModifiers]

## ! This class allows to memorize and access to the modifiers
## ! which are to be applied to a file. To each modifier, is bound
## ! a list of integers (optionnal) : if this list is absent, the
## ! modifier applies to all the file. Else, it applies to the
## ! entities designated by these numbers in the produced file.
## !
## ! To record a modifier, and a possible list of entity numbers
## ! to be applied on :
## ! AddModif (amodifier);
## ! loop on  AddNum (anumber);
## !
## ! To query it,  Count gives the count of recorded modifiers,
## ! then for each one :
## ! Item (numodif, amodifier, entcount);
## ! IsForAll ()  -> can be called, if True, applies on the whole file
## !
## ! for (i = 1; i <= entcount; i ++)
## ! nument = ItemNum (i);  -> return an entity number

type
  IFSelectAppliedModifiers* {.importcpp: "IFSelect_AppliedModifiers",
                             header: "IFSelect_AppliedModifiers.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## AppliedModifiers,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## record
                                                                                                      ## up
                                                                                                      ## to
                                                                                                      ## <nbmax>
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## modifiers,
                                                                                                      ## on
                                                                                                      ## a
                                                                                                      ## model
                                                                                                      ## of
                                                                                                      ## <nbent>
                                                                                                      ## entities


proc constructIFSelectAppliedModifiers*(nbmax: cint; nbent: cint): IFSelectAppliedModifiers {.
    constructor, importcpp: "IFSelect_AppliedModifiers(@)",
    header: "IFSelect_AppliedModifiers.hxx".}
proc addModif*(this: var IFSelectAppliedModifiers;
              modif: Handle[IFSelectGeneralModifier]): bool {.
    importcpp: "AddModif", header: "IFSelect_AppliedModifiers.hxx".}
proc addNum*(this: var IFSelectAppliedModifiers; nument: cint): bool {.
    importcpp: "AddNum", header: "IFSelect_AppliedModifiers.hxx".}
proc count*(this: IFSelectAppliedModifiers): cint {.noSideEffect, importcpp: "Count",
    header: "IFSelect_AppliedModifiers.hxx".}
proc item*(this: var IFSelectAppliedModifiers; num: cint;
          modif: var Handle[IFSelectGeneralModifier]; entcount: var cint): bool {.
    importcpp: "Item", header: "IFSelect_AppliedModifiers.hxx".}
proc itemNum*(this: IFSelectAppliedModifiers; nument: cint): cint {.noSideEffect,
    importcpp: "ItemNum", header: "IFSelect_AppliedModifiers.hxx".}
proc itemList*(this: IFSelectAppliedModifiers): Handle[TColStdHSequenceOfInteger] {.
    noSideEffect, importcpp: "ItemList", header: "IFSelect_AppliedModifiers.hxx".}
proc isForAll*(this: IFSelectAppliedModifiers): bool {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_AppliedModifiers.hxx".}
type
  IFSelectAppliedModifiersbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_AppliedModifiers::get_type_name(@)",
                            header: "IFSelect_AppliedModifiers.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_AppliedModifiers::get_type_descriptor(@)",
    header: "IFSelect_AppliedModifiers.hxx".}
proc dynamicType*(this: IFSelectAppliedModifiers): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_AppliedModifiers.hxx".}

























