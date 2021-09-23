# 1 "/usr/include/opencascade/OSD_PerfMeter.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/OSD_PerfMeter.hxx"
# 19 "/usr/include/opencascade/OSD_PerfMeter.hxx"
# 1 "/usr/include/opencascade/OSD_PerfMeter.h" 1
# 84 "/usr/include/opencascade/OSD_PerfMeter.h"
Standard_EXPORTEXTERNC int perf_init_meter (const char* const theMeterName);






Standard_EXPORTEXTERNC int perf_start_meter (const char* const theMeterName);





Standard_EXPORTEXTERNC int perf_start_imeter (const int theMeterId);





Standard_EXPORTEXTERNC int perf_stop_meter (const char* const theMeterName);





Standard_EXPORTEXTERNC int perf_stop_imeter (const int theMeterId);






Standard_EXPORTEXTERNC int perf_tick_meter (const char* const theMeterName);





Standard_EXPORTEXTERNC int perf_tick_imeter (const int theMeterId);







Standard_EXPORTEXTERNC int perf_get_meter (const char* const theMeterName,
                                           int* theNbEnter,
                                           double* theSeconds);




Standard_EXPORTEXTERNC void perf_close_meter (const char* const theMeterName);




Standard_EXPORTEXTERNC void perf_close_imeter (const int theMeterId);





Standard_EXPORTEXTERNC void perf_print_all_meters (int reset);
# 157 "/usr/include/opencascade/OSD_PerfMeter.h"
Standard_EXPORTEXTERNC void perf_sprint_all_meters (char *buffer, int length, int reset);




Standard_EXPORTEXTERNC void perf_destroy_all_meters (void);






Standard_EXPORTEXTERNC void perf_print_and_destroy (void);
# 20 "/usr/include/opencascade/OSD_PerfMeter.hxx" 2





class OSD_PerfMeter
{

public:


  OSD_PerfMeter() : myIMeter(-1) {}


  OSD_PerfMeter (const char* theMeter,
                 const bool theToAutoStart = true)
  : myIMeter (perf_get_meter (theMeter, 0, 0))
  {
    if (myIMeter < 0) myIMeter = perf_init_meter (theMeter);
    if (theToAutoStart) Start();
  }


  void Init (const char* theMeter)
  {
    myIMeter = perf_get_meter (theMeter, 0, 0);
    if (myIMeter < 0) myIMeter = perf_init_meter (theMeter);
  }


  void Start() const { perf_start_imeter(myIMeter); }


  void Stop() const { perf_stop_imeter(myIMeter); }


  void Tick() const { perf_tick_imeter(myIMeter); }


  void Flush() const { perf_close_imeter(myIMeter); }


  ~OSD_PerfMeter() { if (myIMeter >= 0) Stop(); }

private:

  OSD_PerfMeter(const OSD_PerfMeter&);
  OSD_PerfMeter& operator= (const OSD_PerfMeter&);

protected:

  int myIMeter;

};
