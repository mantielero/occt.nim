##  Created on: 1999-06-25
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDataStd_Directory"
discard "forward decl of TDataStd_Directory"
type
  HandleTDataStdDirectory* = Handle[TDataStdDirectory]

## ! Associates a directory in the data framework with
## ! a TDataStd_TagSource attribute.
## ! You can create a new directory label and add
## ! sub-directory or object labels to it,

type
  TDataStdDirectory* {.importcpp: "TDataStd_Directory",
                      header: "TDataStd_Directory.hxx", bycopy.} = object of TDataStdGenericEmpty ##
                                                                                           ## !
                                                                                           ## class
                                                                                           ## methods
                                                                                           ##
                                                                                           ## !
                                                                                           ## =============
                                                                                           ##
                                                                                           ## !
                                                                                           ## Searches
                                                                                           ## for
                                                                                           ## a
                                                                                           ## directory
                                                                                           ## attribute
                                                                                           ## on
                                                                                           ## the
                                                                                           ## label
                                                                                           ##
                                                                                           ## !
                                                                                           ## current,
                                                                                           ## or
                                                                                           ## on
                                                                                           ## one
                                                                                           ## of
                                                                                           ## the
                                                                                           ## father
                                                                                           ## labels
                                                                                           ## of
                                                                                           ## current.
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## a
                                                                                           ## directory
                                                                                           ## attribute
                                                                                           ## is
                                                                                           ## found,
                                                                                           ## true
                                                                                           ## is
                                                                                           ## returned,
                                                                                           ##
                                                                                           ## !
                                                                                           ## and
                                                                                           ## the
                                                                                           ## attribute
                                                                                           ## found
                                                                                           ## is
                                                                                           ## set
                                                                                           ## as
                                                                                           ## D.


proc find*(current: TDF_Label; d: var Handle[TDataStdDirectory]): bool {.
    importcpp: "TDataStd_Directory::Find(@)", header: "TDataStd_Directory.hxx".}
proc new*(label: TDF_Label): Handle[TDataStdDirectory] {.
    importcpp: "TDataStd_Directory::New(@)", header: "TDataStd_Directory.hxx".}
proc addDirectory*(dir: Handle[TDataStdDirectory]): Handle[TDataStdDirectory] {.
    importcpp: "TDataStd_Directory::AddDirectory(@)",
    header: "TDataStd_Directory.hxx".}
proc makeObjectLabel*(dir: Handle[TDataStdDirectory]): TDF_Label {.
    importcpp: "TDataStd_Directory::MakeObjectLabel(@)",
    header: "TDataStd_Directory.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataStd_Directory::GetID(@)",
                           header: "TDataStd_Directory.hxx".}
proc constructTDataStdDirectory*(): TDataStdDirectory {.constructor,
    importcpp: "TDataStd_Directory(@)", header: "TDataStd_Directory.hxx".}
proc id*(this: TDataStdDirectory): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Directory.hxx".}
proc dump*(this: TDataStdDirectory; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Directory.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Directory , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!















































