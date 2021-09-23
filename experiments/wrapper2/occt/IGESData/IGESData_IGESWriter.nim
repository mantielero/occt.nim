##  Created on: 1992-04-07
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../Standard/Standard_Character, IGESData_Array1OfDirPart,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Integer,
  IGESData_ReadStage, ../Interface/Interface_LineBuffer,
  ../Interface/Interface_FloatWriter, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of Interface_FloatWriter"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_GlobalSection"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
type
  IGESData_IGESWriter* {.importcpp: "IGESData_IGESWriter",
                        header: "IGESData_IGESWriter.hxx", bycopy.} = object ## ! Creates an
                                                                        ## IGESWriter, empty ready to work
                                                                        ## ! (see the methods
                                                                        ## SendModel and Print)
                                                                        ## ! Basic action of adding a string to current
                                                                        ## parameter list as a
                                                                        ## ! line; manages size limit (64 or 72
                                                                        ## according Sestion G or P)
                                                                        ## ! <more>, if
                                                                        ## precised, requires that <more>
                                                                        ## characters will
                                                                        ## ! remain free on the current line once this
                                                                        ## AddString done


proc constructIGESData_IGESWriter*(amodel: handle[IGESData_IGESModel]): IGESData_IGESWriter {.
    constructor, importcpp: "IGESData_IGESWriter(@)",
    header: "IGESData_IGESWriter.hxx".}
proc constructIGESData_IGESWriter*(): IGESData_IGESWriter {.constructor,
    importcpp: "IGESData_IGESWriter(@)", header: "IGESData_IGESWriter.hxx".}
proc constructIGESData_IGESWriter*(other: IGESData_IGESWriter): IGESData_IGESWriter {.
    constructor, importcpp: "IGESData_IGESWriter(@)",
    header: "IGESData_IGESWriter.hxx".}
proc FloatWriter*(this: var IGESData_IGESWriter): var Interface_FloatWriter {.
    importcpp: "FloatWriter", header: "IGESData_IGESWriter.hxx".}
proc WriteMode*(this: var IGESData_IGESWriter): var Standard_Integer {.
    importcpp: "WriteMode", header: "IGESData_IGESWriter.hxx".}
proc SendStartLine*(this: var IGESData_IGESWriter; startline: Standard_CString) {.
    importcpp: "SendStartLine", header: "IGESData_IGESWriter.hxx".}
proc SendModel*(this: var IGESData_IGESWriter; protocol: handle[IGESData_Protocol]) {.
    importcpp: "SendModel", header: "IGESData_IGESWriter.hxx".}
proc SectionS*(this: var IGESData_IGESWriter) {.importcpp: "SectionS",
    header: "IGESData_IGESWriter.hxx".}
proc SectionG*(this: var IGESData_IGESWriter; header: IGESData_GlobalSection) {.
    importcpp: "SectionG", header: "IGESData_IGESWriter.hxx".}
proc SectionsDP*(this: var IGESData_IGESWriter) {.importcpp: "SectionsDP",
    header: "IGESData_IGESWriter.hxx".}
proc SectionT*(this: var IGESData_IGESWriter) {.importcpp: "SectionT",
    header: "IGESData_IGESWriter.hxx".}
proc DirPart*(this: var IGESData_IGESWriter; anent: handle[IGESData_IGESEntity]) {.
    importcpp: "DirPart", header: "IGESData_IGESWriter.hxx".}
proc OwnParams*(this: var IGESData_IGESWriter; anent: handle[IGESData_IGESEntity]) {.
    importcpp: "OwnParams", header: "IGESData_IGESWriter.hxx".}
proc Associativities*(this: var IGESData_IGESWriter;
                     anent: handle[IGESData_IGESEntity]) {.
    importcpp: "Associativities", header: "IGESData_IGESWriter.hxx".}
proc Properties*(this: var IGESData_IGESWriter; anent: handle[IGESData_IGESEntity]) {.
    importcpp: "Properties", header: "IGESData_IGESWriter.hxx".}
proc EndEntity*(this: var IGESData_IGESWriter) {.importcpp: "EndEntity",
    header: "IGESData_IGESWriter.hxx".}
proc SendVoid*(this: var IGESData_IGESWriter) {.importcpp: "SendVoid",
    header: "IGESData_IGESWriter.hxx".}
proc Send*(this: var IGESData_IGESWriter; val: Standard_Integer) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc SendBoolean*(this: var IGESData_IGESWriter; val: Standard_Boolean) {.
    importcpp: "SendBoolean", header: "IGESData_IGESWriter.hxx".}
proc Send*(this: var IGESData_IGESWriter; val: Standard_Real) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc Send*(this: var IGESData_IGESWriter; val: handle[TCollection_HAsciiString]) {.
    importcpp: "Send", header: "IGESData_IGESWriter.hxx".}
proc Send*(this: var IGESData_IGESWriter; val: handle[IGESData_IGESEntity];
          negative: Standard_Boolean = Standard_False) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  ! Helper method to avoid ambiguity of calls to above methods Send() for
## ! classes derived from IGESData_IGESEntity, for VC++ 10 and 11 compillers template < class T > [end of template] void Send ( const opencascade :: handle < T > [end of template] & val , Standard_Boolean negative = Standard_False , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < IGESData_IGESEntity , T > :: value > :: type * = 0 ) { Send ( ( const opencascade :: handle < IGESData_IGESEntity > [end of template] & ) val , negative ) ; } ! sends a parameter under its exact form given as a string void SendString ( const opencascade :: handle < TCollection_HAsciiString > [end of template] & val ) ;
## Error: token expected: ) but got: ::!!!

proc Send*(this: var IGESData_IGESWriter; val: gp_XY) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc Send*(this: var IGESData_IGESWriter; val: gp_XYZ) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc SectionStrings*(this: IGESData_IGESWriter; numsec: Standard_Integer): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "SectionStrings",
                                      header: "IGESData_IGESWriter.hxx".}
proc Print*(this: IGESData_IGESWriter; S: var Standard_OStream): Standard_Boolean {.
    noSideEffect, importcpp: "Print", header: "IGESData_IGESWriter.hxx".}