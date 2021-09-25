##  Created: 2016-05-01
##  Author: Andrey Betenev
##  Copyright: Open CASCADE 2016
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

discard "forward decl of Message_ProgressRange"
type
  RWStlReader* {.importcpp: "RWStl_Reader", header: "RWStl_Reader.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Reads
                                                                                                     ## data
                                                                                                     ## from
                                                                                                     ## STL
                                                                                                     ## file
                                                                                                     ## (either
                                                                                                     ## binary
                                                                                                     ## or
                                                                                                     ## Ascii).
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## This
                                                                                                     ## function
                                                                                                     ## supports
                                                                                                     ## reading
                                                                                                     ## multi-domain
                                                                                                     ## STL
                                                                                                     ## files
                                                                                                     ## formed
                                                                                                     ## by
                                                                                                     ## concatenation
                                                                                                     ## of
                                                                                                     ## several
                                                                                                     ## "plain"
                                                                                                     ## files.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## The
                                                                                                     ## mesh
                                                                                                     ## nodes
                                                                                                     ## are
                                                                                                     ## not
                                                                                                     ## merged
                                                                                                     ## between
                                                                                                     ## domains.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Unicode
                                                                                                     ## paths
                                                                                                     ## can
                                                                                                     ## be
                                                                                                     ## given
                                                                                                     ## in
                                                                                                     ## UTF-8
                                                                                                     ## encoding.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Format
                                                                                                     ## is
                                                                                                     ## recognized
                                                                                                     ## automatically
                                                                                                     ## by
                                                                                                     ## analysis
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## file
                                                                                                     ## header.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## true
                                                                                                     ## if
                                                                                                     ## success,
                                                                                                     ## false
                                                                                                     ## on
                                                                                                     ## error
                                                                                                     ## or
                                                                                                     ## user
                                                                                                     ## break.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Callback
                                                                                                     ## function
                                                                                                     ## to
                                                                                                     ## be
                                                                                                     ## implemented
                                                                                                     ## in
                                                                                                     ## descendant.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Should
                                                                                                     ## create
                                                                                                     ## new
                                                                                                     ## node
                                                                                                     ## with
                                                                                                     ## specified
                                                                                                     ## coordinates
                                                                                                     ## in
                                                                                                     ## the
                                                                                                     ## target
                                                                                                     ## model,
                                                                                                     ## and
                                                                                                     ## return
                                                                                                     ## its
                                                                                                     ## ID
                                                                                                     ## as
                                                                                                     ## integer.

  RWStlReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "RWStl_Reader::get_type_name(@)",
                            header: "RWStl_Reader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWStl_Reader::get_type_descriptor(@)", header: "RWStl_Reader.hxx".}
proc dynamicType*(this: RWStlReader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "RWStl_Reader.hxx".}
proc read*(this: var RWStlReader; theFile: cstring; theProgress: MessageProgressRange): bool {.
    importcpp: "Read", header: "RWStl_Reader.hxx".}
proc isAscii*(this: var RWStlReader; theStream: var StandardIStream;
             isSeekgAvailable: bool): bool {.importcpp: "IsAscii",
    header: "RWStl_Reader.hxx".}
proc readBinary*(this: var RWStlReader; theStream: var StandardIStream;
                theProgress: MessageProgressRange): bool {.importcpp: "ReadBinary",
    header: "RWStl_Reader.hxx".}
proc readAscii*(this: var RWStlReader; theStream: var StandardIStream;
               theBuffer: var StandardReadLineBuffer; theUntilPos: Streampos;
               theProgress: MessageProgressRange): bool {.importcpp: "ReadAscii",
    header: "RWStl_Reader.hxx".}
proc addNode*(this: var RWStlReader; thePnt: Xyz): int {.importcpp: "AddNode",
    header: "RWStl_Reader.hxx".}
proc addTriangle*(this: var RWStlReader; theN1: int; theN2: int; theN3: int) {.
    importcpp: "AddTriangle", header: "RWStl_Reader.hxx".}
