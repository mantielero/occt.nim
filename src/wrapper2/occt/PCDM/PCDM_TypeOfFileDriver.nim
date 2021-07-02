type
  PCDM_TypeOfFileDriver* {.size: sizeof(cint), importcpp: "PCDM_TypeOfFileDriver",
                          header: "PCDM_TypeOfFileDriver.hxx".} = enum
    PCDM_TOFD_File, PCDM_TOFD_CmpFile, PCDM_TOFD_XmlFile, PCDM_TOFD_Unknown

