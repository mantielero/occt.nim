import ../standard/standard_types
import osd_types



##  Copyright (c) 1998-1999 Matra Datavision
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

when not defined(INC_WINDOWS):
  discard
when defined(windows):
  const
    FLAG_READ_PIPE* = 0x00000001
    FLAG_EOF* = 0x00000002
    FLAG_FILE* = 0x00000004
    FLAG_DIRECTORY* = 0x00000008
    FLAG_PIPE* = 0x00000010
    FLAG_SOCKET* = 0x00000020
    FLAG_NAMED_PIPE* = 0x00000040
    FLAG_DEVICE* = 0x00000080
    FLAG_TYPE* = 0x0000007C

  ##  2 macros modified for VisualAge
  ## #define LODWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) & 0x00000000FFFFFFFF   )
  ## #define HIDWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) >> 32                  )

  template lodword*(a: untyped): untyped =
    (dword)(((int64)(a)) and 0x00000000FFFFFFFF'i64)

  template hidword*(a: untyped): untyped =
    (dword)(((int64)(a)) shr 32)



  template get_Sid*(pACE: untyped): untyped =
    ((psid)((cast[Pbyte](pACE)) + sizeof((ace_Header)) + sizeof((dword))))

  template get_Msk*(pACE: untyped): untyped =
    ((pdword)((cast[Pbyte](pACE)) + sizeof((ace_Header))))

  proc allocSD*(): Psecurity_Descriptor {.cdecl, importcpp: "AllocSD(@)",
                                      header: "OSD_WNT.hxx".}
  proc freeSD*(a1: Psecurity_Descriptor) {.cdecl, importcpp: "FreeSD(@)",
                                        header: "OSD_WNT.hxx".}
  proc getTokenInformationEx*(a1: Handle; a2: Token_Information_Class): Lpvoid {.cdecl,
      importcpp: "GetTokenInformationEx(@)", header: "OSD_WNT.hxx".}
  proc freeTokenInformation*(a1: Lpvoid) {.cdecl,
                                        importcpp: "FreeTokenInformation(@)",
                                        header: "OSD_WNT.hxx".}
  proc getFileSecurityEx*(a1: Lpcwstr; a2: Security_Information): Psecurity_Descriptor {.
      cdecl, importcpp: "GetFileSecurityEx(@)", header: "OSD_WNT.hxx".}
  proc freeFileSecurity*(a1: Psecurity_Descriptor) {.cdecl,
      importcpp: "FreeFileSecurity(@)", header: "OSD_WNT.hxx".}
  proc createAcl*(a1: Dword): Pacl {.cdecl, importcpp: "CreateAcl(@)",
                                header: "OSD_WNT.hxx".}
  proc freeAcl*(a1: Pacl) {.cdecl, importcpp: "FreeAcl(@)", header: "OSD_WNT.hxx".}
  proc predefinedSid*(a1: Psid): Bool {.cdecl, importcpp: "PredefinedSid(@)",
                                    header: "OSD_WNT.hxx".}
  proc ntPredefinedSid*(a1: Psid): Bool {.cdecl, importcpp: "NtPredefinedSid(@)",
                                      header: "OSD_WNT.hxx".}
  proc adminSid*(): Psid {.cdecl, importcpp: "AdminSid(@)", header: "OSD_WNT.hxx".}
  proc worldSid*(): Psid {.cdecl, importcpp: "WorldSid(@)", header: "OSD_WNT.hxx".}
  proc interactiveSid*(): Psid {.cdecl, importcpp: "InteractiveSid(@)",
                              header: "OSD_WNT.hxx".}
  proc networkSid*(): Psid {.cdecl, importcpp: "NetworkSid(@)", header: "OSD_WNT.hxx".}
  proc localSid*(): Psid {.cdecl, importcpp: "LocalSid(@)", header: "OSD_WNT.hxx".}
  proc dialupSid*(): Psid {.cdecl, importcpp: "DialupSid(@)", header: "OSD_WNT.hxx".}
  proc batchSid*(): Psid {.cdecl, importcpp: "BatchSid(@)", header: "OSD_WNT.hxx".}
  proc creatorOwnerSid*(): Psid {.cdecl, importcpp: "CreatorOwnerSid(@)",
                              header: "OSD_WNT.hxx".}
  proc nullSid*(): Psid {.cdecl, importcpp: "NullSid(@)", header: "OSD_WNT.hxx".}
  proc ntSid*(): Psid {.cdecl, importcpp: "NtSid(@)", header: "OSD_WNT.hxx".}
  proc allocAccessAllowedAce*(a1: Dword; a2: Byte; a3: Psid): Pvoid {.cdecl,
      importcpp: "AllocAccessAllowedAce(@)", header: "OSD_WNT.hxx".}
  proc freeAce*(a1: Pvoid) {.cdecl, importcpp: "FreeAce(@)", header: "OSD_WNT.hxx".}
  proc moveDirectory*(a1: Lpcwstr; a2: Lpcwstr): Bool {.cdecl,
      importcpp: "MoveDirectory(@)", header: "OSD_WNT.hxx".}
  proc copyDirectory*(a1: Lpcwstr; a2: Lpcwstr): Bool {.cdecl,
      importcpp: "CopyDirectory(@)", header: "OSD_WNT.hxx".}
  proc setMoveDirectoryProc*(a1: Move_Dir_Proc) {.cdecl,
      importcpp: "SetMoveDirectoryProc(@)", header: "OSD_WNT.hxx".}
  proc setCopyDirectoryProc*(a1: Copy_Dir_Proc) {.cdecl,
      importcpp: "SetCopyDirectoryProc(@)", header: "OSD_WNT.hxx".}
  proc setResponseDirectoryProc*(a1: Response_Dir_Proc) {.cdecl,
      importcpp: "SetResponseDirectoryProc(@)", header: "OSD_WNT.hxx".}

