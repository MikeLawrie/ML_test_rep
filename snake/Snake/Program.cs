﻿/*
 * Created by SharpDevelop.
 * User: Muxa
 * Date: 07.07.2016
 * Time: 17:37
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Snake
{
	class Program
	{
		public static void Main(string[] args)
		{
						Console.SetBufferSize (80, 25);
						HorisontalLine upLine = new HorisontalLine (0,78,0,'+');
						upLine.Draw();
						HorisontalLine downLine = new HorisontalLine (0,78,24,'+');
						downLine.Draw();
						VerticalLine leftLine = new VerticalLine (0,24,0,'+');
						leftLine.Draw();
						VerticalLine rightLine = new VerticalLine (0,24,78,'+');
						rightLine.Draw();
						
			// TODO: Implement Functionality Here
//			Point p1 = new Point(1,3,'*');
//			p1.Draw();

//
//		HorisontalLine line = new HorisontalLine(5,10,8,'+');
//			line.Draw();
//			
//			VerticalLine line2 = new VerticalLine(1,55,8,'@');
//			line2.Draw();
//			

			
			
			Console.ReadLine();	
		}

	}
}