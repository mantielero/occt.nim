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

import
  ../gp/gp_XYZ, ../Standard/Standard_ReadLineBuffer, ../Standard/Standard_IStream

discard "forward decl of Message_ProgressRange"
type
  RWStl_Reader* {.importcpp: "RWStl_Reader", header: "RWStl_Reader.hxx", bycopy.} = object of Standard_Transient ##
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

  RWStl_Readerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "RWStl_Reader::get_type_name(@)",
                              header: "RWStl_Reader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWStl_Reader::get_type_descriptor(@)", header: "RWStl_Reader.hxx".}
proc DynamicType*(this: RWStl_Reader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWStl_Reader.hxx".}
proc Read*(this: var RWStl_Reader; theFile: cstring;
          theProgress: Message_ProgressRange): Standard_Boolean {.
    importcpp: "Read", header: "RWStl_Reader.hxx".}
proc IsAscii*(this: var RWStl_Reader; theStream: var Standard_IStream;
             isSeekgAvailable: bool): Standard_Boolean {.importcpp: "IsAscii",
    header: "RWStl_Reader.hxx".}
proc ReadBinary*(this: var RWStl_Reader; theStream: var Standard_IStream;
                theProgress: Message_ProgressRange): Standard_Boolean {.
    importcpp: "ReadBinary", header: "RWStl_Reader.hxx".}
proc ReadAscii*(this: var RWStl_Reader; theStream: var Standard_IStream;
               theBuffer: var Standard_ReadLineBuffer; theUntilPos: streampos;
               theProgress: Message_ProgressRange): Standard_Boolean {.
    importcpp: "ReadAscii", header: "RWStl_Reader.hxx".}
proc AddNode*(this: var RWStl_Reader; thePnt: gp_XYZ): Standard_Integer {.
    importcpp: "AddNode", header: "RWStl_Reader.hxx".}
proc AddTriangle*(this: var RWStl_Reader; theN1: Standard_Integer;
                 theN2: Standard_Integer; theN3: Standard_Integer) {.
    importcpp: "AddTriangle", header: "RWStl_Reader.hxx".}