##  Created on: 1994-05-27
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IFSelect_SequenceOfGeneralModifier, IFSelect_Transformer,
  ../Standard/Standard_Integer

discard "forward decl of IFSelect_Selection"
discard "forward decl of Interface_CopyControl"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_TransformStandard"
discard "forward decl of IFSelect_TransformStandard"
type
  Handle_IFSelect_TransformStandard* = handle[IFSelect_TransformStandard]

## ! This class runs transformations made by Modifiers, as
## ! the ModelCopier does when it produces files (the same set
## ! of Modifiers can then be used, as to transform the starting
## ! Model, as at file sending time).
## !
## ! First, considering the resulting model, two options :
## ! - modifications are made directly on the starting model
## ! (OnTheSpot option), or
## ! - data are copied by the standard service Copy, only the
## ! remaining (not yet sent in a file) entities are copied
## ! (StandardCopy option)
## !
## ! If a Selection is set, it forces the list of Entities on which
## ! the Modifiers are applied. Else, each Modifier is considered
## ! its Selection. By default, it is for the whole Model
## !
## ! Then, the Modifiers are sequentially applied
## ! If at least one Modifier "May Change Graph", or if the option
## ! StandardCopy is selected, the graph will be recomputed
## ! (by the WorkSession, see method RunTransformer)
## !
## ! Remark that a TransformStandard with option StandardCopy
## ! and no Modifier at all has the effect of computing the
## ! remaining data (those not yet sent in any output file).
## ! Moreover, the Protocol is not changed

type
  IFSelect_TransformStandard* {.importcpp: "IFSelect_TransformStandard",
                               header: "IFSelect_TransformStandard.hxx", bycopy.} = object of IFSelect_Transformer ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## TransformStandard,
                                                                                                            ## option
                                                                                                            ## StandardCopy,
                                                                                                            ## no
                                                                                                            ## Modifier


proc constructIFSelect_TransformStandard*(): IFSelect_TransformStandard {.
    constructor, importcpp: "IFSelect_TransformStandard(@)",
    header: "IFSelect_TransformStandard.hxx".}
proc SetCopyOption*(this: var IFSelect_TransformStandard; option: Standard_Boolean) {.
    importcpp: "SetCopyOption", header: "IFSelect_TransformStandard.hxx".}
proc CopyOption*(this: IFSelect_TransformStandard): Standard_Boolean {.noSideEffect,
    importcpp: "CopyOption", header: "IFSelect_TransformStandard.hxx".}
proc SetSelection*(this: var IFSelect_TransformStandard;
                  sel: handle[IFSelect_Selection]) {.importcpp: "SetSelection",
    header: "IFSelect_TransformStandard.hxx".}
proc Selection*(this: IFSelect_TransformStandard): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "Selection", header: "IFSelect_TransformStandard.hxx".}
proc NbModifiers*(this: IFSelect_TransformStandard): Standard_Integer {.
    noSideEffect, importcpp: "NbModifiers",
    header: "IFSelect_TransformStandard.hxx".}
proc Modifier*(this: IFSelect_TransformStandard; num: Standard_Integer): handle[
    IFSelect_Modifier] {.noSideEffect, importcpp: "Modifier",
                        header: "IFSelect_TransformStandard.hxx".}
proc ModifierRank*(this: IFSelect_TransformStandard;
                  modif: handle[IFSelect_Modifier]): Standard_Integer {.
    noSideEffect, importcpp: "ModifierRank",
    header: "IFSelect_TransformStandard.hxx".}
proc AddModifier*(this: var IFSelect_TransformStandard;
                 modif: handle[IFSelect_Modifier]; atnum: Standard_Integer = 0): Standard_Boolean {.
    importcpp: "AddModifier", header: "IFSelect_TransformStandard.hxx".}
proc RemoveModifier*(this: var IFSelect_TransformStandard;
                    modif: handle[IFSelect_Modifier]): Standard_Boolean {.
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc RemoveModifier*(this: var IFSelect_TransformStandard; num: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc Perform*(this: var IFSelect_TransformStandard; G: Interface_Graph;
             protocol: handle[Interface_Protocol];
             checks: var Interface_CheckIterator;
             newmod: var handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "Perform", header: "IFSelect_TransformStandard.hxx".}
proc Copy*(this: IFSelect_TransformStandard; G: Interface_Graph;
          TC: var Interface_CopyTool; newmod: var handle[Interface_InterfaceModel]) {.
    noSideEffect, importcpp: "Copy", header: "IFSelect_TransformStandard.hxx".}
proc StandardCopy*(this: IFSelect_TransformStandard; G: Interface_Graph;
                  TC: var Interface_CopyTool;
                  newmod: var handle[Interface_InterfaceModel]) {.noSideEffect,
    importcpp: "StandardCopy", header: "IFSelect_TransformStandard.hxx".}
proc OnTheSpot*(this: IFSelect_TransformStandard; G: Interface_Graph;
               TC: var Interface_CopyTool;
               newmod: var handle[Interface_InterfaceModel]) {.noSideEffect,
    importcpp: "OnTheSpot", header: "IFSelect_TransformStandard.hxx".}
proc ApplyModifiers*(this: IFSelect_TransformStandard; G: Interface_Graph;
                    protocol: handle[Interface_Protocol];
                    TC: var Interface_CopyTool;
                    checks: var Interface_CheckIterator;
                    newmod: var handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "ApplyModifiers",
    header: "IFSelect_TransformStandard.hxx".}
proc Updated*(this: IFSelect_TransformStandard;
             entfrom: handle[Standard_Transient];
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "Updated", header: "IFSelect_TransformStandard.hxx".}
proc Label*(this: IFSelect_TransformStandard): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_TransformStandard.hxx".}
type
  IFSelect_TransformStandardbase_type* = IFSelect_Transformer

proc get_type_name*(): cstring {.importcpp: "IFSelect_TransformStandard::get_type_name(@)",
                              header: "IFSelect_TransformStandard.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_TransformStandard::get_type_descriptor(@)",
    header: "IFSelect_TransformStandard.hxx".}
proc DynamicType*(this: IFSelect_TransformStandard): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_TransformStandard.hxx".}