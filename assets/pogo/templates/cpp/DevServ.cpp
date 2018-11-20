static const char *RcsId = "$Id: DevServ.cpp 13293 2009-04-07 10:53:56Z pascal_verdier $";
//+=============================================================================
//
// file :         TemplateDevServ.cpp
//
// description :  C++ source for the TemplateDevServ and its commands. 
//                The class is derived from Device. It represents the
//                CORBA servant object which will be accessed from the
//                network. All commands which can be executed on the
//                TemplateDevServ are implemented in this file.
//
// project :      TANGO Device Server
//
// $Author: pascal_verdier $
//
// $Revision: 13293 $
//
// $Revision: 13293 $
// $Date: 2009-04-07 12:53:56 +0200 (Tue, 07 Apr 2009) $
//
// SVN only:
// $HeadURL: $
//
// CVS only:
// $Source$
// $Log$
// Revision 3.5  2007/10/24 12:07:35  pascal_verdier
// Another spelling mistake correction
//
// Revision 3.4  2007/10/23 14:04:30  pascal_verdier
// Spelling mistakes correction
//
// Revision 3.3  2005/03/02 14:06:15  pascal_verdier
// namespace is different than class name.
//
// Revision 3.2  2004/11/08 11:33:16  pascal_verdier
// if device property not found in database, it takes class property value if exists.
//
// Revision 3.1  2004/09/06 09:27:05  pascal_verdier
// Modified for Tango 5 compatibility.
//
//
// copyleft :     European Synchrotron Radiation Facility
//                BP 220, Grenoble 38043
//                FRANCE
//
//-=============================================================================
//
//  		This file is generated by POGO
//	(Program Obviously used to Generate tango Object)
//
//         (c) - Software Engineering Group - ESRF
//=============================================================================



//===================================================================
//
//	The following table gives the correspondence
//	between command and method names.
//
//	Command name	|	Method name
//	----------------------------------------
//
//===================================================================


#include <tango.h>
#include <TemplateDevServ.h>
#include <TemplateDevServClass.h>

namespace TemplateDevServ_ns
{

//+----------------------------------------------------------------------------
//
// method : 		TemplateDevServ::TemplateDevServ(string &s)
// 
// description : 	constructor for simulated TemplateDevServ
//
// in : - cl : Pointer to the DeviceClass object
//      - s : Device name 
//
//-----------------------------------------------------------------------------
TemplateDevServ::TemplateDevServ(Tango::DeviceClass *cl,string &s)
:Tango::Device_4Impl(cl,s.c_str())
{
	init_device();
}

TemplateDevServ::TemplateDevServ(Tango::DeviceClass *cl,const char *s)
:Tango::Device_4Impl(cl,s)
{
	init_device();
}

TemplateDevServ::TemplateDevServ(Tango::DeviceClass *cl,const char *s,const char *d)
:Tango::Device_4Impl(cl,s,d)
{
	init_device();
}
//+----------------------------------------------------------------------------
//
// method : 		TemplateDevServ::delete_device()
// 
// description : 	will be called at device destruction or at init command.
//
//-----------------------------------------------------------------------------
void TemplateDevServ::delete_device()
{
	//	Delete device allocated objects
}

//+----------------------------------------------------------------------------
//
// method : 		TemplateDevServ::init_device()
// 
// description : 	will be called at device initialization.
//
//-----------------------------------------------------------------------------
void TemplateDevServ::init_device()
{
	INFO_STREAM << "TemplateDevServ::TemplateDevServ() create device " << device_name << endl;

	// Initialise variables to default values
	//--------------------------------------------
}

//+----------------------------------------------------------------------------
//
// method : 		TemplateDevServ::always_executed_hook()
// 
// description : 	method always executed before any command is executed
//
//-----------------------------------------------------------------------------
void TemplateDevServ::always_executed_hook()
{
	
}

}	// namespace TemplateDevServ_ns
