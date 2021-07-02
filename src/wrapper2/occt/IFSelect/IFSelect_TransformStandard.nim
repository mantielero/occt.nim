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
  HandleIFSelectTransformStandard* = Handle[IFSelectTransformStandard]

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
  IFSelectTransformStandard* {.importcpp: "IFSelect_TransformStandard",
                              header: "IFSelect_TransformStandard.hxx", bycopy.} = object of IFSelectTransformer ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## TransformStandard,
                                                                                                          ## option
                                                                                                          ## StandardCopy,
                                                                                                          ## no
                                                                                                          ## Modifier


proc constructIFSelectTransformStandard*(): IFSelectTransformStandard {.
    constructor, importcpp: "IFSelect_TransformStandard(@)",
    header: "IFSelect_TransformStandard.hxx".}
proc setCopyOption*(this: var IFSelectTransformStandard; option: StandardBoolean) {.
    importcpp: "SetCopyOption", header: "IFSelect_TransformStandard.hxx".}
proc copyOption*(this: IFSelectTransformStandard): StandardBoolean {.noSideEffect,
    importcpp: "CopyOption", header: "IFSelect_TransformStandard.hxx".}
proc setSelection*(this: var IFSelectTransformStandard;
                  sel: Handle[IFSelectSelection]) {.importcpp: "SetSelection",
    header: "IFSelect_TransformStandard.hxx".}
proc selection*(this: IFSelectTransformStandard): Handle[IFSelectSelection] {.
    noSideEffect, importcpp: "Selection", header: "IFSelect_TransformStandard.hxx".}
proc nbModifiers*(this: IFSelectTransformStandard): StandardInteger {.noSideEffect,
    importcpp: "NbModifiers", header: "IFSelect_TransformStandard.hxx".}
proc modifier*(this: IFSelectTransformStandard; num: StandardInteger): Handle[
    IFSelectModifier] {.noSideEffect, importcpp: "Modifier",
                       header: "IFSelect_TransformStandard.hxx".}
proc modifierRank*(this: IFSelectTransformStandard; modif: Handle[IFSelectModifier]): StandardInteger {.
    noSideEffect, importcpp: "ModifierRank",
    header: "IFSelect_TransformStandard.hxx".}
proc addModifier*(this: var IFSelectTransformStandard;
                 modif: Handle[IFSelectModifier]; atnum: StandardInteger = 0): StandardBoolean {.
    importcpp: "AddModifier", header: "IFSelect_TransformStandard.hxx".}
proc removeModifier*(this: var IFSelectTransformStandard;
                    modif: Handle[IFSelectModifier]): StandardBoolean {.
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc removeModifier*(this: var IFSelectTransformStandard; num: StandardInteger): StandardBoolean {.
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc perform*(this: var IFSelectTransformStandard; g: InterfaceGraph;
             protocol: Handle[InterfaceProtocol];
             checks: var InterfaceCheckIterator;
             newmod: var Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "Perform", header: "IFSelect_TransformStandard.hxx".}
proc copy*(this: IFSelectTransformStandard; g: InterfaceGraph;
          tc: var InterfaceCopyTool; newmod: var Handle[InterfaceInterfaceModel]) {.
    noSideEffect, importcpp: "Copy", header: "IFSelect_TransformStandard.hxx".}
proc standardCopy*(this: IFSelectTransformStandard; g: InterfaceGraph;
                  tc: var InterfaceCopyTool;
                  newmod: var Handle[InterfaceInterfaceModel]) {.noSideEffect,
    importcpp: "StandardCopy", header: "IFSelect_TransformStandard.hxx".}
proc onTheSpot*(this: IFSelectTransformStandard; g: InterfaceGraph;
               tc: var InterfaceCopyTool;
               newmod: var Handle[InterfaceInterfaceModel]) {.noSideEffect,
    importcpp: "OnTheSpot", header: "IFSelect_TransformStandard.hxx".}
proc applyModifiers*(this: IFSelectTransformStandard; g: InterfaceGraph;
                    protocol: Handle[InterfaceProtocol];
                    tc: var InterfaceCopyTool; checks: var InterfaceCheckIterator;
                    newmod: var Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "ApplyModifiers",
    header: "IFSelect_TransformStandard.hxx".}
proc updated*(this: IFSelectTransformStandard; entfrom: Handle[StandardTransient];
             entto: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "Updated", header: "IFSelect_TransformStandard.hxx".}
proc label*(this: IFSelectTransformStandard): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_TransformStandard.hxx".}
type
  IFSelectTransformStandardbaseType* = IFSelectTransformer

proc getTypeName*(): cstring {.importcpp: "IFSelect_TransformStandard::get_type_name(@)",
                            header: "IFSelect_TransformStandard.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_TransformStandard::get_type_descriptor(@)",
    header: "IFSelect_TransformStandard.hxx".}
proc dynamicType*(this: IFSelectTransformStandard): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_TransformStandard.hxx".}

