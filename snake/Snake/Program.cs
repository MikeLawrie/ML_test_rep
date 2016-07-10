/*
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
			
			// TODO: Implement Functionality Here
			Point p1 = new Point(1,3,'*');
			p1.Draw();
			
			Point p2 = new Point(4,5,'#');
			p2.Draw();
			
			Point p3 = new Point(10,10, '!');
			p3.Draw();
			
			Point P4 = new Point(14,15,'&');
			P4.Draw();

			HorisontalLine line = new HorisontalLine(5,10,8,'+');
			line.Draw();
			
			VerticalLine line2 = new VerticalLine(1,55,8,'@');
			line2.Draw();
			
			
			Console.ReadLine();	
		}

	}
}