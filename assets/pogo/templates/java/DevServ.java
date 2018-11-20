//+============================================================================
// $Source$
//
// project :     Tango Device Server
//
// Description:	java source code for the TemplateDevServ class and its commands.
//              This class is derived from DeviceImpl class.
//              It represents the CORBA servant obbject which
//              will be accessed from the network. All commands which
//              can be executed on the TemplateDevServ are implemented
//              in this file.
//
// $Author: pascal_verdier $
//
// $Revision: 15039 $
//
// $Log$
// Revision 3.1  2004/09/06 09:29:17  pascal_verdier
// *** empty log message ***
//
//
// copyleft :   European Synchrotron Radiation Facility
//              BP 220, Grenoble 38043
//              FRANCE
//
//-============================================================================
//
//  		This file is generated by POGO
//	(Program Obviously used to Generate tango Object)
//
//         (c) - Software Engineering Group - ESRF
//=============================================================================


package TemplateDevServ;


import java.util.*;
import org.omg.CORBA.*;
import fr.esrf.Tango.*;
import fr.esrf.TangoDs.*;
import fr.esrf.TangoApi.*;


/**
 *	Class Description:
 *
 * @author	$Author: pascal_verdier $
 * @version	$Revision: 15039 $
 */

//--------- Start of States Description ----------

//--------- End of States Description ----------


public class TemplateDevServ extends DeviceImpl implements TangoConst
{
	protected	int	state;

	//--------- Start of attributes data members ----------

	//--------- End of attributes data members ----------


	//--------- Start of properties data members ----------

	//--------- End of properties data members ----------


	//	Add your own data members here
	//--------------------------------------



//=========================================================
/**
 *	Constructor for simulated Time Device Server.
 *
 *	@param	cl	The DeviceClass object
 *	@param	s	The Device name.
 */
//=========================================================
	TemplateDevServ(DeviceClass cl, String s) throws DevFailed
	{
		super(cl,s);
		init_device();
	}
//=========================================================
/**
 *	Constructor for simulated Time Device Server.
 *
 *	@param	cl	The DeviceClass object
 *	@param	s	The Device name.
 *	@param	d	Device description.
 */
//=========================================================
	TemplateDevServ(DeviceClass cl, String s, String d) throws DevFailed
	{
		super(cl,s,d);
		init_device();
	}

//=========================================================
/**
 *	Called when device is deleted.
 */
//=========================================================
	public void delete_device() throws DevFailed
	{
	}

//=========================================================
/**
 *	Initialize the device.
 */
//=========================================================
	public void init_device() throws DevFailed
	{
		System.out.println("TemplateDevServ() create " + device_name);

		//	Initialise variables to default values
		//-------------------------------------------
		set_state(DevState.ON);
	}

//=========================================================
/**
 *	Method always executed before command execution.
 */
//=========================================================
	public void always_executed_hook()
	{	
		get_logger().info("In always_executed_hook method()");
	}



//=========================================================
/**
 *	main part for the device server class
 */
//=========================================================
	public static void main(String[] argv)
	{
		try
		{
			Util tg = Util.init(argv,"TemplateDevServ");
			tg.server_init();

			System.out.println("Ready to accept request");

			tg.server_run();
		}

		catch (OutOfMemoryError ex)
		{
			System.err.println("Can't allocate memory !!!!");
			System.err.println("Exiting");
		}
		catch (UserException ex)
		{
			Except.print_exception(ex);
			
			System.err.println("Received a CORBA user exception");
			System.err.println("Exiting");
		}
		catch (SystemException ex)
		{
			Except.print_exception(ex);
			
			System.err.println("Received a CORBA system exception");
			System.err.println("Exiting");
		}
		
		System.exit(-1);		
	}
}
	

//--------------------------------------------------------------------------
/* end of $Source$ */
