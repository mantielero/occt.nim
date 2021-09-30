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
    tColStdHSequenceOfHAsciiString* {.importc: "TColStd_HSequenceOfHAsciiString".}: Handle


## !!!Ignored construct:  public : ! Creates an IGESWriter, empty ready to work
## ! (see the methods SendModel and Print) IGESData_IGESWriter ( const Handle ( IGESData_IGESModel ) & amodel ) ;
## Error: token expected: ) but got: &!!!

proc constructIGESDataIGESWriter*(): IGESDataIGESWriter {.constructor,
    importcpp: "IGESData_IGESWriter(@)", header: "IGESData_IGESWriter.hxx".}
proc constructIGESDataIGESWriter*(other: IGESDataIGESWriter): IGESDataIGESWriter {.
    constructor, importcpp: "IGESData_IGESWriter(@)",
    header: "IGESData_IGESWriter.hxx".}
proc floatWriter*(this: var IGESDataIGESWriter): var InterfaceFloatWriter {.
    importcpp: "FloatWriter", header: "IGESData_IGESWriter.hxx".}
proc writeMode*(this: var IGESDataIGESWriter): var int {.importcpp: "WriteMode",
    header: "IGESData_IGESWriter.hxx".}
proc sendStartLine*(this: var IGESDataIGESWriter; startline: StandardCString) {.
    importcpp: "SendStartLine", header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  ! Sends the complete IGESModel (Global Section, Entities as
## ! Directory Entries & Parameter Lists, etc...)
## ! i.e. fills a list of texts. Once filled, it can be sent by
## ! method Print void SendModel ( const Handle ( IGESData_Protocol ) & protocol ) ;
## Error: token expected: ) but got: &!!!

proc sectionS*(this: var IGESDataIGESWriter) {.importcpp: "SectionS",
    header: "IGESData_IGESWriter.hxx".}
proc sectionG*(this: var IGESDataIGESWriter; header: IGESDataGlobalSection) {.
    importcpp: "SectionG", header: "IGESData_IGESWriter.hxx".}
proc sectionsDP*(this: var IGESDataIGESWriter) {.importcpp: "SectionsDP",
    header: "IGESData_IGESWriter.hxx".}
proc sectionT*(this: var IGESDataIGESWriter) {.importcpp: "SectionT",
    header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  ! translates directory part of an Entity into a litteral DirPart
## ! Some infos are computed after sending parameters
## ! Error if not in sections DP or Stage not "Dir" void DirPart ( const Handle ( IGESData_IGESEntity ) & anent ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! sends own parameters of the entity, by sending firstly its
## ! type, then calling specific method WriteOwnParams
## ! Error if not in sections DP or Stage not "Own" void OwnParams ( const Handle ( IGESData_IGESEntity ) & anent ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! sends associativity list, as complement of parameters list
## ! error if not in sections DP or Stage not "Associativity" void Associativities ( const Handle ( IGESData_IGESEntity ) & anent ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! sends property list, as complement of parameters list
## ! error if not in sections DP or Stage not "Property" void Properties ( const Handle ( IGESData_IGESEntity ) & anent ) ;
## Error: token expected: ) but got: &!!!

proc endEntity*(this: var IGESDataIGESWriter) {.importcpp: "EndEntity",
    header: "IGESData_IGESWriter.hxx".}
proc sendVoid*(this: var IGESDataIGESWriter) {.importcpp: "SendVoid",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: int) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc sendBoolean*(this: var IGESDataIGESWriter; val: bool) {.importcpp: "SendBoolean",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: float) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  ! sends a Text parameter under Hollerith form void Send ( const Handle ( TCollection_HAsciiString ) & val ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! sends a Reference to an Entity (if its Number is N, its
## ! pointer is 2*N-1)
## ! If <val> is Null, "0" will be sent
## ! If <negative> is True, "Pointer" is sent as negative void Send ( const Handle ( IGESData_IGESEntity ) & val , const Standard_Boolean negative = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Helper method to avoid ambiguity of calls to above methods Send() for
## ! classes derived from IGESData_IGESEntity, for VC++ 10 and 11 compillers template < class T > [end of template] void Send ( const Handle ( T ) & val , Standard_Boolean negative = Standard_False , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < IGESData_IGESEntity , T > :: value > :: type * = 0 ) { Send ( ( const Handle ( IGESData_IGESEntity ) & ) val , negative ) ; } ! sends a parameter under its exact form given as a string void SendString ( const Handle ( TCollection_HAsciiString ) & val ) ;
## Error: token expected: ) but got: &!!!

proc send*(this: var IGESDataIGESWriter; val: Xy) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
proc send*(this: var IGESDataIGESWriter; val: Xyz) {.importcpp: "Send",
    header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  SectionStrings ( const Standard_Integer numsec ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc print*(this: IGESDataIGESWriter; s: var StandardOStream): bool {.noSideEffect,
    importcpp: "Print", header: "IGESData_IGESWriter.hxx".}
## !!!Ignored construct:  private : ! Basic action of adding a string to current parameter list as a
## ! line; manages size limit (64 or 72 according Sestion G or P)
## ! <more>, if precised, requires that <more> characters will
## ! remain free on the current line once this AddString done void AddString ( const Handle ( TCollection_HAsciiString ) & val , const Standard_Integer more = 0 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  themodel ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  thestar ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  thehead ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  thepars ;
## Error: identifier expected, but got: ;!!!














































