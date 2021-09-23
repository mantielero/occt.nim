# 1 "/usr/include/opencascade/StdStorage.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/StdStorage.hxx"
# 17 "/usr/include/opencascade/StdStorage.hxx"
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 18 "/usr/include/opencascade/StdStorage.hxx" 2
# 1 "/usr/include/opencascade/Storage_Error.hxx" 1
# 41 "/usr/include/opencascade/Storage_Error.hxx"
enum Storage_Error
{
Storage_VSOk,
Storage_VSOpenError,
Storage_VSModeError,
Storage_VSCloseError,
Storage_VSAlreadyOpen,
Storage_VSNotOpen,
Storage_VSSectionNotFound,
Storage_VSWriteError,
Storage_VSFormatError,
Storage_VSUnknownType,
Storage_VSTypeMismatch,
Storage_VSInternalError,
Storage_VSExtCharParityError,
Storage_VSWrongFileDriver
};
# 19 "/usr/include/opencascade/StdStorage.hxx" 2
class StdStorage_Data;
class Storage_BaseDriver;
class TCollection_AsciiString;
# 39 "/usr/include/opencascade/StdStorage.hxx"
class StdStorage
{

public:


  static TCollection_AsciiString Version();






  static Storage_Error Read(const TCollection_AsciiString& theFileName,
                                            Handle(StdStorage_Data)& theData);






  static Storage_Error Read(const Handle(Storage_BaseDriver)& theDriver,
                                            Handle(StdStorage_Data)& theData);





  static Storage_Error Write(const Handle(Storage_BaseDriver)& theDriver,
                                             const Handle(StdStorage_Data)& theData);

};
