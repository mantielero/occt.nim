import ifselect_types

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




proc newIFSelectTransformStandard*(): IFSelectTransformStandard {.cdecl,
    constructor, importcpp: "IFSelect_TransformStandard(@)", header: "IFSelect_TransformStandard.hxx".}
proc setCopyOption*(this: var IFSelectTransformStandard; option: bool) {.cdecl,
    importcpp: "SetCopyOption", header: "IFSelect_TransformStandard.hxx".}
proc copyOption*(this: IFSelectTransformStandard): bool {.noSideEffect, cdecl,
    importcpp: "CopyOption", header: "IFSelect_TransformStandard.hxx".}
proc setSelection*(this: var IFSelectTransformStandard;
                  sel: Handle[IFSelectSelection]) {.cdecl,
    importcpp: "SetSelection", header: "IFSelect_TransformStandard.hxx".}
proc selection*(this: IFSelectTransformStandard): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Selection", header: "IFSelect_TransformStandard.hxx".}
proc nbModifiers*(this: IFSelectTransformStandard): cint {.noSideEffect, cdecl,
    importcpp: "NbModifiers", header: "IFSelect_TransformStandard.hxx".}
proc modifier*(this: IFSelectTransformStandard; num: cint): Handle[IFSelectModifier] {.
    noSideEffect, cdecl, importcpp: "Modifier", header: "IFSelect_TransformStandard.hxx".}
proc modifierRank*(this: IFSelectTransformStandard; modif: Handle[IFSelectModifier]): cint {.
    noSideEffect, cdecl, importcpp: "ModifierRank", header: "IFSelect_TransformStandard.hxx".}
proc addModifier*(this: var IFSelectTransformStandard;
                 modif: Handle[IFSelectModifier]; atnum: cint = 0): bool {.cdecl,
    importcpp: "AddModifier", header: "IFSelect_TransformStandard.hxx".}
proc removeModifier*(this: var IFSelectTransformStandard;
                    modif: Handle[IFSelectModifier]): bool {.cdecl,
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc removeModifier*(this: var IFSelectTransformStandard; num: cint): bool {.cdecl,
    importcpp: "RemoveModifier", header: "IFSelect_TransformStandard.hxx".}
proc perform*(this: var IFSelectTransformStandard; g: InterfaceGraph;
             protocol: Handle[InterfaceProtocol];
             checks: var InterfaceCheckIterator;
             newmod: var Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "Perform", header: "IFSelect_TransformStandard.hxx".}
proc copy*(this: IFSelectTransformStandard; g: InterfaceGraph;
          tc: var InterfaceCopyTool; newmod: var Handle[InterfaceInterfaceModel]) {.
    noSideEffect, cdecl, importcpp: "Copy", header: "IFSelect_TransformStandard.hxx".}
proc standardCopy*(this: IFSelectTransformStandard; g: InterfaceGraph;
                  tc: var InterfaceCopyTool;
                  newmod: var Handle[InterfaceInterfaceModel]) {.noSideEffect,
    cdecl, importcpp: "StandardCopy", header: "IFSelect_TransformStandard.hxx".}
proc onTheSpot*(this: IFSelectTransformStandard; g: InterfaceGraph;
               tc: var InterfaceCopyTool;
               newmod: var Handle[InterfaceInterfaceModel]) {.noSideEffect, cdecl,
    importcpp: "OnTheSpot", header: "IFSelect_TransformStandard.hxx".}
proc applyModifiers*(this: IFSelectTransformStandard; g: InterfaceGraph;
                    protocol: Handle[InterfaceProtocol];
                    tc: var InterfaceCopyTool; checks: var InterfaceCheckIterator;
                    newmod: var Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "ApplyModifiers", header: "IFSelect_TransformStandard.hxx".}
proc updated*(this: IFSelectTransformStandard; entfrom: Handle[StandardTransient];
             entto: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Updated", header: "IFSelect_TransformStandard.hxx".}
proc label*(this: IFSelectTransformStandard): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_TransformStandard.hxx".}
