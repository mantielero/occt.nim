##  Created on: 1993-08-26
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

discard "forward decl of IFSelect_ShareOut"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of IFSelect_ShareOutResult"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_ModelCopier"
discard "forward decl of IFSelect_ModelCopier"
type
  HandleIFSelectModelCopier* = Handle[IFSelectModelCopier]

## ! This class performs the Copy operations involved by the
## ! description of a ShareOut (evaluated by a ShareOutResult)
## ! plus, if there are, the Modifications on the results, with
## ! the help of Modifiers. Each Modifier can work on one or more
## ! resulting packets, accoding its criteria : it operates on a
## ! Model once copied and filled with the content of the packet.
## !
## ! Modifiers can be :
## ! - Model Modifiers, inheriting from the specific class Modifier
## ! able to run on the content of a Model (header or entities),
## ! activated by the ModelCopier itself
## ! - File Modifiers, inheriting directly from GeneralModifier,
## ! intended to be activated under the control of a WorkLibrary,
## ! once the Model has been produced (i.e. to act on output
## ! format, or other specific file features)
## !
## ! The Copy operations can be :
## ! - immediately put to files : for each packet, a Model is
## ! created and filled, then the file is output, at that's all
## ! - memorized : for each packet, a Model is created and filled,
## ! it is memorized with the corresponding file name.
## ! it is possible to query the result of memorization (list of
## ! produced Models and their file names)
## ! -> it is also possible to send it into the files :
## ! once files are written, the result is cleared
## !
## ! In addition, a list of really written files is managed :
## ! A first call to BeginSentFiles clears the list and commands,
## ! either to begin a new list, or to stop recording it. A call
## ! to SentFiles returns the list (if recording has been required)
## ! This list allows to globally exploit the set of produced files
## !
## ! Remark : For operations which concern specific Entities, see
## ! also in package IFAdapt : a sub-class of ModelCopier allows
## ! to work with EntityModifier, in addition to Modifier itself
## ! which still applies to a whole copied Model.

