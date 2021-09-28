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

discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of XmlMDataStd_GenericExtStringDriver"
discard "forward decl of XmlMDataStd_IntegerDriver"
discard "forward decl of XmlMDataStd_RealDriver"
discard "forward decl of XmlMDataStd_IntegerArrayDriver"
discard "forward decl of XmlMDataStd_RealArrayDriver"
discard "forward decl of XmlMDataStd_ExtStringArrayDriver"
discard "forward decl of XmlMDataStd_UAttributeDriver"
discard "forward decl of XmlMDataStd_VariableDriver"
discard "forward decl of XmlMDataStd_ExpressionDriver"
discard "forward decl of XmlMDataStd_RelationDriver"
discard "forward decl of XmlMDataStd_TreeNodeDriver"
discard "forward decl of XmlMDataStd_GenericEmptyDriver"
discard "forward decl of XmlMDataStd_IntegerListDriver"
discard "forward decl of XmlMDataStd_RealListDriver"
discard "forward decl of XmlMDataStd_ExtStringListDriver"
discard "forward decl of XmlMDataStd_BooleanListDriver"
discard "forward decl of XmlMDataStd_ReferenceListDriver"
discard "forward decl of XmlMDataStd_BooleanArrayDriver"
discard "forward decl of XmlMDataStd_ReferenceArrayDriver"
discard "forward decl of XmlMDataStd_ByteArrayDriver"
discard "forward decl of XmlMDataStd_NamedDataDriver"
discard "forward decl of XmlMDataStd_AsciiStringDriver"
discard "forward decl of XmlMDataStd_IntPackedMapDriver"
type
  XmlMDataStd* {.importcpp: "XmlMDataStd", header: "XmlMDataStd.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Adds
                                                                                ## the
                                                                                ## attribute
                                                                                ## drivers
                                                                                ## to
                                                                                ## <aDriverTable>.


proc addDrivers*(aDriverTable: Handle[XmlMDF_ADriverTable];
                anMsgDrv: Handle[MessageMessenger]) {.
    importcpp: "XmlMDataStd::AddDrivers(@)", header: "XmlMDataStd.hxx".}

























