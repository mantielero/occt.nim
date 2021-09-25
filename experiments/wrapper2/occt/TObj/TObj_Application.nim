##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

## !
## ! This is a base class for OCAF based TObj models
## !  with declared virtual methods
## !

type
  TObjApplication* {.importcpp: "TObj_Application", header: "TObj_Application.hxx",
                    bycopy.} = object of TDocStdApplication ## ! Returns static instance of the application
                                                       ## *
                                                       ##     Load/Save support
                                                       ##
                                                       ## ! Saving the OCAF document to a file
                                                       ## *
                                                       ##  Redefined OCAF methods
                                                       ##
                                                       ## ! Return name of resource (i.e. "TObj")
                                                       ## *
                                                       ##  Constructor
                                                       ##
                                                       ## ! Constructor is protected. Use method GetInstance() method to obtain
                                                       ## ! the static instance of the object (or derive your own application)
                                                       ## *
                                                       ##  Fields
                                                       ##
                                                       ## ! CASCADE RTTI
    ## !< error flag
    ## !< verbose flag
    ## !< messenger


proc getInstance*(): Handle[TObjApplication] {.
    importcpp: "TObj_Application::GetInstance(@)", header: "TObj_Application.hxx".}
proc messenger*(this: var TObjApplication): var Handle[MessageMessenger] {.
    importcpp: "Messenger", header: "TObj_Application.hxx".}
proc saveDocument*(this: var TObjApplication; theSourceDoc: Handle[TDocStdDocument];
                  theTargetFile: TCollectionExtendedString): bool {.
    importcpp: "SaveDocument", header: "TObj_Application.hxx".}
proc loadDocument*(this: var TObjApplication;
                  theSourceFile: TCollectionExtendedString;
                  theTargetDoc: var Handle[TDocStdDocument]): bool {.
    importcpp: "LoadDocument", header: "TObj_Application.hxx".}
proc createNewDocument*(this: var TObjApplication;
                       theDoc: var Handle[TDocStdDocument];
                       theFormat: TCollectionExtendedString): bool {.
    importcpp: "CreateNewDocument", header: "TObj_Application.hxx".}
proc errorMessage*(this: var TObjApplication; theMsg: TCollectionExtendedString;
                  theLevel: MessageGravity) {.importcpp: "ErrorMessage",
    header: "TObj_Application.hxx".}
proc errorMessage*(this: var TObjApplication; theMsg: TCollectionExtendedString) {.
    importcpp: "ErrorMessage", header: "TObj_Application.hxx".}
proc setVerbose*(this: var TObjApplication; isVerbose: bool) {.
    importcpp: "SetVerbose", header: "TObj_Application.hxx".}
proc isVerbose*(this: TObjApplication): bool {.noSideEffect, importcpp: "IsVerbose",
    header: "TObj_Application.hxx".}
proc dumpJson*(this: TObjApplication; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TObj_Application.hxx".}
proc resourcesName*(this: var TObjApplication): StandardCString {.
    importcpp: "ResourcesName", header: "TObj_Application.hxx".}
type
  TObjApplicationbaseType* = TDocStdApplication

proc getTypeName*(): cstring {.importcpp: "TObj_Application::get_type_name(@)",
                            header: "TObj_Application.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_Application::get_type_descriptor(@)",
    header: "TObj_Application.hxx".}
proc dynamicType*(this: TObjApplication): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Application.hxx".}
## ! Define handle class

discard "forward decl of TObj_Application"
type
  HandleTObjApplication* = Handle[TObjApplication]

