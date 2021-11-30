import occt

proc main =
  var writer = newSTEPControlWriter() #STEPControl_Writer writer

  var box = newBRepPrimAPI_MakeBox(1.0, 2.0, 3.0)
  box.build()
  var solid:TopoDS_Solid =  box.solid()

  #discard writer.transfer(shape, STEPControlAsIs)
  discard writer.transfer(solid, STEPControlAsIs)
  discard writer.write("step01.step")   #IFSelect_ReturnStatus writeStatus = writer.Write(filename.c_str());

main()