type
  IFSelectModelCopier* {.importcpp: "IFSelect_ModelCopier",
                        header: "IFSelect_ModelCopier.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## ModelCopier
                                                                                            ##
                                                                                            ## !
                                                                                            ## Internal
                                                                                            ## routine
                                                                                            ## which
                                                                                            ## does
                                                                                            ## the
                                                                                            ## effective
                                                                                            ## Copy.
                                                                                            ## It
                                                                                            ## allows
                                                                                            ## to
                                                                                            ##
                                                                                            ## !
                                                                                            ## work,
                                                                                            ## either
                                                                                            ## with
                                                                                            ## a
                                                                                            ## standard
                                                                                            ## CopyTool,
                                                                                            ## or
                                                                                            ## a
                                                                                            ## specialised
                                                                                            ## one
                                                                                            ##
                                                                                            ## !
                                                                                            ## Copying
                                                                                            ## itself
                                                                                            ## is
                                                                                            ## done
                                                                                            ## by
                                                                                            ## <WL>
                                                                                            ## which
                                                                                            ## uses
                                                                                            ## a
                                                                                            ## CopyTool


proc constructIFSelectModelCopier*(): IFSelectModelCopier {.constructor,
    importcpp: "IFSelect_ModelCopier(@)", header: "IFSelect_ModelCopier.hxx".}
proc setShareOut*(this: var IFSelectModelCopier; sho: Handle[IFSelectShareOut]) {.
    importcpp: "SetShareOut", header: "IFSelect_ModelCopier.hxx".}
proc clearResult*(this: var IFSelectModelCopier) {.importcpp: "ClearResult",
    header: "IFSelect_ModelCopier.hxx".}
proc addFile*(this: var IFSelectModelCopier; filename: TCollectionAsciiString;
             content: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "AddFile", header: "IFSelect_ModelCopier.hxx".}
proc nameFile*(this: var IFSelectModelCopier; num: StandardInteger;
              filename: TCollectionAsciiString): StandardBoolean {.
    importcpp: "NameFile", header: "IFSelect_ModelCopier.hxx".}
proc clearFile*(this: var IFSelectModelCopier; num: StandardInteger): StandardBoolean {.
    importcpp: "ClearFile", header: "IFSelect_ModelCopier.hxx".}
proc setAppliedModifiers*(this: var IFSelectModelCopier; num: StandardInteger;
                         applied: Handle[IFSelectAppliedModifiers]): StandardBoolean {.
    importcpp: "SetAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc clearAppliedModifiers*(this: var IFSelectModelCopier; num: StandardInteger): StandardBoolean {.
    importcpp: "ClearAppliedModifiers", header: "IFSelect_ModelCopier.hxx".}
proc copy*(this: var IFSelectModelCopier; eval: var IFSelectShareOutResult;
          wl: Handle[IFSelectWorkLibrary]; protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    importcpp: "Copy", header: "IFSelect_ModelCopier.hxx".}
proc sendCopied*(this: var IFSelectModelCopier; wl: Handle[IFSelectWorkLibrary];
                protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    importcpp: "SendCopied", header: "IFSelect_ModelCopier.hxx".}
proc send*(this: var IFSelectModelCopier; eval: var IFSelectShareOutResult;
          wl: Handle[IFSelectWorkLibrary]; protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    importcpp: "Send", header: "IFSelect_ModelCopier.hxx".}
proc sendAll*(this: var IFSelectModelCopier; filename: StandardCString;
             g: InterfaceGraph; wl: Handle[IFSelectWorkLibrary];
             protocol: Handle[InterfaceProtocol]): InterfaceCheckIterator {.
    importcpp: "SendAll", header: "IFSelect_ModelCopier.hxx".}
proc sendSelected*(this: var IFSelectModelCopier; filename: StandardCString;
                  g: InterfaceGraph; wl: Handle[IFSelectWorkLibrary];
                  protocol: Handle[InterfaceProtocol];
                  iter: InterfaceEntityIterator): InterfaceCheckIterator {.
    importcpp: "SendSelected", header: "IFSelect_ModelCopier.hxx".}
proc copiedRemaining*(this: var IFSelectModelCopier; g: InterfaceGraph;
                     wl: Handle[IFSelectWorkLibrary]; tc: var InterfaceCopyTool;
                     newmod: var Handle[InterfaceInterfaceModel]) {.
    importcpp: "CopiedRemaining", header: "IFSelect_ModelCopier.hxx".}
proc setRemaining*(this: IFSelectModelCopier; cg: var InterfaceGraph): StandardBoolean {.
    noSideEffect, importcpp: "SetRemaining", header: "IFSelect_ModelCopier.hxx".}
proc nbFiles*(this: IFSelectModelCopier): StandardInteger {.noSideEffect,
    importcpp: "NbFiles", header: "IFSelect_ModelCopier.hxx".}
proc fileName*(this: IFSelectModelCopier; num: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "FileName", header: "IFSelect_ModelCopier.hxx".}
proc fileModel*(this: IFSelectModelCopier; num: StandardInteger): Handle[
    InterfaceInterfaceModel] {.noSideEffect, importcpp: "FileModel",
                              header: "IFSelect_ModelCopier.hxx".}
proc appliedModifiers*(this: IFSelectModelCopier; num: StandardInteger): Handle[
    IFSelectAppliedModifiers] {.noSideEffect, importcpp: "AppliedModifiers",
                               header: "IFSelect_ModelCopier.hxx".}
proc beginSentFiles*(this: var IFSelectModelCopier; sho: Handle[IFSelectShareOut];
                    record: StandardBoolean) {.importcpp: "BeginSentFiles",
    header: "IFSelect_ModelCopier.hxx".}
proc addSentFile*(this: var IFSelectModelCopier; filename: StandardCString) {.
    importcpp: "AddSentFile", header: "IFSelect_ModelCopier.hxx".}
proc sentFiles*(this: IFSelectModelCopier): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "SentFiles", header: "IFSelect_ModelCopier.hxx".}
type
  IFSelectModelCopierbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_ModelCopier::get_type_name(@)",
                            header: "IFSelect_ModelCopier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_ModelCopier::get_type_descriptor(@)",
    header: "IFSelect_ModelCopier.hxx".}
proc dynamicType*(this: IFSelectModelCopier): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_ModelCopier.hxx".}

