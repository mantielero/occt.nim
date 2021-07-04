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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  IFSelect_SequenceOfGeneralModifier, ../Interface/Interface_IntList,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfInteger

discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of IFSelect_AppliedModifiers"
type
  Handle_IFSelect_AppliedModifiers* = handle[IFSelect_AppliedModifiers]

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
  IFSelect_AppliedModifiers* {.importcpp: "IFSelect_AppliedModifiers",
                              header: "IFSelect_AppliedModifiers.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIFSelect_AppliedModifiers*(nbmax: Standard_Integer;
                                        nbent: Standard_Integer): IFSelect_AppliedModifiers {.
    constructor, importcpp: "IFSelect_AppliedModifiers(@)",
    header: "IFSelect_AppliedModifiers.hxx".}
proc AddModif*(this: var IFSelect_AppliedModifiers;
              modif: handle[IFSelect_GeneralModifier]): Standard_Boolean {.
    importcpp: "AddModif", header: "IFSelect_AppliedModifiers.hxx".}
proc AddNum*(this: var IFSelect_AppliedModifiers; nument: Standard_Integer): Standard_Boolean {.
    importcpp: "AddNum", header: "IFSelect_AppliedModifiers.hxx".}
proc Count*(this: IFSelect_AppliedModifiers): Standard_Integer {.noSideEffect,
    importcpp: "Count", header: "IFSelect_AppliedModifiers.hxx".}
proc Item*(this: var IFSelect_AppliedModifiers; num: Standard_Integer;
          modif: var handle[IFSelect_GeneralModifier];
          entcount: var Standard_Integer): Standard_Boolean {.importcpp: "Item",
    header: "IFSelect_AppliedModifiers.hxx".}
proc ItemNum*(this: IFSelect_AppliedModifiers; nument: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ItemNum", header: "IFSelect_AppliedModifiers.hxx".}
proc ItemList*(this: IFSelect_AppliedModifiers): handle[TColStd_HSequenceOfInteger] {.
    noSideEffect, importcpp: "ItemList", header: "IFSelect_AppliedModifiers.hxx".}
proc IsForAll*(this: IFSelect_AppliedModifiers): Standard_Boolean {.noSideEffect,
    importcpp: "IsForAll", header: "IFSelect_AppliedModifiers.hxx".}
type
  IFSelect_AppliedModifiersbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_AppliedModifiers::get_type_name(@)",
                              header: "IFSelect_AppliedModifiers.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_AppliedModifiers::get_type_descriptor(@)",
    header: "IFSelect_AppliedModifiers.hxx".}
proc DynamicType*(this: IFSelect_AppliedModifiers): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_AppliedModifiers.hxx".}