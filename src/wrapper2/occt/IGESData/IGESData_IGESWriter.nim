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
  IGESDataIGESWriter* {.importcpp: "IGESData_IGESWriter",
                       header: "IGESData_IGESWriter.hxx", bycopy.} = object ## ! Creates an
                                                                       ## IGESWriter, empty ready to work
                                                                       ## ! (see the methods SendModel and Print)
                                                                       ## ! Basic action of adding a string to current parameter list as a
                                                                       ## ! line; manages size limit (64 or 72 according Sestion G or P)
                                                                       ## ! <more>, if precised, requires that <more>
                                                                       ## characters will
                                                                       ## ! remain free on the current line once this AddString done


proc constructIGESDataIGESWriter*(amodel: Handle[IGESDataIGESModel]): IGESDataIGESWriter {.
    constructor, importcpp: "IGESData_IGESWriter(@)",
    header: "IGESData_IGESWriter.hxx".}
proc constructIGESDataIGESWriter*(): IGESDataIGESWriter {.constructor,
    importcpp: "IGESData_IGESWriter(@)", header: "IGESData_IGESWriter.hxx".}
proc constructIGESDataIGESWriter*(other: IGESDataIGESWriter): IGESDataIGESWriter {.
    constructor, importcpp: "IGESData_IGESWriter(@)",
    header: "IGESData_IGESWriter.hxx".}
proc floatWriter*(this: var IGESDataIGESWriter): var InterfaceFloatWriter {.
    importcpp: "FloatWriter", header: "IGESData_IGESWriter.hxx".}
proc writeMode*(this: var IGESDataIGESWriter): var StandardInteger {.
    importcpp: "WriteMode", header: "IGESData_IGESWriter.hxx".}
proc sendStartLine*(this: var IGESDataIGESWriter; startline: StandardCString) {.
    importcpp: "SendStartLine", header: "IGESData_IGESWriter.hxx".}
proc sendModel*(this: var IGESDataIGESWriter; protocol: Handle[IGESDataProtocol]) {.
    importcpp: "SendModel", header: "IGESData_IGESWriter.hxx".}
proc sectionS*(this: var IGESDataIGESWriter) {.importcpp: "SectionS",
    header: "IGESData_IGESWriter.hxx".}
proc sectionG*(this: var IGESDataIGESWriter; header: IGESDataGlobalSection) {.
    importcpp: "SectionG", header: "IGESData_IGESWriter.hxx".}
proc sectionsDP*(this: var IGESDataIGESWriter) {.importcpp: "SectionsDP",
    header: "IGESData_IGESWriter.hxx".}
proc sectionT*(this: var IGESDataIGESWriter) {.importcpp: "SectionT",
    header: "IGESData_IGESWriter.hxx".}
proc dirPart*(this: var IGESDataIGESWriter; anent: Handle[IGESDataIGESEntity]) {.
    importcpp: "DirPart", header: "IGESData_IGESWriter.hxx".}
proc ownParams*(this: var IGESDataIGESWriter; anent: Handle[IGESDataIGESEntity]) {.
    importcpp: "OwnParams", header: "IGESData_IGESWriter.hxx".}
proc associativities*(this: var IGESDataIGESWriter;
                     anent: Handle[IGESDataIGESEntity]) {.
    importcpp: "Associativities", header: "IGESData_IGESWriter.hxx".}
proc properties*(this: var IGESDataIGESWriter; anent: Handle[IGESDataIGESEntity]) {.
    importcpp: "Properties", header: "IGESData_IGESWriter.hxx".}
proc endEntity*(this: var IGESDataIGESWriter) {.importcpp: "EndEntity",
    header: "IGESData_IGESWriter.hxx".}
proc sendVoid*(this: var IGESDataIGESWriter) {.importcpp: "SendVoid",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: StandardInteger) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc sendBoolean*(this: var IGESDataIGESWriter; val: StandardBoolean) {.
    importcpp: "SendBoolean", header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: StandardReal) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: Handle[TCollectionHAsciiString]) {.
    importcpp: "Send", header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: Handle[IGESDataIGESEntity];
          negative: StandardBoolean = standardFalse) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  ! Helper method to avoid ambiguity of calls to above methods Send() for
## ! classes derived from IGESData_IGESEntity, for VC++ 10 and 11 compillers template < class T > [end of template] void Send ( const opencascade :: handle < T > [end of template] & val , Standard_Boolean negative = Standard_False , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < IGESData_IGESEntity , T > :: value > :: type * = 0 ) { Send ( ( const opencascade :: handle < IGESData_IGESEntity > [end of template] & ) val , negative ) ; } ! sends a parameter under its exact form given as a string void SendString ( const opencascade :: handle < TCollection_HAsciiString > [end of template] & val ) ;
## Error: token expected: ) but got: ::!!!

proc send*(this: var IGESDataIGESWriter; val: GpXY) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: GpXYZ) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc sectionStrings*(this: IGESDataIGESWriter; numsec: StandardInteger): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "SectionStrings",
                                     header: "IGESData_IGESWriter.hxx".}
proc print*(this: IGESDataIGESWriter; s: var StandardOStream): StandardBoolean {.
    noSideEffect, importcpp: "Print", header: "IGESData_IGESWriter.hxx".}

