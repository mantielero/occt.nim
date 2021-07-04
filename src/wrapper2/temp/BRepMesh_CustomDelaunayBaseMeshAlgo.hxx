# 1 "/usr/include/opencascade/BRepMesh_CustomDelaunayBaseMeshAlgo.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/BRepMesh_CustomDelaunayBaseMeshAlgo.hxx"
# 19 "/usr/include/opencascade/BRepMesh_CustomDelaunayBaseMeshAlgo.hxx"
class BRepMesh_DataStructureOfDelaun;
class BRepMesh_Delaun;




template<class BaseAlgo>
class BRepMesh_CustomDelaunayBaseMeshAlgo : public BaseAlgo
{
public:


  BRepMesh_CustomDelaunayBaseMeshAlgo ()
  {
  }


  virtual ~BRepMesh_CustomDelaunayBaseMeshAlgo ()
  {
  }

protected:


  virtual void postProcessMesh (BRepMesh_Delaun& theMesher,
                                const Message_ProgressRange& theRange)
  {
    const Handle(BRepMesh_DataStructureOfDelaun)& aStructure = this->getStructure();
    std::pair<Standard_Integer, Standard_Integer> aCellsCount = this->getCellsCount (aStructure->NbNodes());
    theMesher.InitCirclesTool (aCellsCount.first, aCellsCount.second);

    BaseAlgo::postProcessMesh (theMesher, theRange);
  }
};
