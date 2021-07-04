##  Created on: 1997-12-09
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, PCDM_ReadWriter,
  ../Standard/Standard_Integer, PCDM_SequenceOfReference,
  ../TColStd/TColStd_SequenceOfExtendedString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Storage_Data"
discard "forward decl of CDM_Document"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of Message_Messenger"
discard "forward decl of PCDM_ReadWriter_1"
discard "forward decl of PCDM_ReadWriter_1"
type
  Handle_PCDM_ReadWriter_1* = handle[PCDM_ReadWriter_1]
  PCDM_ReadWriter_1* {.importcpp: "PCDM_ReadWriter_1",
                      header: "PCDM_ReadWriter_1.hxx", bycopy.} = object of PCDM_ReadWriter


proc constructPCDM_ReadWriter_1*(): PCDM_ReadWriter_1 {.constructor,
    importcpp: "PCDM_ReadWriter_1(@)", header: "PCDM_ReadWriter_1.hxx".}
proc Version*(this: PCDM_ReadWriter_1): TCollection_AsciiString {.noSideEffect,
    importcpp: "Version", header: "PCDM_ReadWriter_1.hxx".}
proc WriteReferenceCounter*(this: PCDM_ReadWriter_1; aData: handle[Storage_Data];
                           aDocument: handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteReferenceCounter", header: "PCDM_ReadWriter_1.hxx".}
proc WriteReferences*(this: PCDM_ReadWriter_1; aData: handle[Storage_Data];
                     aDocument: handle[CDM_Document];
                     theReferencerFileName: TCollection_ExtendedString) {.
    noSideEffect, importcpp: "WriteReferences", header: "PCDM_ReadWriter_1.hxx".}
proc WriteExtensions*(this: PCDM_ReadWriter_1; aData: handle[Storage_Data];
                     aDocument: handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteExtensions", header: "PCDM_ReadWriter_1.hxx".}
proc WriteVersion*(this: PCDM_ReadWriter_1; aData: handle[Storage_Data];
                  aDocument: handle[CDM_Document]) {.noSideEffect,
    importcpp: "WriteVersion", header: "PCDM_ReadWriter_1.hxx".}
proc ReadReferenceCounter*(this: PCDM_ReadWriter_1;
                          aFileName: TCollection_ExtendedString;
                          theMsgDriver: handle[Message_Messenger]): Standard_Integer {.
    noSideEffect, importcpp: "ReadReferenceCounter",
    header: "PCDM_ReadWriter_1.hxx".}
proc ReadReferences*(this: PCDM_ReadWriter_1;
                    aFileName: TCollection_ExtendedString;
                    theReferences: var PCDM_SequenceOfReference;
                    theMsgDriver: handle[Message_Messenger]) {.noSideEffect,
    importcpp: "ReadReferences", header: "PCDM_ReadWriter_1.hxx".}
proc ReadExtensions*(this: PCDM_ReadWriter_1;
                    aFileName: TCollection_ExtendedString;
                    theExtensions: var TColStd_SequenceOfExtendedString;
                    theMsgDriver: handle[Message_Messenger]) {.noSideEffect,
    importcpp: "ReadExtensions", header: "PCDM_ReadWriter_1.hxx".}
proc ReadDocumentVersion*(this: PCDM_ReadWriter_1;
                         aFileName: TCollection_ExtendedString;
                         theMsgDriver: handle[Message_Messenger]): Standard_Integer {.
    noSideEffect, importcpp: "ReadDocumentVersion", header: "PCDM_ReadWriter_1.hxx".}
type
  PCDM_ReadWriter_1base_type* = PCDM_ReadWriter

proc get_type_name*(): cstring {.importcpp: "PCDM_ReadWriter_1::get_type_name(@)",
                              header: "PCDM_ReadWriter_1.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PCDM_ReadWriter_1::get_type_descriptor(@)",
    header: "PCDM_ReadWriter_1.hxx".}
proc DynamicType*(this: PCDM_ReadWriter_1): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PCDM_ReadWriter_1.hxx".}