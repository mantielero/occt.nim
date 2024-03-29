import standard_types

##  Copyright (c) 2016 OPEN CASCADE SAS
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

##  Suppress VC9 warning on xsputn() function

## ! Custom buffer object implementing STL interface std::streambuf for streamed reading from allocated memory block.
## ! Implements minimal sub-set of methods for passing buffer to std::istream, including seek support.
## !
## ! This class can be used for creating a seekable input stream in cases,
## ! when the source data does not satisfies Reader requirements (non-seekable stream, compressed data)
## ! or represents an in-memory resource.
## !
## ! The memory itself is NOT managed by this class - it is up to the caller to ensure that passed memory pointer
## ! is not released during Standard_ArrayStreamBuffer lifetime.
## !
## ! Usage example:
## ! @code
## !   const char*  theBuffer;
## !   const size_t theBufferLength;
## !   Standard_ArrayStreamBuffer aStreamBuffer (theBuffer, theBufferLength);
## !   std::istream aStream (&aStreamBuffer);
## !   TopoDS_Shape aShape;
## !   BRep_Builder aBuilder;
## !   BRepTools::Read (aShape, aStream, aBuilder);
## ! @endcode



proc constructStandardArrayStreamBuffer*(theBegin: cstring; theSize: csize_t): StandardArrayStreamBuffer {.
    cdecl, constructor, importcpp: "Standard_ArrayStreamBuffer(@)", header: "Standard_ArrayStreamBuffer.hxx".}
proc destroyStandardArrayStreamBuffer*(this: var StandardArrayStreamBuffer) {.cdecl,
    importcpp: "#.~Standard_ArrayStreamBuffer()", header: "Standard_ArrayStreamBuffer.hxx".}
proc init*(this: var StandardArrayStreamBuffer; theBegin: cstring; theSize: csize_t) {.
    cdecl, importcpp: "Init", header: "Standard_ArrayStreamBuffer.hxx".}
proc xsgetn*(this: var StandardArrayStreamBuffer; thePtr: cstring;
            theCount: Streamsize): Streamsize {.cdecl, importcpp: "xsgetn",
    header: "Standard_ArrayStreamBuffer.hxx".}
